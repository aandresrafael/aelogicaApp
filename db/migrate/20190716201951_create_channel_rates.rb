class CreateChannelRates < ActiveRecord::Migration[5.2]
  def change
    create_table :channel_rates, id: :string do |t|
      t.string :base_rate_type
      t.string :modifier_type
      t.boolean :turned_on
      t.boolean :turned_off_on
      t.float :rate
      t.float :amount
      t.string :channel_name
      t.string :channel_id
      t.string :facility_id

      t.timestamps
    end
  end
end
