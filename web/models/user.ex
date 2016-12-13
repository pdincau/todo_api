defmodule TodoApi.User do
  use TodoApi.Web, :model

  schema "users" do
    field :email, :string

    timestamps
  end
end
