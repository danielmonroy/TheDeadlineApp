class DashboardController < ApplicationController
  before_action :authenticate_user!
  def index
    @projects = Project.all.order(:created_at)
  end
end
