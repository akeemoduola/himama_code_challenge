class TimelogsController < ApplicationController
  before_action :set_timelog, only: [:show, :edit, :update, :destroy]

  # GET /timelogs
  # GET /timelogs.json
  def index
    if current_user.admin?
      @timelogs = Timelog.all
    else
      @timelogs = current_user.timelogs
    end
  end

  # GET /timelogs/1
  # GET /timelogs/1.json
  def show
  end

  # GET /timelogs/new
  def new
    @timelog = Timelog.new
  end

  # GET /timelogs/1/edit
  def edit
  end

  # POST /timelogs
  # POST /timelogs.json
  def create
    @timelog = current_user.timelogs.create!(timelog_params)

    last_timelog = current_user.timelogs.last

    @clock_in_button_disabled = last_timelog.log_type == 'clock_in' ? true : false
    @clock_out_button_disabled = last_timelog.log_type == 'clock_out' ? true : false

    respond_to do |format|
      format.js 
      format.html { redirect_to @timelog, notice: 'Timelog was successfully created.' }
      format.json { render :show, status: :created, location: @timelog }
    end
  end

  # PATCH/PUT /timelogs/1
  # PATCH/PUT /timelogs/1.json
  def update
    respond_to do |format|
      if @timelog.update(timelog_params)
        format.html { redirect_to @timelog, notice: 'Timelog was successfully updated.' }
        format.json { render :show, status: :ok, location: @timelog }
      else
        format.html { render :edit }
        format.json { render json: @timelog.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /timelogs/1
  # DELETE /timelogs/1.json
  def destroy
    @timelog.destroy
    respond_to do |format|
      format.html { redirect_to timelogs_url, notice: 'Timelog was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_timelog
      @timelog = Timelog.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def timelog_params
      params.require(:timelog).permit(:log_at, :log_type, :user_id)
    end
end
