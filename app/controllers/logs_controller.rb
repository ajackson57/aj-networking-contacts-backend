class LogsController < ProtectedController
  before_action :set_log, only: [:show, :update, :destroy]

  # GET /logs
  def index
    @logs = current_user.logs
    # @logs = Log.all

    render json: @logs
  end

  # GET /logs/1
  def show
    render json: @log
  end

  # POST /logs
  def create
    # @log = Log.new(log_params)
    @log = current_user.logs.build(log_params)

    if @log.save
      render json: @log, status: :created, location: @log
    else
      render json: @log.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /logs/1
  def update
    if @log.update(log_params)
      render json: @log
    else
      render json: @log.errors, status: :unprocessable_entity
    end
  end

  # DELETE /logs/1
  def destroy
    @log.destroy

    head :no_content
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_log
      @log = current_user.logs.find(params[:id])
      # @log = Log.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def log_params
      params.require(:log).permit(:date, :description, :contact_id)
    end
end
