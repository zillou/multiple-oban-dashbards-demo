defmodule Demo.Repo.Migrations.AddAdminObanTables do
  use Ecto.Migration

  def up do
    Oban.Migrations.up(prefix: "admin")
    Oban.Pro.Migrations.Producers.up(prefix: "admin")
  end

  def down do
    Oban.Pro.Migrations.Producers.down(prefix: "admin")
    Oban.Migrations.down(version: 1, prefix: "admin")
  end
end
