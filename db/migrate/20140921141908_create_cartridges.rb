class CreateCartridges < ActiveRecord::Migration
  def change
    create_table :cartridges do |t|
      t.string :type
      t.string :place
      t.datetime :date_change
      t.datetime :date_given
      t.datetime :date_return
      t.string :money
      t.belongs_to :user_change
      t.belongs_to :user_given
      t.belongs_to :user_return

      t.timestamps
    end
  end
end
