# TodoApi

To start your Phoenix app:

  * Install dependencies with `mix deps.get`
  * Create and migrate your database with `mix ecto.create && mix ecto.migrate`
  * Start Phoenix endpoint with `mix phoenix.server` of `iex -S mix phoenix.server`

Now you can visit [`localhost:4000`](http://localhost:4000) from your browser.

## Curl

To create a user:

    curl -v -H "Accept: application/json" -X POST http://localhost:4000/api/users\?email\=alice@example.com

To list all todos:

    curl -v -H "Accept: application/json" http://localhost:4000/api/todos/

To create a todo:

    curl -H "Content-Type: application/json" -X POST -d '{"todo": {"description":"Title 001"}}' http://localhost:4000/api/todos/

To start a port:

    curl -v -H "Accept: application/json" http://localhost:4000/api/ports/

To get a value from port:

    curl -v -H "Accept: application/json" http://localhost:4000/api/ports/1

