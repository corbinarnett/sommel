class AddAttributesToWineries < ActiveRecord::Migration[6.0]
  def change
    add_column :wineries, :region_or_city, :text
    add_column :wineries, :country, :text
  end
end
