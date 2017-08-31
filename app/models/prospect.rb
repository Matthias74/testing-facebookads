class Prospect < ApplicationRecord
  validates :email, presence: true,
  uniqueness: true,
  format: { with: /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i, message: "Ceci n'est pas un email" }
end
