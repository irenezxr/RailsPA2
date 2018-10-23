class StaticPagesController < ApplicationController
  def search
  end
  
  def results
  	@subject = params[:subject][:id]=='' ? nil : Subject.find(params[:subject][:id])
  	coursename = params[:q]
  	if @subject == nil
  		#@courses = Course.all
  		@courses = Course.where("name LIKE ?", "%#{coursename}%")
  		
  		
  	else
  		#@courses = @subject.courses
  		@courses = @subject.courses.where("name LIKE ?", "%#{coursename}%")
  	end
  end
end
