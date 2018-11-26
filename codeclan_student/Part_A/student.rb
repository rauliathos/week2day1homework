class Student

   attr_accessor :s_name, :cohort, :pro


  def initialize(s_name, cohort, pro)
    @s_name = s_name
    @cohort = cohort
    @pro = pro

  end

  def student_to_talk()
    return "I can talk!"
  end

  def say_faavourite_language
    return "I love #{pro}"

  end

end
