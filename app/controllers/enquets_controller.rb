# frozen_string_literal: true

class EnquetsController < ApplicationController
  before_action :set_enquet, only: %i[show edit update destroy]
  # validates :content, presence: true

  # GET /enquets
  # GET /enquets.json
  def index
    @enquets = Enquet.all
  end

  # GET /enquets/1
  # GET /enquets/1.json
  def show; end

  # GET /enquets/new
  def new
    @enquet = Enquet.new
    p
  end

  # GET /enquets/1/edit
  def edit; end

  # POST /enquets
  # POST /enquets.json
  def create
    p enquet_params
    @enquet = Enquet.create(title: enquet_params[:title])
    respond_to do |format|
      if @enquet.save
        format.html { redirect_to @enquet, notice: 'Enquet was successfully created.' }
        format.json { render json: @enquet, status: :created, location: @enquet }
      else
        format.html { render action: 'new' }
        format.json { render json: @enquet.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /enquets/1
  # PATCH/PUT /enquets/1.json
  def update
    respond_to do |format|
      if @enquet.update(enquet_params)
        format.html { redirect_to @enquet, notice: 'Enquet was successfully updated.' }
        format.json { render :show, status: :ok, location: @enquet }
      else
        format.html { render :edit }
        format.json { render json: @enquet.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /enquets/1
  # DELETE /enquets/1.json
  def destroy
    @enquet.destroy
    respond_to do |format|
      format.html { redirect_to enquets_url, notice: 'Enquet was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_enquet
    @enquet = Enquet.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def enquet_params
    params.fetch(:enquet, {})
  end
end
