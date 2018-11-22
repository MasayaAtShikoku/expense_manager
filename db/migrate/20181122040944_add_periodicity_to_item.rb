class AddPeriodicityToItem < ActiveRecord::Migration[5.2]
  def change
    add_reference :items, :periodicity, foreign_key: true
  end
end
