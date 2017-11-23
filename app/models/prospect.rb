class Prospect < ApplicationRecord
  validates :email, presence: true,
  uniqueness: {message: "Cet email est déjà utilisé"},
  format: { with: /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i, message: "Ceci n'est pas un email" }

  after_create :send_welcome_email, :new_subscriber

  private

  def send_welcome_email
    ProspectMailer.welcome(self).deliver_now
  end

  def new_subscriber
    ProspectMailer.new_subscriber(self).deliver_now
  end

end
