class ThingsController < ApplicationController
  before_action :set_thing, only: [:show, :edit, :update, :destroy]

  # GET /things
  def index
    @things = Thing.all
  end

  # GET /things/1
  def show
    respond_to do |format|
      format.js { render action: 'update' }
    end
  end

  # GET /things/new
  def new
    @thing = Thing.new
  end

  # GET /things/1/edit
  def edit
  end

  # POST /things
  def create
    @thing = Thing.new(thing_params)

    respond_to do |format|
      if @thing.save
        format.js {}
      else
        format.js { render action: 'new' }
      end
    end
  end

  # PATCH/PUT /things/1
  def update
    respond_to do |format|
      if @thing.update(thing_params)
        format.js { }
      else
        format.js { }
      end
    end
  end

  # DELETE /things/1
  def destroy
    @thing.destroy
    respond_to do |format|
      format.js {}
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_thing
      @thing = Thing.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def thing_params
      params.require(:thing).permit(:foo, :bar)
    end
end
