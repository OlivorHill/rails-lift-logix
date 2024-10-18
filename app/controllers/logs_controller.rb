class LogsController < ApplicationController
  def index
    @workout = Workout.find(params[:workout_id])
    @split = @workout.split
    @split_exercises = @split.split_exercises
    @logs = @workout.logs
    @log = Log.new
  end

  def new
    @split = Split.find(params[:split_id])
    @programme = @split.programme
    @splits = @programme.splits
    @log = Log.new
  end

  def create
    @split_exercise = SplitExercise.find(params[:split_exercise_id])
    @workout = Workout.find(params[:workout_id])
    @log = Log.new(log_params)
    @log.split_exercise = @split_exercise
    @log.workout = @workout
    @log.save!
    redirect_to workout_logs_path(@workout)
    # if @log.save
    #   respond_to do |format|
    #     format.turbo_stream do
    #       render turbo_stream: turbo_stream.append(:form, partial: "logs/form",
    #         locals: { split_exercise: @split_exercise, log: @log })
    #     end
    #     format.html { redirect_to new_split_log_path(@split_exercise.split) }
    #   end
    # else
    #   render :new, status: :unprocessable_entity
    # end
  end

  private

  def log_params
    params.require(:log).permit(:weight, :repetitions)
  end
end
