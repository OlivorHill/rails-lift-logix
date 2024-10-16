class WorkoutsController < ApplicationController
  def new
    @split = Split.find(params[:split_id])
    @workout = Workout.new
  end

  def create
    @split = Split.find(params[:split_id])
    @workout = Workout.new(workout_params)
    @workout.split = @split
    if @workout.save
      redirect_to @workout, notice: "Workout program created successfully!"
    else
      render :new
    end
  end

  private

  def workout_params
    params.require(:workout).permit(:date)
  end
end
