use Mix.Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :phoenix_starter, PhoenixStarter.Endpoint,
  http: [port: 4001],
  server: false

# Print only warnings and errors during test
config :logger, level: :warn

# Configure your database
config :phoenix_starter, PhoenixStarter.Repo,
  adapter: Ecto.Adapters.MySQL,
  username: System.get_env("DATABASE_MYSQL_USERNAME") || "root",
  password: System.get_env("DATABASE_MYSQL_PASSWORD") || "",
  database: "phoenix_starter_test",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox
