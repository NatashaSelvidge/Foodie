class Restaurant < ActiveRecord::Base
  
      validates  :name, :location, presence: true 
      belongs_to :user
      

    end 