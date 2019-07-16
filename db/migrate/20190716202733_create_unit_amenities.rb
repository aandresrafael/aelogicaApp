class CreateUnitAmenities < ActiveRecord::Migration[5.2]
  def change
    create_table :unit_amenities, id: false do |t|
      t.string :id, null: false
      t.string :name
      t.string :short_code
      t.boolean :show_in_sales_center_filter_dropdown
      t.timestamps
    end
  end
end
