class AddSinopsisToPelicula < ActiveRecord::Migration[5.0]
  def change
    add_column :peliculas, :sinopsis, :text
  end
end
