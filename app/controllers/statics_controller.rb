class StaticsController < ApplicationController
	
  def index
  	  if params[:search]
         @peliculas = Pelicula.search(params[:search])
      else
         @peliculas = Pelicula.all.order('created_at DESC')
      end
  end

  def about
  end
end
