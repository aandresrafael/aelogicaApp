class CreateDiscountPlanDiscounts < ActiveRecord::Migration[5.2]
  def change
    create_table :discount_plan_discounts, id: :string do |t|
      t.string :discount_type
      t.integer :month_number
      t.integer :amount
      t.integer :minimum_amount
      t.integer :maximum_amount
      t.timestamps
    end
  end
end
