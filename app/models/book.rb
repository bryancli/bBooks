class Author < ActiveRecord::Base
	has_many :books

	validates :firstName, :presence => true
	validates :lastName, :presence => true

	def fullName; "#{firstName} #{lastName}";end

end
