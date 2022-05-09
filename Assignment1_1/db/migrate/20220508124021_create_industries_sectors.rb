class CreateIndustriesSectors < ActiveRecord::Migration[7.0]
  def change
    create_table :industries_sectors, id: false do |t|

      t.references :sector, index:true, foreign_key:true, null:false
      t.references :industry, index:true, foreign_key:true, null:false

      t.timestamps
    end
  end
end
