class CreatePieces < ActiveRecord::Migration[8.0]
  def change
    create_table :pieces do |t|
      t.string :title
      t.string :composer

      t.timestamps
    end
  end
end
