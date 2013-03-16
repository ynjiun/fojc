class RemoveLanguageFromContent < ActiveRecord::Migration
  def up
    remove_column :contents, :language
  end

  def down
    add_column :contents, :language, :string
  end
end
