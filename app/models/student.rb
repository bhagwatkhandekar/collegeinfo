class Student < ApplicationRecord
	belongs_to :college
	validates :firstname, presence: true and 
	validates :gender, presence: true and
	validates :age , presence: true,numericality: { only_integer: true } and
	# :exclusion=> {:in => 0..18, :message => "Age should be larger than 18 "} and 
	validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }  
	validates :email, confirmation: true, uniqueness: true
	validates :email, presence: true
end 

