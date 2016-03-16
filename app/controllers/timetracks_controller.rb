class TimetracksController < ApplicationController
  before_action :set_timetrack, only: [:show, :edit, :update, :destroy]

  # GET /timetracks
  # GET /timetracks.json
  def index
    @timetracks = Timetrack.all
  end

  # GET /timetracks/1
  # GET /timetracks/1.json
  def show
  end

  # GET /timetracks/new
  def new
    @timetrack = Timetrack.new
  end

  # GET /timetracks/1/edit
  def edit
  end

  # POST /timetracks
  # POST /timetracks.json
  def create
    @timetrack = Timetrack.new(timetrack_params)

    respond_to do |format|
      if @timetrack.save
        format.html { redirect_to @timetrack, notice: 'Timetrack was successfully created.' }
        format.json { render :show, status: :created, location: @timetrack }
      else
        format.html { render :new }
        format.json { render json: @timetrack.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /timetracks/1
  # PATCH/PUT /timetracks/1.json
  def update
    respond_to do |format|
      if @timetrack.update(timetrack_params)
        format.html { redirect_to @timetrack, notice: 'Timetrack was successfully updated.' }
        format.json { render :show, status: :ok, location: @timetrack }
      else
        format.html { render :edit }
        format.json { render json: @timetrack.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /timetracks/1
  # DELETE /timetracks/1.json
  def destroy
    @timetrack.destroy
    respond_to do |format|
      format.html { redirect_to timetracks_url, notice: 'Timetrack was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_timetrack
      @timetrack = Timetrack.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def timetrack_params
      params.require(:timetrack).permit(:date, :user_id, :project_id, :total_time)
    end
end
