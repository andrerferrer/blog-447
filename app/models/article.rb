class Article < ApplicationRecord
	# has_one_attached :whatever
	# has_one_attached :avatar
	# has_one_attached :banana
	has_many_attached :photos
end
