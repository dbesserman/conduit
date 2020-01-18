use Mix.Config

# Configure your database
config :conduit, Conduit.Repo,
  username: "postgres",
  password: "postgres",
  database: "conduit_test",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox

config :conduit, Conduit.Repo,
  username: "postgres",
  password: "postgres",
  database: "conduit_readstore_dev",
  hostname: "localhost",
  show_sensitive_data_on_connection_error: true,
  pool_size: 10

config :conduit, Conduit.EventStore,
  serializer: Commanded.Serialization.JsonSerializer,
  username: "postgres",
  password: "postgres",
  database: "conduit_eventstore_dev",
  hostname: "localhost",
  pool_size: 10
# We don't run a server during test. If one is required,
# you can enable the server option below.
config :conduit, ConduitWeb.Endpoint,
  http: [port: 4002],
  server: false

# Print only warnings and errors during test
config :logger, level: :warn
