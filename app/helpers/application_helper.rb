# coding: utf-8
module ApplicationHelper
  def fb_text_icon
    "#{fb_text} #{fb_icon}".html_safe
  end

  def fb_text
    link_to "Facebookページ", fb_url, target: '_blank'
  end

  def fb_icon
    link_to image_tag('fb.png'), fb_url, target: '_blank', class: 'fb-icon'
  end

  def fb_url
    "http://www.facebook.com/coupebaguette"
  end
end
