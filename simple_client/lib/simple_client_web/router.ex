defmodule SimpleClientWeb.Router do
  use SimpleClientWeb, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_live_flash
    plug :put_root_layout, {SimpleClientWeb.LayoutView, :root}
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/hangman", SimpleClientWeb do
    pipe_through :browser

    get "/", HangmanController, :index
    post "/", HangmanController, :new
    put "/", HangmanController, :update

    get "/current", HangmanController, :show
  end

  # Other scopes may use custom stacks.
  # scope "/api", SimpleClientWeb do
  #   pipe_through :api
  # end
end
