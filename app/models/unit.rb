class Unit < ApplicationRecord
  belongs_to :unit_group, optional: true
end
