class Sequence < ApplicationRecord
    belongs_to :fight
    belongs_to :character
    belongs_to :weapon
    belongs_to :technique
    belongs_to :movement
    belongs_to :line
end
