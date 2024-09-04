defmodule Twix.Users.Follow do
  alias Twix.Repo

  alias Twix.Users.User
  alias Twix.Users.Follower

  def call(user_id, follower_id) do
    with {:ok , _user1}  <- exists(user_id)  ,
         {:ok , _user2}  <- exists(follower_id) do
          create_follower(user_id,follower_id)
    end
  end

  defp create_follower(user_id, follower_id) do
    %{follower_id: follower_id, following_id: user_id}
    |> Follower.changeset()
    |> Repo.insert()
  end

  defp exists(user_id) do
    case Repo.get(User, user_id) do
      nil -> {:error, :not_found}
      user -> {:ok, user}
    end

  end


end
