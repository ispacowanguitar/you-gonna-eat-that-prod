class AddGroupNumberToEater < ActiveRecord::Migration[5.0]
  def change
    add_column :eaters, :group_number, :integer
  end
end
