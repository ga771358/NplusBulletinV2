class CreateBoards < ActiveRecord::Migration[5.1]
  def change
    create_table :boards do |t|
      t.string :title
      t.text :descrption
      t.date :date
      t.integer :new

      t.timestamps
    end
  end
end
