class IncomeItemsController < ApplicationController
  before_action :set_income_item, only: [:show, :edit, :update, :destroy]

  # GET /income_items
  # GET /income_items.json
  def index
    @income_items = IncomeItem.all
  end

  # GET /income_items/1
  # GET /income_items/1.json
  def show
  end

  # GET /income_items/new
  def new
    @income_item = IncomeItem.new
  end

  # GET /income_items/1/edit
  def edit
  end

  # POST /income_items
  # POST /income_items.json
  def create
    @income_item = IncomeItem.new(income_item_params)

    respond_to do |format|
      if @income_item.save
        format.html { redirect_to @income_item, notice: 'Income item was successfully created.' }
        format.json { render :show, status: :created, location: @income_item }
      else
        format.html { render :new }
        format.json { render json: @income_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /income_items/1
  # PATCH/PUT /income_items/1.json
  def update
    respond_to do |format|
      if @income_item.update(income_item_params)
        format.html { redirect_to @income_item, notice: 'Income item was successfully updated.' }
        format.json { render :show, status: :ok, location: @income_item }
      else
        format.html { render :edit }
        format.json { render json: @income_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /income_items/1
  # DELETE /income_items/1.json
  def destroy
    @income_item.destroy
    respond_to do |format|
      format.html { redirect_to income_items_url, notice: 'Income item was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_income_item
      @income_item = IncomeItem.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def income_item_params
      params.require(:income_item).permit(:income_category_id, :money, :date)
    end
end
