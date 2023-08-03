class EmployeesController < ApplicationController
  layout 'admin'
  include EmployeesHelper
  def index
    @employees = Employee.all
  end

  def new
    @employee = Employee.new
  end

  def create
    if html_or_json_format(request)
      @employee = Employee.new(params.require(:employee).permit!)
      if @employee.save
        redirect_to_home
      else
        render :new, status: :unprocessable_entity
      end
    else
      render {'un-accaptable format!'}
    end
  end

  def edit
    @employee = Employee.find(params.require(:id))
  end

  def show
    @employee = Employee.find(params.require(:id))
  end

  def update
    @employee = Employee.find(params.require(:id))
    if @employee.update(params.require(:employee).permit!)
      redirect_to_home
    else
      render :edit
    end
  end

  def destroy
    id = params.require(:id)
    Employee.find(id).destroy
    redirect_to_home
  end
end
