class RemoveUrlFromContent < ActiveRecord::Migration
  def up
    remove_column :contents, :url
  end

  def down
    add_column :contents, :url, :string
  end
end
