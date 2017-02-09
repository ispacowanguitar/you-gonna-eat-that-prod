class CreateEaters < ActiveRecord::Migration[5.0]
  def change
    create_table :eaters do |t|
      t.string :name
      t.integer :group
      t.timestamps
    end
  end
end
