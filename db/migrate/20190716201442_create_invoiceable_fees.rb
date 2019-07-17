class CreateInvoiceableFees < ActiveRecord::Migration[5.2]
  def change
    create_table :invoiceable_fees, id: :string do |t|
      t.string :product_code
      t.string :kind
      t.string :description
      t.boolean :required_at_move_in
      t.boolean :required_at_transfer
      t.integer :amount
      t.string :short_description
      t.boolean :show_in_sales_center
      t.integer :tax_total
      t.integer :total
      t.string :unit_group_id
      t.timestamps
    end
  end
end
