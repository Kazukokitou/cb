class BlogInfo < ActiveRecord::Base
  RSS_URL = "http://rss.exblog.jp/rss/exblog/lapin418/atom.xml" 

  def self.update_info
    logger.info "####### Start update_info"

    feed = fetch_rss_feed

    self.transaction do
      info = item_for_update
      info.title = feed[:title]
      info.published_at = feed[:published_at]
      info.url = feed[:url]

      logger.info "Save: #{info.inspect}"
      info.save!
    end

    logger.info "####### Complete update_info"
  end

  def self.item_for_update
    if self.count == 1
      self.first
    else
      self.destroy_all
      self.new
    end
  end

  def self.fetch_rss_feed
    feed = FeedNormalizer::FeedNormalizer.parse(open(RSS_URL), force_parser: FeedNormalizer::SimpleRssParser).items[0] 
    {
      title: feed.title.force_encoding('utf-8'),
      published_at: feed.date_published,
      url: feed.urls[0]
    }
  end
end
