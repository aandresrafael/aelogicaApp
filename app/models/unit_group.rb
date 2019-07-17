class UnitGroup < ApplicationRecord
  belongs_to :channel_rate, optional: true
  belongs_to :unit_type, optional: true
  has_many :units
end
