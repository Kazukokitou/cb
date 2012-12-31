# coding: utf-8
module ApplicationHelper
  def fb_link
    "☞ #{fb_icon}".html_safe
  end

  def fb_icon
    link_to image_tag('fb.png'),  "http://www.facebook.com/coupebaguette", target: '_blank', class: 'fb-icon'
  end
end
