class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_one :setting
  after_destroy :same_callback_method

    def same_callback_method
    	destroy :setting, :user_id;
  	end
end
