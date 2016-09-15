class AddColumnBrasserieFromBeers < ActiveRecord::Migration
  def change
    add_reference :beers, :brasserie, index: true, foreign_key: true
  end
end
