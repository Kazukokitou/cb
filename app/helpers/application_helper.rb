# coding: utf-8
module ApplicationHelper
  FACEBOOK_PAGE_URL = "http://www.facebook.com/coupebaguette"

  def fb_text_icon
    link_to FACEBOOK_PAGE_URL, target: '_blank', class: 'fb-icon' do
      "Facebookページ #{image_tag 'fb.png'}".html_safe
    end
  end

  def fb_icon
    link_to image_tag('fb.png'), FACEBOOK_PAGE_URL, target: '_blank', class: 'fb-icon'
  end
end
