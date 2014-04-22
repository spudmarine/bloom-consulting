class Admin::EmployeesController < ApplicationController
  before_action :authorize

def new
    @employee = Employee.new
  end

  def create
    @employee = Employee.new(params[:employee])

    respond_to do |format|
      if @employee.save
        format.html { redirect_to admin_employees_url,
          notice: 'Blog Employee successfully created' }
        format.json { render json: @employee,
          status: :created,
          location: [:admin,@employee] }
      else
        format.html { render action: "new" }
        format.json { render json: @employee.errors,
          status: :unprocessable_entity }
      end
    end
  end

  def index
    @employees = Employee.all
  end

  def show
    @employee = Employee.find(params[:id])
  end

  def edit
    @employee = Employee.find(params[:id])
  end

  def update
    @employee = Employee.find(params[:id])
    if @employee.update_attributes(params[:employee])
      redirect_to admin_employees_url, notice: "employee has been updated."
    else
      render "edit"
    end
  end

  def destroy
    Employee.find(params[:id]).destroy
    redirect_to admin_employees_url
  end
end
