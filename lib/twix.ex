defmodule Twix do
  alias Twix.Users
  alias Twix.Posts
  alias Users.Follow

  defdelegate create_user(params), to: Users.Create, as: :call
  defdelegate get_user(id), to: Users.Get, as: :call
  defdelegate update_user(params), to: Users.Update, as: :call

  defdelegate get_post(id), to: Posts.Get, as: :call
  defdelegate create_post(params), to: Posts.Create, as: :call
  defdelegate add_like_post(id_post), to: Posts.AddLikes, as: :call
  defdelegate add_follower(user_id, follower_id), to: Follow, as: :call
end
