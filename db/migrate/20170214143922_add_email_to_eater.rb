class AddEmailToEater < ActiveRecord::Migration[5.0]
  def change
  	 add_column :eaters, :email, :string
  end
end
