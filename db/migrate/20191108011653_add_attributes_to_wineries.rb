class AddAttributesToWineries < ActiveRecord::Migration[6.0]
  def change
    add_column :wineries, :location, :text
    add_column :wineries, :country, :text
  end
end
