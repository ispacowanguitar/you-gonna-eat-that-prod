class AdminsController < ApplicationController
  def create
  end

  def new
  	Lunch.delete_all
  	Eater.delete_all
  	lunch = Lunch.new(title: params[:title], date: params[:date], generated: false)
  	lunch.save
  	redirect_to jennys_super_secret_admin_stuff_generate_path
  end

  def generate
  	@eaters = Eater.all
	group_size = params[:group_size]
  	if group_size && group_size != ""
  		puts "lunch is now generated"
  		Lunch.first.update(generated: true)
  		@eaters = @eaters.shuffle
  		number_of_groups = @eaters.count / group_size.to_i
  		puts number_of_groups
  		group_number = 1
  		@eaters.each do |eater| 
  			eater.update(group_number: group_number)
  			if group_number < number_of_groups
  				group_number += 1
  			else
  				group_number = 1
  			end
  		end
  		@eaters = Eater.order(:group_number)
	else
  		puts "no group number"
  	end
  end

  def delete
  	eater = Eater.find(params[:id])
  	eater.delete
  	redirect_to '/jennys_super_secret_admin_stuff/generate'
  end
end
