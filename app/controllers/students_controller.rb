class StudentsController < ApplicationController

  def index
   if params.key?(:name)
    render json: Student.where(last_name: params[:name].capitalize).or(Student.where(first_name: params[:name].capitalize))
   else
    render json: Student.all
   end
  end

  def show
    render json: Student.find(params[:id])
  end
end
