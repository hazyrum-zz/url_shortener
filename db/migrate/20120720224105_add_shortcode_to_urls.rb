class AddShortcodeToUrls < ActiveRecord::Migration
  def change
    add_column :urls, :shortcode, :string
  end
end
