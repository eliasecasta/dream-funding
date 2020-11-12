class FixIconStringNameDreams < ActiveRecord::Migration[6.0]
  def change
    rename_column :dreams, :icon_string, :icon
    #Ex:- rename_column("admin_users", "pasword","hashed_pasword")
  end
end
