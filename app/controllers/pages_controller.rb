class PagesController < ApplicationController
  skip_before_action :authenticate_user!

  def home
  end

  def admin
    render layout: "admin"
  end
end
