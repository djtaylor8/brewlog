class CreateEntries < ActiveRecord::Migration[6.1]
  def change
    create_table :entries do |t|
      t.text :name
      t.text :location
      t.text :notes
      t.integer :user_id

      t.timestamps
    end
  end
end
