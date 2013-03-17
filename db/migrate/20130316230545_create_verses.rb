class CreateVerses < ActiveRecord::Migration
  def change
    create_table :verses do |t|
      t.string :verse
      t.text :chinese
      t.text :schinese
      t.text :english
      t.date :last_show

      t.timestamps
    end
  end
end
