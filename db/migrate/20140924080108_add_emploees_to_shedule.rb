class AddEmploeesToShedule < ActiveRecord::Migration
  def change
  	add_column :shedules, :employee, :string
  end
end
