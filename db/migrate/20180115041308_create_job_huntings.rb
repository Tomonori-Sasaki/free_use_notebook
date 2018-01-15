class CreateJobHuntings < ActiveRecord::Migration[5.1]
  def change
    create_table :job_huntings do |t|
      t.integer :rank
      t.string :type
      t.string :name
      t.text :content

      t.timestamps
    end
  end
end
