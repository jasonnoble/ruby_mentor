class Student < ActiveRecord::Base
  attr_accessible :date_of_birth, :eye_color, :first_name, :hair_color, :height, :last_name, :middle_name, :sex, :weight
end
