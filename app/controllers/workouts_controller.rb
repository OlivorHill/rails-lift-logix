class WorkoutsController < ApplicationController
  def index
    @programme = Programme.find(params[:programme_id])
    @splits = @programme.splits
    @workout = Workout.new
  end

  def create
    @workout = Workout.new
    @workout.split = Split.find(params[:split_id])
    @workout.date = Date.today
    @workout.done = false
    if @workout.save
      redirect_to workout_logs_path(@workout)
    else
      render 'index', status: :unprocessable_entity
    end
  end
end
