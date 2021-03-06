class MessageMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.message_mailer.contact.subject
  #
  def contact(message)
    @message = message

    mail(from: @message.email,
         to: "info@olivierriccini.com",
         subject: "Message from your website")
  end
end
