# README

## Installation
```
git clone https://github.com/chrislintw/rails_api_example.git
cd rails_api_example
bundle install
rails server
```
## Env
```
Ruby 2.2.2
Rails 4.2.3
```

## Documents
[doc](https://cl-rails-api-example.herokuapp.com/documents)


## Example
[link](https://cl-rails-api-example.herokuapp.com/)

curl -i https://cl-rails-api-example.herokuapp.com/api/v1/users/1.json
```
{"id":1,"email":"canlin@gmail.com","name":"canlin"}
```

curl -i https://cl-rails-api-example.herokuapp.com/api/v1/users/1/microposts.json
```
{
  "metadata":
    {
      "resultset":
      {
      "current_page":1,
      "next_page":2,
      "prev_page":null,
      "total_pages":4,
      "total_count":20
      }
    },
  "results":
    [
      {"id":1,"title":"title-0"},
      {"id":2,"title":"title-1"},
      {"id":3,"title":"title-2"},
      {"id":4,"title":"title-3"},
      {"id":5,"title":"title-4"}
    ]
}
```
## More Infomation


## License
