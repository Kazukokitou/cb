# -*- coding: utf-8 -*-
class ContactNotifier < ActionMailer::Base
  default from: ENV['CB_MAIL_FR']

  def create(contact)
    @contact = contact
    mail to: ENV['CB_MAIL_TO'], subject: "Webサイトからの問い合わせ [#{contact.name}]"
  end
end
