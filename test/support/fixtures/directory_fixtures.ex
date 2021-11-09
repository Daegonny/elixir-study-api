defmodule BusiApi.DirectoryFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `BusiApi.Directory` context.
  """

  @doc """
  Generate a business.
  """
  def business_fixture(attrs \\ %{}) do
    {:ok, business} =
      attrs
      |> Enum.into(%{
        description: "some description",
        name: "some name",
        tag: "some tag"
      })
      |> BusiApi.Directory.create_business()

    business
  end
end
