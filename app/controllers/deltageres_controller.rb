class DeltageresController < ApplicationController
  # GET /deltageres
  # GET /deltageres.json
  def index
    @deltageres = Deltagere.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @deltageres }
    end
  end

  # GET /deltageres/1
  # GET /deltageres/1.json
  def show
    @deltagere = Deltagere.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @deltagere }
    end
  end

  # GET /deltageres/new
  # GET /deltageres/new.json
  def new
    @deltagere = Deltagere.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @deltagere }
    end
  end

  # GET /deltageres/1/edit
  def edit
    @deltagere = Deltagere.find(params[:id])
  end

  # POST /deltageres
  # POST /deltageres.json
  def create
    @deltagere = Deltagere.new(params[:deltagere])

    respond_to do |format|
      if @deltagere.save
        format.html { redirect_to @deltagere, notice: 'Deltagere was successfully created.' }
        format.json { render json: @deltagere, status: :created, location: @deltagere }
      else
        format.html { render action: "new" }
        format.json { render json: @deltagere.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /deltageres/1
  # PUT /deltageres/1.json
  def update
    @deltagere = Deltagere.find(params[:id])

    respond_to do |format|
      if @deltagere.update_attributes(params[:deltagere])
        format.html { redirect_to @deltagere, notice: 'Deltagere was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @deltagere.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /deltageres/1
  # DELETE /deltageres/1.json
  def destroy
    @deltagere = Deltagere.find(params[:id])
    @deltagere.destroy

    respond_to do |format|
      format.html { redirect_to deltageres_url }
      format.json { head :ok }
    end
  end
end
