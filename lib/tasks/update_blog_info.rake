desc "Update Blog info"
task :update_blog_info => :environment do
  Rails.logger.info '####### Start update_blog_info'
  BlogInfo.update_info
  Rails.logger.info '####### Complete update_blog_info'
end
