class RankHistoriesController < ApplicationController
  before_action :set_rank_history, only: [:show, :edit, :update, :destroy]

  # GET /rank_histories
  # GET /rank_histories.json
  def index
    @rank_histories = RankHistory.all
  end

  # GET /rank_histories/1
  # GET /rank_histories/1.json
  def show
  end

  # GET /rank_histories/new
  def new
    @rank_history = RankHistory.new
  end

  # GET /rank_histories/1/edit
  def edit
  end

  # POST /rank_histories
  # POST /rank_histories.json
  def create
    @rank_history = RankHistory.new(rank_history_params)

    respond_to do |format|
      if @rank_history.save
        format.html { redirect_to @rank_history, notice: 'Rank history was successfully created.' }
        format.json { render action: 'show', status: :created, location: @rank_history }
      else
        format.html { render action: 'new' }
        format.json { render json: @rank_history.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /rank_histories/1
  # PATCH/PUT /rank_histories/1.json
  def update
    respond_to do |format|
      if @rank_history.update(rank_history_params)
        format.html { redirect_to @rank_history, notice: 'Rank history was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @rank_history.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rank_histories/1
  # DELETE /rank_histories/1.json
  def destroy
    @rank_history.destroy
    respond_to do |format|
      format.html { redirect_to rank_histories_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_rank_history
      @rank_history = RankHistory.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def rank_history_params
      params.require(:rank_history).permit(:rank, :date, :number)
    end
end
