class CreateWines < ActiveRecord::Migration[6.0]
  def change
    create_table :wines do |t|
      t.string :name
      t.integer :vintage
      t.string :varietal
      t.belongs_to :winery, null: false, foreign_key: true

      t.timestamps
    end
  end
end
