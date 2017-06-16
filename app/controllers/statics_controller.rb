class StaticsController < ApplicationController
	
  def index
  	  if params[:search]
         @peliculas = Pelicula.search(params[:search])
      elsif 
      	 @peliculas = Pelicula.search_year(params[:search_year])
      elsif
      	 @peliculas = Pelicula.search_genre(params[:search_genre])
      else
      	 @peliculas = Pelicula.all
      end
  end

  def about
  end
end
