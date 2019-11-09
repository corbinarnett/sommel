class CreateWines < ActiveRecord::Migration[6.0]
  def change
    create_table :wines do |t|
      t.string :name
      t.integer :vintage
      t.belongs_to :producer, null: false, foreign_key: true

      t.timestamps
    end
  end
end
