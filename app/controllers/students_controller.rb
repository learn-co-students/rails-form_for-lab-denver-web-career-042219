class StudentsController < ApplicationController
  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  def new
    @student = Student.new
  end

  def create
    @student = Student.create({
      first_name: params[:first_name],
      last_name: params[:last_name]
      })
  end

  def edit
    @student = Student.find(params[:id])
  end

  def update
    @student = Student.find(params[:id])

    if(@student.update({
      first_name: params[:first_name],
      last_name: params[:last_name]
      }))
      redirect_to @student
    else
      render 'edit'
    end
  end
end
