class CreatePassages < ActiveRecord::Migration[8.0]
  def change
    create_table :passages do |t|
      t.integer :piece_id
      t.string :title
      t.string :description
      t.string :myscore

      t.timestamps
    end
  end
end
