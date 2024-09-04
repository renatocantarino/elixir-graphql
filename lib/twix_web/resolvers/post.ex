defmodule TwixWeb.Resolvers.Post do

  def get(%{id: id}, _context),  do: Twix.get_post(id)

  def create(%{input: params}, _context),  do: Twix.create_post(params)

  def add_like(%{id: id}, _context),  do: Twix.add_like_post(id)


end
