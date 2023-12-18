class Student < ApplicationRecord
  has_many :experiences
  has_secure_password
end
