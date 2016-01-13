class EmployeesController < ApplicationController

  def show_one
    @employee = Employee.first
  end

  def show_all
    @employees = Employee.all
  end

end
