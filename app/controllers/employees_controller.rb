class EmployeesController < ApplicationController

  def index
    @employees = Employee.all

    if params[:sort]
      @employees = Employee.order(:last_name)
    end

  end

  def show
    @employee = Employee.find(params[:id])
  end

  def new
  end

  def create
    @employee = Employee.create({first_name: params[:first_name],
                              middle_name: params[:middle_name],
                              last_name: params[:last_name],
                              email: params[:email],
                              job_title: params[:job_title],
                              salary: params[:salary],
                              phone_number: params[:phone_number],
                              gender: params[:gender],
                              bio: params[:bio]})
  end

  def edit
    @employee = Employee.find(params[:id])
  end

  def update
    @employee = Employee.find(params[:id])

    @address = params[:address]

    if @address != nil
      coordinates = Geocoder.coordinates(@address)
    else
      @address = [0,0]
    end

    @employee.update({first_name: params[:first_name],
                              middle_name: params[:middle_name],
                              last_name: params[:last_name],
                              email: params[:email],
                              job_title: params[:job_title],
                              salary: params[:salary],
                              phone_number: params[:phone_number],
                              gender: params[:gender],
                              bio: params[:bio],
                              latitude: coordinates[0],
                              longitude: coordinates[1]})    
  end

  def destroy
    @employee = Employee.find(params[:id])
    @employee.destroy
  end

  def contact
    
  end

   def submit_form
    @first_name = params[:first_name]
    @last_name = params[:last_name]
  end
end
