class DashboardController < ApplicationController
  expose(:projects)

  def index
  end

  def projects
    project_list = current_user.has_role?(:freelancer) ? current_user.projects_as_freelancer : current_user.projects_as_client
  end
end
