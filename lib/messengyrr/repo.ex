defmodule Messengyrr.Repo do
  use Ecto.Repo,
    otp_app: :messengyrr,
    adapter: Ecto.Adapters.Postgres
end
