defmodule BusiApi.AccountsFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `BusiApi.Accounts` context.
  """

  @doc """
  Generate a unique user emai.
  """
  def unique_user_emai, do: "some emai#{System.unique_integer([:positive])}"

  @doc """
  Generate a user.
  """
  def user_fixture(attrs \\ %{}) do
    {:ok, user} =
      attrs
      |> Enum.into(%{
        emai: unique_user_emai(),
        encrypted_password: "some encrypted_password"
      })
      |> BusiApi.Accounts.create_user()

    user
  end
end
