class CreateUnits < ActiveRecord::Migration[5.2]
  def change
    create_table :units, id: false do |t|
      t.string :id, null: false
      t.float :price
      t.string :name
      t.string :description
      t.integer :width
      t.integer :length
      t.integer :height
      t.integer :door_height
      t.integer :door_width
      t.string :door_type
      t.string :access_type
      t.integer :floor
      t.string :size
      t.integer :area
      t.integer :standard_rate
      t.integer :managed_rate
      t.boolean :available_for_move_in
      t.boolean :rentable
      t.string :status
      t.string :payment_status
      t.string :current_ledger_id
      t.string :current_tenant_id
      t.string :combination_lock_number
      t.string :attribute_description
      t.boolean :deleted
      t.boolean :damaged
      t.boolean :complimentary
      t.string :unit_group_id

      t.timestamps
    end
  end
end
