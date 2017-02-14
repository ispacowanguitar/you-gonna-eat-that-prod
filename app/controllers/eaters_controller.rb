class EatersController < ApplicationController

  def home
  	@lunch = Lunch.first

  	@generated = Lunch.first.generated
    Eater.all.each do |eater|
      if eater.group_number == nil
        @generated = false
      end
    end

    if Eater.first && Eater.first.group_number != nil
      @eaters = Eater.all.order(:group_number)
      @number_of_groups = @eaters.last.group_number
    end
  end

  def sign_up
  end

  def new
    if !Lunch.first.generated
    	eater = Eater.new(name: params[:name], email: params[:email])
    	 if eater.save
       end
      end
    		redirect_to '/thanks'
    end
end
