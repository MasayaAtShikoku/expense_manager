class CreatePeriodicities < ActiveRecord::Migration[5.2]
  def change
    create_table :periodicities do |t|
      t.string :name

      t.timestamps
    end
  end
end
