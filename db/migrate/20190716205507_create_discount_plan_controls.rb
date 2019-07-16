class CreateDiscountPlanControls < ActiveRecord::Migration[5.2]
  def change
    create_table :discount_plan_controls, id: false do |t|
      t.string :id, null: false
      t.string :kind
      t.integer :min_value
      t.integer :max_value
      t.boolean :deleted
      t.boolean :deleted_on
      t.string  :requirements_text
      t.integer :applicable_discount_plans_count
      t.string :unit_type_id
      t.timestamps
    end
  end
end
