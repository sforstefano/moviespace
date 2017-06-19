class AddOriginalToPelicula < ActiveRecord::Migration[5.0]
  def change
    add_column :peliculas, :original, :string
  end
end
