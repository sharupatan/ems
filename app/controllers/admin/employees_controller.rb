require 'pagy'
require 'ransack'

class Admin::EmployeesController < AdminController
  include EmployeesHelper
  include Pagy::Backend
  def index
    @q = Employee.ransack(params[:q])
    @employees = @q.result(distinct: true)

    @pagy, @employees = pagy(@employees, items: 5)
  end

  def self.ransackable_attributes(auth_object = nil)
    ["address", "contact_number", "created_at", "email", "gender", "id", "name", "position_id", "updated_at"]
  end

  def new
    @employee = Employee.new
  end

  def create
    if html_or_json_format(request)
      @employee = Employee.new(params.require(:employee).permit!)
      if @employee.save
        redirect_to admin_employees_path
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
      redirect_to admin_employees_path
    else
      render :edit
    end
  end

  def destroy
    id = params.require(:id)
    Employee.find(id).destroy
    redirect_to admin_employees_path
  end
end