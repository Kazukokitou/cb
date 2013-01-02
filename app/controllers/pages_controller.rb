class PagesController < ApplicationController
  def home
    load_blog
  end

  def concept
  end

  def menu
  end

  def shop_info
  end

  private

  def load_blog
    @blog_info = BlogInfo.first
  end
end
