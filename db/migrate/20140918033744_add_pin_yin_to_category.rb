class AddPinYinToCategory < ActiveRecord::Migration
  def change
    add_column :categories, :pinyin, :string, index: true
  end
end
