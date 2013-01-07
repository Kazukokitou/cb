class Information < ActiveRecord::Base
  attr_accessible :body, :expires_on, :title

  validates :body, :expires_on, :title, presence: true

  scope :active, where('expires_on >= ?', Date.today).order('created_at desc')
end
