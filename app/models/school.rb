class School < ApplicationRecord
   # Validations
   validates_presence_of :name, :address, :capacity, :principal, :private_school
   validates_uniqueness_of :name
   validates :capacity, numericality: { greater_than_or_equal_to: 1, less_than_or_equal_to: 2500}
 
   # Associations
  has_many :students
 
end
