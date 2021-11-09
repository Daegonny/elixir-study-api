defmodule BusiApiWeb.DefaultController do
  use BusiApiWeb, :controller

  def index(conn, _parms) do
    text(conn, "BusiAPI")
  end
end
