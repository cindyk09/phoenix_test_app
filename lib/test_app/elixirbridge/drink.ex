defmodule TestApp.Elixirbridge.Drink do
  use Ecto.Schema
  import Ecto.Changeset
  alias TestApp.Elixirbridge.Drink


  schema "drinks" do
    field :name, :string
    field :temperature, :string

    timestamps()
  end

  @doc false
  def changeset(%Drink{} = drink, attrs) do
    drink
    |> cast(attrs, [:name, :temperature])
    |> validate_required([:name, :temperature])
  end
end
