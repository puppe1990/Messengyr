defmodule Messengyrr.Accounts do

  import Ecto.Changeset
  alias Messengyrr.Accounts.User
  alias Messengyrr.Repo

  def create_user(params) do
    %User{}
    |> cast(params, [:username, :email, :password])
    |> validate_required([:username, :email, :password])
    |> Repo.insert
  end

end