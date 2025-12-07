class AddTimeSignatureToPassages < ActiveRecord::Migration[8.0]
  def change
    add_column :passages, :time_signature, :string
    add_column :passages, :key_signature, :string
  end
end
