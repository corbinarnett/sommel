class CreateTastingNotes < ActiveRecord::Migration[6.0]
  def change
    create_table :tasting_notes do |t|
      t.integer :rating
      t.text :comment
      t.belongs_to :user, null: false, foreign_key: true
      t.belongs_to :wine, null: false, foreign_key: true

      t.timestamps
    end
  end
end
