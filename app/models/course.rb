class Course < ApplicationRecord
	belongs_to :university
	
	validates :name,presence: true
	validates :rate,presence: true
	validates :average_students,presence: true

end
