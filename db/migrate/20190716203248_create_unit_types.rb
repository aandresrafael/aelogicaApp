class CreateUnitTypes < ActiveRecord::Migration[5.2]
  def change
    create_table :unit_types, id: :string do |t|
      t.string :name
      t.boolean :deleted
      t.string :internal_account_code
      t.string :code_and_description
      t.timestamps
    end
  end
end
