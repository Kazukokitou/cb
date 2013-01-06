class Information < ActiveRecord::Base
  attr_accessible :body, :expires_on, :title

  scope :active, where('expires_on >= ?', Date.today).order('created_at desc')
end
