require('minitest/autorun')
require('minitest/rg')
require_relative('../student')

class TestStudent < MiniTest::Test

  def test_student_name
    student_profile = Student.new('Raul', 'E27', 'Ruby')
    assert_equal('Raul', student_profile.s_name)
  end

  def test_student_cohort
    student_profile = Student.new('Raul', 'E27', 'Ruby')
    assert_equal('E27', student_profile.cohort)
  end


  def test_set_student_name
    student_profile = Student.new('Raul', 'E27', 'Ruby')
    student_profile.s_name = "Mark"
    assert_equal("Mark", student_profile.s_name)
  end

  def test_set_student_cohort
    student_profile = Student.new('Raul', 'E27', 'Ruby')
    student_profile.cohort = "E28"
    assert_equal("E28", student_profile.cohort)
  end

  def test_student_to_talk
    student_profile = Student.new('Raul', 'E27' , "Ruby")
    student_profile.student_to_talk()
    assert_equal("I can talk!", student_profile.student_to_talk)
  end

  def test_say_faavourite_language
    student_profile = Student.new('Raul', 'E27', 'Ruby')
    student_profile.say_faavourite_language()
    assert_equal("I love Ruby", student_profile.say_faavourite_language())
  end

end
