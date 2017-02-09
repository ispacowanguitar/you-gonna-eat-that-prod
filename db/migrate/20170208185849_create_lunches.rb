class CreateLunches < ActiveRecord::Migration[5.0]
  def change
    create_table :lunches do |t|
      t.date :date
      t.string :title

      t.timestamps
    end
  end
end
