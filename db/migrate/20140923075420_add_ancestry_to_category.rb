class AddAncestryToCategory < ActiveRecord::Migration
  def change
    add_column :categories, :ancestry, :string, index: true
  end
end
