class CreateIncomeItems < ActiveRecord::Migration
  def change
    create_table :income_items do |t|
      t.references :income_category, index: true
      t.decimal :money, precision: 10, scale: 2
      t.date :date

      t.timestamps
    end
  end
end
