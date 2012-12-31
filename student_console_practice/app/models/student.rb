class Student < ActiveRecord::Base
  attr_accessible :date_of_birth, :eye_color, :first_name, :hair_color, :height, :last_name, :middle_name, :sex, :weight

  def self.seed_data!
    ages = (5..18).to_a
    heights = {
        5  => (40..46).to_a,
        6  => (42..49).to_a,
        7  => (44..52).to_a,
        8  => (47..54).to_a,
        9  => (49..57).to_a,
        10 => (50..59).to_a,
        11 => (52..61).to_a,
        12 => (54..64).to_a,
        13 => (56..66).to_a,
        14 => (59..70).to_a,
        15 => (62..72).to_a,
        16 => (63..73).to_a,
        17 => (64..74).to_a,
        18 => (65..75).to_a,
    }
    500.times do |number|
      age = ages.sample
      date_of_birth = (age).years.ago + rand(11).months + rand(30).days
      height = heights[age].sample
      Student.create(
        :first_name => Faker::Name.first_name,
        :middle_name => Faker::Name.first_name,
        :last_name => Faker::Name.last_name,
        :date_of_birth => date_of_birth,
        :hair_color => ['red', 'brown', 'black', 'blonde'].sample,
        :eye_color => ['blue', 'green', 'brown'].sample,
        :height => height,
        :weight => random_weight_for_height(height),
        :sex => ['M', 'F'].sample
      )
    end
  end

  private

  def self.random_weight_for_height(height)
    bmi = (19..40).to_a.sample
    sprintf("%.2f", ((height * height) * bmi)/703)
  end
end
