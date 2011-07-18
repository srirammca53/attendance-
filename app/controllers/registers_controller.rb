class RegistersController < ApplicationController
def create
    @employee = Employee.find(params[:employee_id])
    @register = @employee.registers.create(params[:register]) 
    
    redirect_to employee_path(@employee)
  end
end
