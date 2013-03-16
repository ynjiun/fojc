class RemovePublicFromContent < ActiveRecord::Migration
  def up
    remove_column :contents, :public
  end

  def down
    add_column :contents, :public, :boolean
  end
end
