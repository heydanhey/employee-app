class EmployeesController < ApplicationController

  def index
    @employees = Employee.all

    if params[:sort]
      @employees = Employee.order(:last_name)
    end

    if params[:group]
      @employees = Group.find_by(name: params[:group]).employees
    end

  end

  def show
      @employee = Employee.find(params[:id])
      @groups = @contact.group
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
                              bio: params[:bio],
                              user_id: current_user.id})
    redirect_to "/"
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
                              longitude: coordinates[1],
                              user_id: current_user.id})

    redirect_to "/"    
  end

  def destroy
    @employee = Employee.find(params[:id])
    @employee.destroy

    redirect_to '/'
  end

  def contact
    
  end

   def submit_form
    @first_name = params[:first_name]
    @last_name = params[:last_name]
  end
end
