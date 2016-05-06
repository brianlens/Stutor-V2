class AppController < ApplicationController
  def index
    @app_props = { name: "Stranger" }
  end
end
