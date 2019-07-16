class CreateUnitGroups < ActiveRecord::Migration[5.2]
  def change
    create_table :unit_groups, id: false do |t|
      t.string :id, null: false
      t.float :price, default: 0
      t.string :group_key
      t.string :name
      t.integer :available_units_count
      t.integer :total_units_count
      t.integer :total_non_excluded_units_count
      t.string :size
      t.integer :standard_rate
      t.integer :floor
      t.float :reduced_price
      t.integer :occupancy_percent
      t.integer :area
      t.integer :length
      t.integer :width
      t.integer :height
      t.float :due_at_move_in
      t.float :due_at_move_in_without_fees
      t.float :due_monthly
      t.string :attribute_description
      t.string :description
      t.float :average_rent
      t.string :active_rate_type
      t.timestamps
    end
  end
end
