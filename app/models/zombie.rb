class Zombie < ActiveRecord::Base
  scope :rotting, -> { where(rotting: true) }
end
