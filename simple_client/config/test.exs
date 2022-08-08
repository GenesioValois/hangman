import Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :simple_client, SimpleClientWeb.Endpoint,
  http: [ip: {127, 0, 0, 1}, port: 4002],
  secret_key_base: "RHebDdZFmfFl+zA4xItkzJG696ruzKaX6+NHdgINs4EU5cQ7RT+dZ6uZ+NEALWV3",
  server: false

# Print only warnings and errors during test
config :logger, level: :warn

# Initialize plugs at runtime for faster test compilation
config :phoenix, :plug_init_mode, :runtime
