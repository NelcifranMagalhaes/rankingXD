class University < ApplicationRecord
  	has_many :courses,inverse_of: :university,dependent: :destroy
  	accepts_nested_attributes_for :courses, reject_if: :all_blank, allow_destroy: true
  	
	validates :name,presence: true
	validates :geral_rate,presence: true,numericality: { less_than_or_equal_to: 5 }
  	
end
