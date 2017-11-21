class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :thanks]

  def home
    @prospect = Prospect.new
  end

  def thanks
    @root = root_path
  end
end
