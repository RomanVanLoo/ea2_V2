class ApplicationController < ActionController::Base
  before_action :authenticate_user!

  def after_sing_in_path_for(resource)
    articles_path
  end
end
