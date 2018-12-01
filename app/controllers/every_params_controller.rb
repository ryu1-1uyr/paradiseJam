class EveryParamsController < ApplicationController
  before_action :set_every_param, only: [:show, :update, :destroy]

  # GET /every_params
  def index
    @every_params = EveryParam.all

    render json: @every_params
  end

  # GET /every_params/1
  def show
    render json: @every_param
  end

  # POST /every_params
  def create
    @every_param = EveryParam.new(every_param_params)

    #このままだと、走った距離がそのままDBにはいるよ

    if @every_param.save
      render json: @every_param, status: :created, location: @every_param
    else
      render json: @every_param.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /every_params/1
  def update
    if @every_param.update(every_param_params)
      render json: @every_param
    else
      render json: @every_param.errors, status: :unprocessable_entity
    end
  end

  # DELETE /every_params/1
  def destroy
    @every_param.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_every_param
      @every_param = EveryParam.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def every_param_params
      params.permit(:userId, :minusCalorie, :currentWeight)
    end
end
