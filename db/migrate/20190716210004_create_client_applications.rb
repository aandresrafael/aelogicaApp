class CreateClientApplications < ActiveRecord::Migration[5.2]
  def change
    create_table :client_applications, id: false do |t|
      t.string :id, null: false
      t.string :name
      t.boolean :channel_rates_on
      t.boolean :internal
      t.timestamps
    end
  end
end
