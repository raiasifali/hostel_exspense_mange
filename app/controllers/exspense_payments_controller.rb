class ExspensePaymentsController < ApplicationController
  before_action :set_exspense_payment, only: [:show, :edit, :update, :destroy]

  # GET /exspense_payments
  # GET /exspense_payments.json
  def index
    @exspense_payments = ExspensePayment.all
  end

  # GET /exspense_payments/1
  # GET /exspense_payments/1.json
  def show
  end

  # GET /exspense_payments/new
  def new
    @exspense_payment = ExspensePayment.new
  end

  # GET /exspense_payments/1/edit
  def edit
  end

  # POST /exspense_payments
  # POST /exspense_payments.json
  def create
    @exspense_payment = ExspensePayment.new(exspense_payment_params)

    respond_to do |format|
      if @exspense_payment.save
        format.html { redirect_to @exspense_payment, notice: 'Exspense payment was successfully created.' }
        format.json { render :show, status: :created, location: @exspense_payment }
      else
        format.html { render :new }
        format.json { render json: @exspense_payment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /exspense_payments/1
  # PATCH/PUT /exspense_payments/1.json
  def update
    respond_to do |format|
      if @exspense_payment.update(exspense_payment_params)
        format.html { redirect_to @exspense_payment, notice: 'Exspense payment was successfully updated.' }
        format.json { render :show, status: :ok, location: @exspense_payment }
      else
        format.html { render :edit }
        format.json { render json: @exspense_payment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /exspense_payments/1
  # DELETE /exspense_payments/1.json
  def destroy
    @exspense_payment.destroy
    respond_to do |format|
      format.html { redirect_to exspense_payments_url, notice: 'Exspense payment was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_exspense_payment
      @exspense_payment = ExspensePayment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def exspense_payment_params
      params.require(:exspense_payment).permit(:user_id, :paid_amount)
    end
end
