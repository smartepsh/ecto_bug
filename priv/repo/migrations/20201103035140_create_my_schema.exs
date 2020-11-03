defmodule EctoBug.Repo.Migrations.CreateMySchema do
  use Ecto.Migration

  def change do
    create table(:my_schema) do
      add :my_embed, :map
    end
  end
end
