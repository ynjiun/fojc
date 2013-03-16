class RemoveFilenameFromContent < ActiveRecord::Migration
  def up
    remove_column :contents, :filename
  end

  def down
    add_column :contents, :filename, :string
  end
end
