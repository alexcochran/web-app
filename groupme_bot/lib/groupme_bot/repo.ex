defmodule GroupmeBot.Repo do
  use Ecto.Repo,
    otp_app: :groupme_bot,
    adapter: Ecto.Adapters.Postgres
end
