defmodule MassAppeal.Router do
  use MassAppeal.Web, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", MassAppeal do
    pipe_through :browser # Use the default browser stack

    get "/", PageController, :index
  end

  scope "/api", MassAppeal do
    pipe_through :api

    resources "/authentications", AuthenticationController, only: [:create]
  end
end
