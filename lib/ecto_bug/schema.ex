defmodule EctoBug.Schema do
  use Ecto.Schema

  defmodule MyEmbed do
    use Ecto.Schema

    embedded_schema do
      field :my_enum, Ecto.Enum, values: [:foo, :bar]
    end

    def changeset(struct, params) do
      struct
      |> Ecto.Changeset.cast(params, [:my_enum])
    end
  end

  schema "my_schema" do
    embeds_one :my_embed, MyEmbed
  end

  def changeset(struct, params) do
    struct
    |> Ecto.Changeset.cast(params, [])
    |> Ecto.Changeset.cast_embed(:my_embed)
  end
end
