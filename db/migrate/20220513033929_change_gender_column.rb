class ChangeGenderColumn < ActiveRecord::Migration[6.1]
  def change
    rename_column :users, :gender, :interested_in
  end
end
