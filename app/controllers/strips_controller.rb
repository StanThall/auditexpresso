 class StripsController < ApplicationController
  before_action :set_strip, only: [:show, :edit, :update, :destroy]
  before_action :disable_pub, only: [:edit]
  http_basic_authenticate_with name: "pacetrader", password: "LAUre1986", except: [:index, :show, :collect]
  # GET /strips
  # GET /strips.json
  def index
    @pub = Pub.find(rand(1..6))
    @strips = Strip.order('created_at DESC')
    Log.new(action_id: 1, page: request.original_url, from: request.referer, session_id: session.id, agent: request.user_agent).save
  end

  # GET /strips/1
  # GET /strips/1.json
  def show
    @pub = Pub.find(rand(1..6))
    @strips=Strip.order('created_at DESC')
    Log.new(action_id: 1, page: request.original_url, from: request.referer, session_id: session.id, agent: request.user_agent).save
  end

  # GET /strips/new
  def new
    @strip = Strip.new
  end

  # GET /strips/1/edit
  def edit
  end

  # POST /strips
  # POST /strips.json
  def create
    @strip = Strip.new(strip_params)
    @strip.slug = ActiveSupport::Inflector.parameterize(@strip.catch)
    respond_to do |format|
      if @strip.save
        format.html { redirect_to @strip, notice: 'Strip was successfully created.' }
        format.json { render :show, status: :created, location: @strip }
      else
        format.html { render :new }
        format.json { render json: @strip.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /strips/1
  # PATCH/PUT /strips/1.json
  def update
    respond_to do |format|
      if @strip.update(strip_params)
        @strip.slug = ActiveSupport::Inflector.parameterize(@strip.catch)
        format.html { redirect_to @strip, notice: 'Strip was successfully updated.' }
        format.json { render :show, status: :ok, location: @strip }
      else
        format.html { render :edit }
        format.json { render json: @strip.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /strips/1
  # DELETE /strips/1.json
  def destroy
    @strip.destroy
    respond_to do |format|
      format.html { redirect_to strips_url, notice: 'Strip was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  # Post /strips/collect
  def collect
    content = params[:content]
    IndiscretionMailer.indiscretion_collect(content).deliver_now
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_strip
      @strip = Strip.find_by(slug: params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def strip_params
      params.require(:strip).permit(:title, :catch, :content)
    end

    def disable_pub
      @disable_pub = true;
    end
end
