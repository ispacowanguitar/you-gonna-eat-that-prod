class AddGeneratedToLunch < ActiveRecord::Migration[5.0]
  def change
    add_column :lunches, :generated, :boolean
  end
end
