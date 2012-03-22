require 'feed-normalizer'

module PagesHelper
  def load_blog
    source = "http://rss.exblog.jp/rss/exblog/lapin418/atom.xml" 
    feed = FeedNormalizer::FeedNormalizer.parse(open(source), :force_parser => FeedNormalizer::SimpleRssParser).items[0] 
    @blog_title = feed.title.force_encoding('utf-8')
    @blog_date = feed.date_published.strftime(" (%Y/%m/%d)")
    @blog_url = feed.urls[0]
  end
end
