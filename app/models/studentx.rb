class Studentx < ApplicationRecord
 has_many :scs
 has_many :courses ,:through=> :scs
end
