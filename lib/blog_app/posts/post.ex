defmodule BlogApp.Posts.Post do
  use Ecto.Schema
  import Ecto.Changeset
  alias BlogApp.Comments.Comment

  schema "posts" do
    field :body, :string
    field :title, :string
    has_many :comments, Comment

    timestamps()
  end

  @doc false
  def changeset(post, attrs) do
    post
    |> cast(attrs, [:title, :body])
    |> validate_required([:title, :body])
  end
end
