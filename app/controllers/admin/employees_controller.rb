class Admin::EmployeesController < ApplicationController
  before_action :authorize

  layout 'admin'

def new
    @employee = Employee.new
  end

  def create
    @employee = Employee.new(employee_params)

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
    if @employee.update_attributes(employee_params)
      redirect_to admin_employees_url, notice: "employee has been updated."
    else
      render "edit"
    end
  end

  def destroy
    Employee.find(params[:id]).destroy
    redirect_to admin_employees_url
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_employee
      @employee = Employee.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def employee_params
      params.require(:employee).permit(:employee_image, :name, :title, :bio_intro, :bio, :linkedin, :twitter, :sort)
    end
  
end
