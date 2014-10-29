class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :name
      t.text :description
      t.belongs_to :user
      t.belongs_to :category
      t.datetime :deadline
      t.integer :owner

      t.timestamps
    end
  end
end
