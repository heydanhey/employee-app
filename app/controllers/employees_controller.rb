class EmployeesController < ApplicationController

  def show_one
    @employee = Employee.first
  end

  def show_all
    @employees = Employee.all
  end

  def contact
    
  end

   def submit_form
    @first_name = params[:first_name]
    @last_name = params[:last_name]
  end
end
