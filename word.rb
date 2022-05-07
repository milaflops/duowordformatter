UNITS = {
  "Greeting 1" => 1,
  "Numbers" => 1,
  "Name" => 1,
  "Greeting 2" => 1,
  "Food 1" => 1,
  "Occupation" => 1,
  "Contact" => 1,
  "Nation" => 1,
  "Greeting 3" => 1,
  "Location 1" => 1,
  "Phrases 1" => 2,
  "Family 1" => 2,
  "Phrases 2" => 2,
  "Greeting 4" => 2,
  "Drink" => 2,
  "Location 2" => 2,
  "Time 1" => 2,
  "Family 2" => 2,
  "Telephone" => 2,
  "People 1" => 2,
  "Time 2" => 2,
  "Location 3" => 2,
  "Hobbies 1" => 2,
  "Daily Routine 1" => 2,
  "Payment" => 2,
  "Entertainment" => 2,
  "Location 4" => 2,
  "Restaurant" => 2,
  "Supermarket" => 2,
  "Hobbies 2" => 2,
  "Dining 1" => 2,
  "Health 1" => 2,
  "Transportation" => 2,
  "Shopping 1" => 2,
  "Languages" => 2,
  "Time 3" => 3,
  "Dining 2" => 3,
  "Existence" => 3,
  "Sports 1" => 3,
  "Invitiation 1" => 3,
  "Health 2" => 3,
  "Invitation 2" => 3,
  "Dining 3" => 3,
  "Shopping 2" => 3,
  "Body Parts" => 3,
  "Travel" => 3,
  "Weather" => 3,
  "Shopping 3" => 3,
  "People 2" => 3,
  "Celebration" => 3,
  "Sports 2" => 3,
  "School" => 3,
  "Family 3" => 3,
  "Gourmet 1" => 3,
  "Time 4" => 3,
  "Location 5" => 3,
  "Shopping 4" => 3,
  "Daily Routine 2" => 3,
  "Food 3" => 3,
  "People 3" => 3,
  "Location 6" => 3,
  "Daily Routine 3" => 3,
  "Travel 2" => 4,
  "Languages 2" => 4,
  "Personality and Feelings" => 4,
  "School 2" => 4,
  "Future" => 4,
  "Environment" => 4,
  "Work" => 4,
  "Culture" => 4,
  "Hobbies 3" => 4,
  "Health 3" => 4,
  "Travel 3" => 4,
  "Languages 3" => 4,
  "House" => 4,
  "Exam" => 4,
  "Travel 4" => 4,
  "Communication 2" => 4,
  "Work 2" => 4,
  "Festivals" => 4,
  "Gourmet 2" => 4,
  "Internet Slang" => 4,
  "Business 1" => 4,
  "Business 2" => 4,
  "Emergency" => 4,
  "Work 3" => 4,
  "Weather 2" => 4,
  "Duo" => 4,
}

class Word
  attr_reader :lesson, :section

  def initialize(ary)
      @section = ary[1].to_i
      @lesson = ary[2]
      @simp = ary[3]
      @trad = ary[4]
  end

  def char
      if @trad.include?("Manual Review")
          @simp
      else
          @trad
      end
  end

  def unit
    UNITS[section]
  end

  def single_char?
    char.length == 1
  end
end
