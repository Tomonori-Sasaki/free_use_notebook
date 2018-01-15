class JobHuntingsController < ApplicationController
  before_action :set_job_hunting, only: [:show, :edit, :update, :destroy]

  # GET /job_huntings
  # GET /job_huntings.json
  def index
    @job_huntings = JobHunting.all
  end

  # GET /job_huntings/1
  # GET /job_huntings/1.json
  def show
  end

  # GET /job_huntings/new
  def new
    @job_hunting = JobHunting.new
  end

  # GET /job_huntings/1/edit
  def edit
  end

  # POST /job_huntings
  # POST /job_huntings.json
  def create
    @job_hunting = JobHunting.new(job_hunting_params)

    respond_to do |format|
      if @job_hunting.save
        format.html { redirect_to @job_hunting, notice: 'Job hunting was successfully created.' }
        format.json { render :show, status: :created, location: @job_hunting }
      else
        format.html { render :new }
        format.json { render json: @job_hunting.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /job_huntings/1
  # PATCH/PUT /job_huntings/1.json
  def update
    respond_to do |format|
      if @job_hunting.update(job_hunting_params)
        format.html { redirect_to @job_hunting, notice: 'Job hunting was successfully updated.' }
        format.json { render :show, status: :ok, location: @job_hunting }
      else
        format.html { render :edit }
        format.json { render json: @job_hunting.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /job_huntings/1
  # DELETE /job_huntings/1.json
  def destroy
    @job_hunting.destroy
    respond_to do |format|
      format.html { redirect_to job_huntings_url, notice: 'Job hunting was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_job_hunting
      @job_hunting = JobHunting.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def job_hunting_params
      params.require(:job_hunting).permit(:rank, :type, :name, :content)
    end
end
