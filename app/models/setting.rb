class Setting < ApplicationRecord
  belongs_to :user
  validates :country, :language, presence: :true
  validates :country, :language, length: { minimum: 2, message: "Mínimo 2 caracteres" }
end
