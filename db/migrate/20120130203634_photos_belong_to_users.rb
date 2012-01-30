class PhotosBelongToUsers < ActiveRecord::Migration
  def up
    add_column :photos, :user_id, :integer, :null => false
  end

  def down
    remove_column :photos, :user_id
  end
end
