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

  def antiques
    # Render another page if settings say we don't display this yet!!
    render('impressions') unless Setting.first.display_antiques
    @articles = Article.antiques
  end

  def arts
    # Render another page if settings say we don't display this yet!!
    render('impressions') unless Setting.first.display_arts
    @articles = Article.arts
  end
end
