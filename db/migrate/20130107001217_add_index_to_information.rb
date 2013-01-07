class AddIndexToInformation < ActiveRecord::Migration
  def change
    add_index :information, :expires_on
  end
end
