class AddEstrenoToPelicula < ActiveRecord::Migration[5.0]
  def change
    add_column :peliculas, :estreno, :date
  end
end
