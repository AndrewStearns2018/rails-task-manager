class CreateTasks < ActiveRecord::Migration[5.2]
  def change
    create_table :tasks do |t|
      t.string :title
      t.text :details
      t.boolean :completed, :default => false
      # This is how you set a default value.
      # Can't be done from the command line.

      t.timestamps
    end
  end
end
