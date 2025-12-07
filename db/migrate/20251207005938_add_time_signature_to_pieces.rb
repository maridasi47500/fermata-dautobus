class AddTimeSignatureToPieces < ActiveRecord::Migration[8.0]
  def change
    add_column :pieces, :time_signature, :string
    add_column :pieces, :key_signature, :string
  end
end
