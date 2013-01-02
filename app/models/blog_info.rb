class BlogInfo < ActiveRecord::Base
  attr_accessible :published_at, :title, :url

  def self.update_info
    logger.info "####### Start update_info"
    source = "http://rss.exblog.jp/rss/exblog/lapin418/atom.xml" 
    feed = FeedNormalizer::FeedNormalizer.parse(open(source), force_parser: FeedNormalizer::SimpleRssParser).items[0] 

    self.transaction do
      if self.count == 1
        blog_info = self.first
      else
        self.destroy_all
        blog_info = self.new
      end

      blog_info.title = feed.title.force_encoding('utf-8')
      blog_info.published_at = feed.date_published
      blog_info.url = feed.urls[0]

      logger.info "Save: #{blog_info.inspect}"
      blog_info.save!
    end
    logger.info "####### Complete update_info"
  end
end
