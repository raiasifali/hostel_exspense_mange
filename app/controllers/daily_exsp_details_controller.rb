class DailyExspDetailsController < ApplicationController
  before_action :set_daily_exsp_detail, only: [:show, :edit, :update, :destroy]

  # GET /daily_exsp_details
  # GET /daily_exsp_details.json
  def index
    @daily_exsp_details = DailyExspDetail.all
  end

  # GET /daily_exsp_details/1
  # GET /daily_exsp_details/1.json
  def show
  end

  # GET /daily_exsp_details/new
  def new
    @daily_exsp_detail = DailyExspDetail.new
  end

  # GET /daily_exsp_details/1/edit
  def edit
  end

  # POST /daily_exsp_details
  # POST /daily_exsp_details.json
  def create
    @daily_exsp_detail = DailyExspDetail.new(daily_exsp_detail_params)

    respond_to do |format|
      if @daily_exsp_detail.save
        format.html { redirect_to @daily_exsp_detail, notice: 'Daily exsp detail was successfully created.' }
        format.json { render :show, status: :created, location: @daily_exsp_detail }
      else
        format.html { render :new }
        format.json { render json: @daily_exsp_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /daily_exsp_details/1
  # PATCH/PUT /daily_exsp_details/1.json
  def update
    respond_to do |format|
      if @daily_exsp_detail.update(daily_exsp_detail_params)
        format.html { redirect_to @daily_exsp_detail, notice: 'Daily exsp detail was successfully updated.' }
        format.json { render :show, status: :ok, location: @daily_exsp_detail }
      else
        format.html { render :edit }
        format.json { render json: @daily_exsp_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /daily_exsp_details/1
  # DELETE /daily_exsp_details/1.json
  def destroy
    @daily_exsp_detail.destroy
    respond_to do |format|
      format.html { redirect_to daily_exsp_details_url, notice: 'Daily exsp detail was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_daily_exsp_detail
      @daily_exsp_detail = DailyExspDetail.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def daily_exsp_detail_params
      params.require(:daily_exsp_detail).permit(:user_id, :daily_exspenses_id, :amount, :is_paid)
    end
end
