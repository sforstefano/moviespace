class SettingsController < ApplicationController
	layout 'admin'
	 
	def index

		@setting = current_user.setting
		@payment =  current_user.payments

		
		#Mostar on tneim els erors puts "=" * 500
		
		

		## Mostrar errors
		# puts "=" * 100
		# 	if @setting.country == "España"
		# 		puts "si"
		# 	else
		# 		puts "No"
		# 		puts @setting.country
		# 	end
		# puts "=" * 100

	end

	def show
		@setting = Setting.find(params[:id])
	end

	def new
		@setting = current_user.build_setting
		
	end

	def create
		@setting = current_user.build_setting(setting_params)
		if @setting.save
			redirect_to settings_path
		else
			flash[:error] = t('mal')
			render :new
		end
	end

	def edit
		@setting = Setting.find(params[:id])
	end

	def update
		@setting = Setting.find(params[:id])

		if @setting.update_attributes(setting_params)
			redirect_to settings_path
		else
			render :index
		end
	end


	private
	def setting_params
		params.require(:setting).permit(:country, :language)
	end  

end


