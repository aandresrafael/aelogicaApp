class Unit < ApplicationRecord
  belongs_to :unit_group
  belongs_to :channel_rate
  has_many :unit_amenities

end
