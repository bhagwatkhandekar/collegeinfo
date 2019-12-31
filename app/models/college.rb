class College < ApplicationRecord
	has_many :students
	validates :name, presence: true,
	length: { minimum:7 } and 
	validates :department, presence: true,
	length: {minimum: 5}
end
