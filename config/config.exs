use Mix.Config

config :ecto_bug, ecto_repos: [EctoBug.Repo]
config :ecto_bug, EctoBug.Repo,
  database: "ecto_bug",
  username: "postgres",
  password: "posrgres",
  hostname: "localhost",
  port: "5432"

