class SchoolClassesController < ApplicationController
  def index
    @schoolclasses = SchoolClass.all
  end

  def show
    @schoolclass = SchoolClass.find(params[:id])
  end

  def new
    @schoolclass = SchoolClass.new
  end

  def create
    @schoolclass = SchoolClass.create({
      title: params[:title],
      room_number: params[:room_number]
    })
      redirect_to schoolclass_path(@schoolclass)
  end

  def edit
    @schoolclass = SchoolClass.find(params[:id])
  end

  def update
    @schoolclass = SchoolClass.find(params[:id])

    if (@schoolclass.update({
          title: params[:title],
          room_number: params[:room_number]
          }))
          redirect_to @schoolclass
    else
          render 'edit'
    end
  end
end
