class UnitGroup < ApplicationRecord
  belongs_to :channel_rate
  belongs_to :unit_type
  has_many :units
  has_many :invoiceable_fees
  has_many :unit_amenities
  has_many :discount_plans
end
