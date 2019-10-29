class InterpreterDetailsController < ApplicationController
  before_action :set_interpreter_detail, only: [:show, :edit, :update, :destroy]

  # GET /interpreter_details
  # GET /interpreter_details.json
  def index
    @interpreter_details = InterpreterDetail.all
  end

  # GET /interpreter_details/1
  # GET /interpreter_details/1.json
  def show
  end

  # GET /interpreter_details/new
  def new
    # @interpreter_detail = InterpreterDetail.new
    # @interpreter_detail.address.build(Address.new)
  end

  # GET /interpreter_details/1/edit
  def edit
  end

  # POST /interpreter_details
  # POST /interpreter_details.json
  def create
    @interpreter_detail = InterpreterDetail.new(interpreter_detail_params)
    # @interpreter_detail.interpreter_id = current_interpreter.id
    respond_to do |format|
      if @interpreter_detail.save
        format.html { redirect_to @interpreter_detail, notice: 'Interpreter detail was successfully created.' }
        format.json { render :show, status: :created, location: @interpreter_detail }
      else
        format.html { render :new }
        format.json { render json: @interpreter_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /interpreter_details/1
  # PATCH/PUT /interpreter_details/1.json
  def update
    respond_to do |format|
      if @interpreter_detail.update(interpreter_detail_params)
        format.html { redirect_to @interpreter_detail, notice: 'Interpreter detail was successfully updated.' }
        format.json { render :show, status: :ok, location: @interpreter_detail }
      else
        format.html { render :edit }
        format.json { render json: @interpreter_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /interpreter_details/1
  # DELETE /interpreter_details/1.json
  def destroy
    @interpreter_detail.destroy
    respond_to do |format|
      format.html { redirect_to interpreter_details_url, notice: 'Interpreter detail was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_interpreter_detail
      @interpreter_detail = InterpreterDetail.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def interpreter_detail_params
      params.require(:interpreter_detail).permit(:interpreter_id, :first_name, :last_name, :abn, :mobile_no, :sex, :payment_rate, :rating_score)
    end
end
