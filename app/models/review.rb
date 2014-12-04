class Review < ActiveRecord::Base
	belongs_to :book
	belongs_to :user

	validates :book, :presence => true
	validates :user, :presence => true
	validates :enlightenmentRating, :presence => true, :numericality => true
	validates :enjoymentRating, :presence => true, :numericality => true
	validates :overallRating, :presence => true, :numericality => true
end
