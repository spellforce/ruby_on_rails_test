class Course < ApplicationRecord
 has_many :scs
 has_many :studentxes ,:through=> :scs
end
