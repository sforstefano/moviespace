class PaymentSelectController < ApplicationController

  def select_plan
  	@pelicula = Pelicula.find(params[:id])
  end

  def select_monthly_subscription

  end
end
