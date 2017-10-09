class Employee

  attr_reader :name, :title, :boss, :salary

  def initialize(name, title, salary = 5, boss = "joe")
    @name = name
    @title = title
    @salary = salary
    @boss = boss
  end

  def bonus(multiplier)
    salary * multiplier
  end
end

class Manager < Employee

  attr_accessor :employees

  def initialize(name, title, salary, boss, employees = [])
    super(name, title, salary, boss)
    @employees = employees
  end

  def add_employee(*emp)
    emp.each { |e| employees << e }
  end

  def bonus(multiplier)

    salary_sum = employee_salary_sum

    salary_sum * multiplier
  end



  def employee_salary_sum

    current_sum = employees.map { |employee| employee.salary }
      .inject(0) { |sum, n| sum + n }

      self.employees.each do |emp|
        next unless emp.is_a? Manager
        current_sum += emp.employee_salary_sum
      end

      current_sum
  end
end
