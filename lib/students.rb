class Students
  def all
    [
        {name: "Bob", age: 10},
        {name: "Sue", age: 10},
        {name: "Greg", age: 15},
        {name: "Amanda", age: 8},
        {name: "Steve", age: 22},
    ]
  end

  def average_age
    #refactor using inject
    sum = 0
    all.each{ |student| sum += student[:age] }
    sum/all.count
  end

  def name_string
    all.map{ |student| student[:name] }.join(" ")
  end

  def find_first_older_than(age)
    all.find{ |student| student[:age] > age }
  end

  def any_older_than?(age)
    all.find{ |student| student[:age] > age } ? true : false
  end

  def find_student(given_student)
    all.find{ |student| student == given_student }
  end

  def student_present?(given_student)
    all.find{ |student| student == given_student } ? true : false
  end

  def grouped_by_age
    output = {}
    all.group_by{ |student| student[:age] }.each{ |age, student| output[age] = student.map{ |info| info[:name] }}
    output
  end

end