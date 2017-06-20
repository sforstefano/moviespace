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

  validates :name, :stars, :main_actor, :year, :url, :genre, :director, :precio, :original, presence: {mesage: "No puedes dejar bacío"}
  validates :stars, :year, numericality: { only_integer: true }
  validates :stars, numericality: { less_than_or_equal_to: 5, message:"No puede ser mayor a 5" }
  validates :year, numericality: { greater_than: 1899, less_than_or_equal_to: 2030 }
  validates :name, :main_actor, :original, length: { maximum: 50 }
  validates :precio, numericality: { less_than: 2000}
end
