class ProspectMailerPreview < ActionMailer::Preview
  def welcome
    prospect = Prospect.last
    ProspectMailer.welcome(prospect)
  end
end
