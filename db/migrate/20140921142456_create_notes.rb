class CreateNotes < ActiveRecord::Migration
  def change
    create_table :notes do |t|
      t.string :name
      t.text :information
      t.datetime :creation_date
      t.datetime :expired_date
      t.belongs_to :user_id

      t.timestamps
    end
  end
end
