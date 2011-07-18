class EmployeesController < ApplicationController

  def index
    @employees = Employee.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @employees }
    end
  end

  def show
    @employee = Employee.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
     
    end
  end

  def new
    @employee = Employee.new

    respond_to do |format|
      format.html # new.html.erb
      
    end
  end


  def edit
    @employee = Employee.find(params[:id])
  end

  def create
    @employee = Employee.new(params[:employee])

    respond_to do |format|
      if @employee.save
        format.html { redirect_to(@employee, :notice => 'employee was successfully created.') }
        
      else
        format.html { render :action => "new" }
        
      end
    end
  end

  def update
    @employee = Employee.find(params[:id])

    respond_to do |format|
      if @employee.update_attributes(params[:employee])
        format.html { redirect_to(@employee, :notice => 'employee was successfully updated.') }
       
      else
        format.html { render :action => "edit" }
        
      end
    end
  end

  def destroy
    @employee = Employee.find(params[:id])
    @employee.destroy

    respond_to do |format|
      format.html { redirect_to(employees_url) }
      
    end
  end

end
