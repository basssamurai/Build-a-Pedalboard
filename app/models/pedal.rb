class Pedal < ApplicationRecord
  belongs_to :pedalboard, optional: true
  validates :name, :style, presence: true
end
