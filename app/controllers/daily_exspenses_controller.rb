class DailyExspensesController < ApplicationController
 before_action :authenticate_hostel!
  before_action :set_daily_exspense, only: [:show, :edit, :update, :destroy]

  # GET /daily_exspenses
  # GET /daily_exspenses.json
  def index
    @daily_exspenses = DailyExspense.all
  end

  # GET /daily_exspenses/1
  # GET /daily_exspenses/1.json
  def show
  end

  # GET /daily_exspenses/new
  def new
    @daily_exspense = DailyExspense.new
  end

  # GET /daily_exspenses/1/edit
  def edit
  end

  # POST /daily_exspenses
  # POST /daily_exspenses.json
  def create
    @daily_exspense = DailyExspense.new(daily_exspense_params)

    respond_to do |format|
      if @daily_exspense.save
        format.html { redirect_to @daily_exspense, notice: 'Daily exspense was successfully created.' }
        format.json { render :show, status: :created, location: @daily_exspense }
      else
        format.html { render :new }
        format.json { render json: @daily_exspense.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /daily_exspenses/1
  # PATCH/PUT /daily_exspenses/1.json
  def update
    respond_to do |format|
      if @daily_exspense.update(daily_exspense_params)
        format.html { redirect_to @daily_exspense, notice: 'Daily exspense was successfully updated.' }
        format.json { render :show, status: :ok, location: @daily_exspense }
      else
        format.html { render :edit }
        format.json { render json: @daily_exspense.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /daily_exspenses/1
  # DELETE /daily_exspenses/1.json
  def destroy
    @daily_exspense.destroy
    respond_to do |format|
      format.html { redirect_to daily_exspenses_url, notice: 'Daily exspense was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_daily_exspense
      @daily_exspense = DailyExspense.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def daily_exspense_params
      params.require(:daily_exspense).permit(:description, :totalamount, :time, :creaded_by, :status)
    end
end
