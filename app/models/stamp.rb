class Stamp < ApplicationRecord
  belongs_to :user
  validates :description, presence: true
  validates :value, presence: true
end
