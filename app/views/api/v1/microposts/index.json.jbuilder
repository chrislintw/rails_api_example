json.metadata do
  json.resultset do
    paginate_meta_attributes(json, @microposts)
  end
end
json.results do
  json.array! @microposts do |micropost|
    json.(micropost, :id, :title)
  end
end