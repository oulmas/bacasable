class CreateBeers < ActiveRecord::Migration
  def change
    create_table :beers do |t|
      t.string :name
      t.text :desc
      t.integer :note

      t.timestamps null: false
    end
  end
end
