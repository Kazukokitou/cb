# coding: utf-8
module ApplicationHelper
  FACEBOOK_PAGE_URL = "http://www.facebook.com/coupebaguette"

  def fb_text_icon
    "#{fb_text} #{fb_icon}".html_safe
  end

  def fb_text
    link_to "Facebookページ", FACEBOOK_PAGE_URL, target: '_blank'
  end

  def fb_icon
    link_to image_tag('fb.png'), FACEBOOK_PAGE_URL, target: '_blank', class: 'fb-icon'
  end
end
