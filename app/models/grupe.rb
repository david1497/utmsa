class Grupe < ActiveRecord::Base
	has_many :users
	has_many :anounces
end
