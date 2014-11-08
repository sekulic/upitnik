class AddKategorijaIdToAnketa < ActiveRecord::Migration
  def change
    add_column :ankete, :kategorija_id, :integer
  end
end
