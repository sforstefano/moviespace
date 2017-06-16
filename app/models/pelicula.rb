class Pelicula < ApplicationRecord
	has_many :comentarios
	def self.search(search)
     	where("main_actor like ?", "%" + "%#{search}%" + "%")
   	end
end
