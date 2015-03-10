# class zombie
class Zombie < ActiveRecord::Base
  has_one :brain, dependent: :destroy
  has_many :assignments
  has_many :roles, through: :assignments
  scope :rotting, -> { where(rotting: true) }
  scope :fresh, -> { where('age < 20') }
  scope :recent, -> { order('created_at desc').limit(3) }

  validates :name, presence: true
end
