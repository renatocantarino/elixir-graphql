defmodule Twix.Posts.Get do
  alias Twix.Repo
  alias Twix.Posts.Post
  import Ecto.Query

  def call(user, page, per_page) do
    post_query =
      from p in Post,
      where: p.user_id == ^user.id,
      order_by: [desc: p.id],
      offset: (^page - 1) * ^per_page,
      limit:  ^per_page

      {:ok, Repo.all(post_query)}
  end
end
