class CollegesController < ApplicationController
  def index
      @colleges = College.all	
  end

  def new
  	@college = College.new
  end


  def edit
  	@college = College.find(params[:id])
  end

  def create
  	@college =College.new(college_params)

  	if @college.save
  		p @college
  		redirect_to @college
  	else
  		render 'new'
  	end
  end

  def update 
    @college = College.find(params[:id])
    if @college.update(college_params)
     redirect_to @college
   else
     render 'edit'
   end
 end

 def destroy
   @college =College.find(params[:id])
   @college.destroy
   redirect_to colleges_path
 end

 def show
   @college = College.find(params[:id])
 end

 def stud
  @college = College.find(params[:id])
end

private
def college_params
 params.require(:college).permit(:name, :department)
end


end
