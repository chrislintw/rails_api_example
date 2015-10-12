class User < ActiveRecord::Base
  has_many :microposts
  has_secure_password
  before_create :generate_authentication_token

  def generate_authentication_token
    while
      self.authentication_token = SecureRandom.base64(64)
      break unless User.find_by(authentication_token: authentication_token)
    end
  end

  def reset_auth_token!
    generate_authentication_token
    save
  end
end
