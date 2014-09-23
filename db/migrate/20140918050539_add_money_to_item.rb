class AddMoneyToItem < ActiveRecord::Migration
  def change
    add_column :items, :money, :decimal, precision: 10, scale: 2
    change_column :items, :date, :date 
  end
end
