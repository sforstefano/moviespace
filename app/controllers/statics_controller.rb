class StaticsController < ApplicationController
	
  def index
  	  if params[:search]
         @peliculas = Pelicula.search(params[:search])
      elsif params[:search_year]
      	 @peliculas = Pelicula.search_year(params[:search_year])
      elsif params[:search_genre]
      	 @peliculas = Pelicula.search_genre(params[:search_genre]).order("created_at DESC")
      else
      	 @peliculas = Pelicula.all
      end
  end

  def about
  end
end
