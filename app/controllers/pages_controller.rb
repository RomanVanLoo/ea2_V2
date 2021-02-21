class PagesController < ApplicationController
  
  skip_before_action :authenticate_user!

  def impressions
  end

  def before_and_after
  end

  def at_work
  end

  def about
  end
end
