class Pelicula < ApplicationRecord
	has_many :comentarios

	def self.search(search)
     	where("main_actor like ?", "%" + "%#{search}%" + "%")
   	end

  def self.search_year(search_year)
   where(year: search_year)
  end

  def self.search_genre(search_genre)
    where("genre like ?", "%" + "%#{search_genre}%" + "%")
  end
end
