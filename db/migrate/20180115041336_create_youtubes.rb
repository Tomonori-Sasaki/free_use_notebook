class CreateYoutubes < ActiveRecord::Migration[5.1]
  def change
    create_table :youtubes do |t|
      t.integer :rank
      t.string :name
      t.text :content

      t.timestamps
    end
  end
end
