class GamebooksController < ApplicationController
  before_action :set_gamebook, only: [:show, :edit, :update, :destroy]

  # GET /gamebooks
  # GET /gamebooks.json
  def index
    @gamebooks = Gamebook.all
  end

  # GET /gamebooks/1
  # GET /gamebooks/1.json
  def show
  end

  # GET /gamebooks/new
  def new
    @gamebook = Gamebook.new
  end

  # GET /gamebooks/1/edit
  def edit
  end

  # POST /gamebooks
  # POST /gamebooks.json
  def create
    @gamebook = Gamebook.new(gamebook_params)

    respond_to do |format|
      if @gamebook.save
        format.html { redirect_to @gamebook, notice: 'Gamebook was successfully created.' }
        format.json { render :show, status: :created, location: @gamebook }
      else
        format.html { render :new }
        format.json { render json: @gamebook.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /gamebooks/1
  # PATCH/PUT /gamebooks/1.json
  def update
    respond_to do |format|
      if @gamebook.update(gamebook_params)
        format.html { redirect_to @gamebook, notice: 'Gamebook was successfully updated.' }
        format.json { render :show, status: :ok, location: @gamebook }
      else
        format.html { render :edit }
        format.json { render json: @gamebook.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /gamebooks/1
  # DELETE /gamebooks/1.json
  def destroy
    @gamebook.destroy
    respond_to do |format|
      format.html { redirect_to gamebooks_url, notice: 'Gamebook was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_gamebook
      @gamebook = Gamebook.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def gamebook_params
      params.require(:gamebook).permit(:isbn, :title, :price)
    end
end
