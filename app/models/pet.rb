class Pet < ApplicationRecord
  belongs_to :owner

  validates :name, {presence: true, uniqueness: true}
  validates :pet_type, presence: true

  def self.search(arg)
    Pet.all.select do |value|
      value.pet_type.downcase == arg.downcase
    end
  end

end
