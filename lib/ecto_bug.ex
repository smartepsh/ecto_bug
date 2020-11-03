defmodule EctoBug do
  alias EctoBug.Repo
  alias EctoBug.Schema

  def insert do
    [
      %{"my_embed" => %{"my_enum" => "foo"}},
      %{"my_embed" => %{}}
    ]
    |> Enum.each(fn params ->
      %Schema{}
      |> Schema.changeset(params)
      |> Repo.insert()
    end)
  end

  def list do
    Repo.all(Schema)
  end
end
