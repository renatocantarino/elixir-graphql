defmodule Twix.Posts.AddLikes do
  alias Twix.Repo
  alias Twix.Posts.Post
  alias Ecto.Changeset

  def call(id) do
    case Repo.get(Post, id) do
      nil -> {:error, :not_found}
      post -> add_like(post)
    end
  end

  defp add_like(post) do
    Repo.update(Changeset.change(post, likes: post.likes + 1))
  end
end
