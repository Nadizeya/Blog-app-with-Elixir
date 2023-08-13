defmodule BlogApp.CommentsFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `BlogApp.Comments` context.
  """

  @doc """
  Generate a comment.
  """
  def comment_fixture(attrs \\ %{}) do
    {:ok, comment} =
      attrs
      |> Enum.into(%{
        content: "some content",
        name: "some name"
      })
      |> BlogApp.Comments.create_comment()

    comment
  end
end
