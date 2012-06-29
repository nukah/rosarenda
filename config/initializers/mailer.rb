# encoding: utf-8
ActionMailer::Base.delivery_method = :sendmail

ActionMailer::Base.sendmail_settings = {
  :location =>  '/usr/sbin/sendmail',
  :arguments => '-F "Рос-Аренда" -t'
}