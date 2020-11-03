# EctoBug

**Ecto.Enum in embedded schema**

## Workflow

1. `mix deps.get`
2. `mix ecto.migrate`
3. `iex -S mix`

  ```elixir
  iex> EctoBug.insert()
  iex> EctoBug.list()
  ```
