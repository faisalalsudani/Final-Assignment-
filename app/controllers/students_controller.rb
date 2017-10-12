class StudentsController < ApplicationController
  def index
    @students = Student.all
  end

  def show
    batch = Batch.find(params[:batch_id])
    @student = batch.students.find(params[:id])
  end

  def new
    batch = Batch.find(params[:batch_id])
    @student = batch.students.build
    @student = Student.new
  end

  def create
    batch = Batch.find(params[:batch_id])

    @student = batch.students.create(student_params)

      if @student.save
         redirect_to @batch, notice: "Evaluation have been add!"
      else
        render :new
      end

  end

  def edit
    batch = Batch.find(params[:batch_id])
    @student = batch.students.find(params[:id])
  end

  def update
    puts "#" * 50
    @student = Student.find(params[:id])

    if @student.update_attributes(student_params)
      redirect_to @student.batch, notice: "Evaluation updated"
    else
      render :edit
    end

  end

  def destroy
    @student = Student.find(params[:id])

    @student.destroy
    redirect_to @student.batch
  end



  private
  def student_params
    params.require(:student).permit(:first_name, :last_name, :photo, :batch_id)
  end
end
