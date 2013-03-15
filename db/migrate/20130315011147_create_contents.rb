class CreateContents < ActiveRecord::Migration
  def change
    create_table :contents do |t|
      t.string :name
      t.string :description
      t.string :filename
      t.string :url
      t.string :language
      t.boolean :public

      t.timestamps
    end
  end
end
