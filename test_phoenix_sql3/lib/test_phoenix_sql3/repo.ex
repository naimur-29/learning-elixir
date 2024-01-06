defmodule TestPhoenixSql3.Repo do
  use Ecto.Repo,
    otp_app: :test_phoenix_sql3,
    adapter: Ecto.Adapters.SQLite3
end
