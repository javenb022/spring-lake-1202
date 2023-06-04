class AmusementPark < ApplicationRecord
  has_many :rides

  def unique_mechanics
    rides.joins(:mechanics).select('mechanics.name').distinct
  end
end