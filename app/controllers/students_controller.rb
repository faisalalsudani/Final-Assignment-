class StudentsController < ApplicationController

  def index
    @students = Student.all
  end

  def show
    batch = Batch.find(params[:batch_id])
    @student = artist.students.find(params[:id])
  end

  def new
    batch = Batch.find(params[:batch_id])
    @student = artist.students.build
    @student = Student.new
  end

  def create
    batch = Batch.find(params[:batch_id])

    @student = artist.students.create(student_params)

      if @student.save
         redirect_to @student.batch
      else
        render :new
      end

  end

  def edit
    batch = Batch.find(params[:batch_id])
    @student = artist.students.find(params[:id])
  end

  def update
    batch = Batch.find(params[:batch_id])

    @student = artist.students.find(params[:id])

    if @student.update_attributes(student_params)
      redirect_to @student.batch, notice: "Student updated"
    else
      render :edit
    end

  end

  def destroy
    @student = Batch.find(params[:id])

    @student.destroy
    redirect_to @student.batch
  end



  private
  def student_params
    params.require(:student).permit(:first_name, :last_name, :photo, :label, :batch_id)
  end

end
