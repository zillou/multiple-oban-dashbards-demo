defmodule DemoWeb.Router do
  use DemoWeb, :router

  import Oban.Web.Router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_live_flash
    plug :put_root_layout, {DemoWeb.LayoutView, :root}
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", DemoWeb do
    pipe_through :browser

    oban_dashboard "/oban", oban_name: Oban, as: :oban_dashboard
    oban_dashboard "/oban/admin", oban_name: Admin.Oban, as: :oban_admin_dashboard
  end
end
