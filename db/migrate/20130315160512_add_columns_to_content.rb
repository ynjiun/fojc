class AddColumnsToContent < ActiveRecord::Migration
  def change
    add_column :contents, :chinese, :boolean
    add_column :contents, :schinese, :boolean
    add_column :contents, :english, :boolean
  end
end
