defmodule MassAppeal.AuthenticationController do
  use MassAppeal.Web, :controller
  alias MassAppeal.User

  def create(conn, %{"user" => user_params}) do
    changeset = User.registration_changeset(%User{}, user_params)
    case Repo.insert(changeset) do
      {:ok, user} ->
        render(conn, "create.json", changeset: changeset)
      {:error, changeset} ->
        render(conn, "create_error.json", changeset: changeset)
    end
  end
end
