## README

#Documents
view `http://localhost:3000/documents`

curl -i http://localhost:3000/api/v1/users/1
```
{"id":1,"email":"canlin@gmail.com","name":"canlin"}
```

curl -i http://localhost:3000/api/v1/users/1/microposts
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