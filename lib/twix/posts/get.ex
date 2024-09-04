defmodule Twix.Posts.Get do
  alias Twix.Repo
  alias Twix.Posts.Post

  def call(id) do
    case Repo.get(Post, id) do
      nil -> {:error, :not_found}
      post -> {:ok, post}
    end
  end
end
