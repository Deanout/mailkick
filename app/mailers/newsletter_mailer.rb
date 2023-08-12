class NewsletterMailer < ApplicationMailer
  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.newsletter_mailer.email_blast.subject
  #
  def email_blast(user = User.first, name = Newsletter.first.name)
    @greeting = 'Hi'
    @user = user
    @name = name

    mail to: user.email
  end
end
