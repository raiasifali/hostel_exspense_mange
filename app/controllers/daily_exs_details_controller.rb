class DailyExsDetailsController < ApplicationController
  before_action :authenticate_hostel!
  
  before_action :set_daily_exs_detail, only: [:show, :edit, :update, :destroy]

  # GET /daily_exs_details
  # GET /daily_exs_details.json
  def index
    @daily_exs_details = DailyExsDetail.all
    @user=User.all
  end

  # GET /daily_exs_details/1
  # GET /daily_exs_details/1.json
  def show
  end

  # GET /daily_exs_details/new
  def new
    @user=User.all
    @daily_exs=DailyExspense.all
    @daily_exs_detail = DailyExsDetail.new
  end

  # GET /daily_exs_details/1/edit
  def edit
  end

  # POST /daily_exs_details
  # POST /daily_exs_details.json
  def create
    @daily_exs_detail = DailyExsDetail.new(daily_exs_detail_params)

    respond_to do |format|
      if @daily_exs_detail.save
        format.html { redirect_to @daily_exs_detail, notice: 'Daily exs detail was successfully created.' }
        format.json { render :show, status: :created, location: @daily_exs_detail }
      else
        format.html { render :new }
        format.json { render json: @daily_exs_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /daily_exs_details/1
  # PATCH/PUT /daily_exs_details/1.json
  def update
    respond_to do |format|
      if @daily_exs_detail.update(daily_exs_detail_params)
        format.html { redirect_to @daily_exs_detail, notice: 'Daily exs detail was successfully updated.' }
        format.json { render :show, status: :ok, location: @daily_exs_detail }
      else
        format.html { render :edit }
        format.json { render json: @daily_exs_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /daily_exs_details/1
  # DELETE /daily_exs_details/1.json
  def destroy
    @daily_exs_detail.destroy
    respond_to do |format|
      format.html { redirect_to daily_exs_details_url, notice: 'Daily exs detail was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_daily_exs_detail
      @daily_exs_detail = DailyExsDetail.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def daily_exs_detail_params
      params.require(:daily_exs_detail).permit(:user_id, :daily_exspense_id,:amount)
    end
end
