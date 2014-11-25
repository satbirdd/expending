class CreateIncomeCategories < ActiveRecord::Migration
  def change
    create_table :income_categories do |t|
      t.string :name
      t.string :ancestry
      t.string :pinyin

      t.timestamps
    end
  end
end
