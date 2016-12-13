# TodoApi

To start your Phoenix app:

  * Install dependencies with `mix deps.get`
  * Create and migrate your database with `mix ecto.create && mix ecto.migrate`
  * Start Phoenix endpoint with `mix phoenix.server`

Now you can visit [`localhost:4000`](http://localhost:4000) from your browser.

## Curl

    curl -v -H "Accept: application/json" -X POST http://localhost:4000/api/users\?email\=alice@example.com

    curl -v -H "Accept: application/json" http://localhost:4000/api/todos/

    curl -H "Content-Type: application/json" -X POST -d '{"todo": {"description":"Title 001"}}' http://localhost:4000/api/todos/

Ready to run in production? Please [check our deployment guides](http://www.phoenixframework.org/docs/deployment).

## Learn more

  * Official website: http://www.phoenixframework.org/
  * Guides: http://phoenixframework.org/docs/overview
  * Docs: https://hexdocs.pm/phoenix
  * Mailing list: http://groups.google.com/group/phoenix-talk
  * Source: https://github.com/phoenixframework/phoenix
