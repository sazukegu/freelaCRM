class ApplicationController < ActionController::Base
  def not_found
    raise ActiveRecord::RecordNotFound, "Not Found"
  end
end
