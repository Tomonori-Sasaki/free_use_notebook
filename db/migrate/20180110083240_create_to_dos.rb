class CreateToDos < ActiveRecord::Migration[5.1]
  def change
    create_table :to_dos do |t|
      t.string :name
      t.text :content
      t.date :deadline

      t.timestamps
    end
  end
end
