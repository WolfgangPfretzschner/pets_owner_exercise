class Pet < ApplicationRecord
  belongs_to :owner

  validates :name, {presence: true, uniqueness: true}
  validates :pet_type, presence: true

end
