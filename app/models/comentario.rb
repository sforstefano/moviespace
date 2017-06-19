class Comentario < ApplicationRecord
	belongs_to :pelicula

	validates :name, :comment, presence: :true
	validates :name, length: { maximum: 10 }
	validates :comment, length: { minimum: 15}
end
