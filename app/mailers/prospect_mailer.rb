class ProspectMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.prospect_mailer.welcome.subject
  #
  def welcome(prospect)
    @prospect = prospect

    mail to: @prospect.email, Subject: "Bienvenue"
  end
end
