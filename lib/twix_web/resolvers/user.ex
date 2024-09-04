defmodule TwixWeb.Resolvers.User do
  require Logger
  def get(%{id: id}, _context),  do: Twix.get_user(id)

  def create(%{input: params}, _context),  do: Twix.create_user(params)

  def update(%{input: params}, _context),  do: Twix.update_user(params)

  def add_follower(%{input: %{user_id: user_id, follower_id: follower_id}}, _context) do
    Logger.debug "Var user_id: #{inspect(user_id)}"
    Logger.debug "Var follower_id: #{inspect(follower_id)}"
    Twix.add_follower(user_id, follower_id)
  end



end
