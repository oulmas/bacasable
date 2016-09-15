class CreateBrasseries < ActiveRecord::Migration
  def change
    create_table :brasseries do |t|
      t.string :nom
      t.text :desc

      t.timestamps null: false
    end
  end
end
