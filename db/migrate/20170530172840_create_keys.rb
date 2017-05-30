class CreateKeys < ActiveRecord::Migration[5.1]
  def change
    create_table :keys do |t|
      t.string :user
      t.string :pw

      t.timestamps
    end
  end
end
