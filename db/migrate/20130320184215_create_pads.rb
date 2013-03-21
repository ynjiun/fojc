class CreatePads < ActiveRecord::Migration
  def change
    create_table :pads do |t|
      t.string :name
      t.text :snippet

      t.timestamps
    end
  end
end
