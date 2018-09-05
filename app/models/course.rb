class Course < ApplicationRecord
	belongs_to :university
	
	validates :name,presence: true
	validates :rate,presence: true, numericality: { less_than_or_equal_to: 5 }
	validates :average_students,presence: true, numericality:  { less_than_or_equal_to: 5 }

end
