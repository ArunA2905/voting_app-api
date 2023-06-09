class UserStatsController < ApplicationController
  before_action :set_user_stat, only: %i[ show update destroy ]

  # GET /user_stats
  def index
    @user_stats = UserStat.all

    render json: @user_stats
  end

  # GET /user_stats/1
  def show
    render json: @user_stat
  end

  # POST /user_stats
  def create
    @user_stat = UserStat.new(user_stat_params)
    #pry-byebug

    if @user_stat.save
      render json: @user_stat, status: :created, location: @user_stat
    else
      render json: @user_stat.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /user_stats/1
  def update
    if @user_stat.update(user_stat_params)
      render json: @user_stat
    else
      render json: @user_stat.errors, status: :unprocessable_entity
    end
  end

  # DELETE /user_stats/1
  def destroy
    @user_stat.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_stat
      @user_stat = UserStat.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def user_stat_params
      params.require(:user_stat).permit(:userId, :voteStatus, :lastVote)
    end
end
