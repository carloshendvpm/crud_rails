class StampsController < ApplicationController
  before_action :set_stamp, only: %i[ show edit update destroy ]

  def index
    @stamps = Stamp.all
  end

  def show
  end

  def new
    @stamp = Stamp.new
  end

  def edit
  end

  def create
    @stamp = Stamp.new(stamp_params)

    respond_to do |format|
      if @stamp.save
        format.html { redirect_to stamp_url(@stamp), notice: "Stamp was successfully created." }
        format.json { render :show, status: :created, location: @stamp }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @stamp.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @stamp.update(stamp_params)
        format.html { redirect_to stamp_url(@stamp), notice: "Stamp was successfully updated." }
        format.json { render :show, status: :ok, location: @stamp }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @stamp.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @stamp.destroy

    respond_to do |format|
      format.html { redirect_to stamps_url, notice: "Stamp was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    def set_stamp
      @stamp = Stamp.find(params[:id])
    end

    def stamp_params
      params.require(:stamp).permit(:description, :value, :user_id)
    end
end
