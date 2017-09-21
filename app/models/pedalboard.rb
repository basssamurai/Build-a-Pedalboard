class Pedalboard < ApplicationRecord
  has_many :pedals
  validates :name, presence: true
end
