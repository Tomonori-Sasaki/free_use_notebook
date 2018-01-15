class CreateProgrammings < ActiveRecord::Migration[5.1]
  def change
    create_table :programmings do |t|
      t.integer :rank
      t.string :name
      t.text :content

      t.timestamps
    end
  end
end
