class PageController < ApplicationController
  def about
  end

  def contact
  end
  def index
    redirect_to articles_path if logged_in?
  end
  def page
  end
end
