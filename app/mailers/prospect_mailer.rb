class ProspectMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.prospect_mailer.welcome.subject
  #
  def welcome(prospect)
    @prospect = prospect
    mail to: @prospect.email, Subject: "Bienvenue!"
  end

  def new_subscriber(prospect)
    @prospect = prospect
    mail to: 'vittematthias@gmail.com', subject: "Un nouveau propsect s'est inscrit sur la LP"
  end
end
