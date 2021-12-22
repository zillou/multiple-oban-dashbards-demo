defmodule Demo.Repo.Migrations.AddObanTables do
  use Ecto.Migration

  def up do
    Oban.Migrations.up()
    Oban.Pro.Migrations.Producers.up()
  end

  def down do
    Oban.Pro.Migrations.Producers.down()
    Oban.Migrations.down(version: 1)
  end
end
