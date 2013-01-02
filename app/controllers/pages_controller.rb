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
    source = "http://rss.exblog.jp/rss/exblog/lapin418/atom.xml" 
    feed = FeedNormalizer::FeedNormalizer.parse(open(source), force_parser: FeedNormalizer::SimpleRssParser).items[0] 
    @blog_title = feed.title.force_encoding('utf-8')
    @blog_date = feed.date_published
    @blog_url = feed.urls[0]
  end
end
