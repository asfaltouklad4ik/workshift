class CreateShedules < ActiveRecord::Migration
  def change
    create_table :shedules do |t|

      t.timestamps
    end
  end
end
