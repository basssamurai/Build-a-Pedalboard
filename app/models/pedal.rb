class Pedal < ApplicationRecord
  belongs_to :pedalboard, optional: true
end
