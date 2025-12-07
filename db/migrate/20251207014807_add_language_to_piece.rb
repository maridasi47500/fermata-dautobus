class AddLanguageToPiece < ActiveRecord::Migration[8.0]
  def change
    add_column :pieces, :language, :string
  end
end
