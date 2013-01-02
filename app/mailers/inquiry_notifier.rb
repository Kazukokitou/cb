# -*- coding: utf-8 -*-
class InquiryNotifier < ActionMailer::Base
  default from: ENV['CB_MAIL_FR']

  def create(inquiry)
    @inquiry = inquiry
    mail to: ENV['CB_MAIL_TO'], subject: "Webサイトからの問い合わせ [#{inquiry.name}]"
  end
end
