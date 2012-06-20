# encoding: utf-8
ActionMailer::Base.delivery_method = :sendmail

ActionMailer::Base.sendmail_settings = {
  :location =>  '/usr/sbin/sendmail',
  :arguments => '-f "mailing@xn----8sbape2cdpdh.xn--p1ai" -F "Рос-Аренда" -t'
}