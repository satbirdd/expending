class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.references :category, index: true
      t.string :description
      t.datetime :date

      t.timestamps
    end
  end
end
