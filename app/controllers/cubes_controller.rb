class CubesController < ApplicationController
  # GET /cubes
  # GET /cubes.json
  def index
    @cubes = Cube.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @cubes }
    end
  end

  # GET /cubes/1
  # GET /cubes/1.json
  def show
    @cube = Cube.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @cube }
    end
  end

  # GET /cubes/new
  # GET /cubes/new.json
  def new
    @cube = Cube.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @cube }
    end
  end

  # GET /cubes/1/edit
  def edit
    @cube = Cube.find(params[:id])
  end

  # POST /cubes
  # POST /cubes.json
  def create
    @cube = Cube.new(params[:cube])

    respond_to do |format|
      if @cube.save
        format.html { redirect_to @cube, notice: 'Cube was successfully created.' }
        format.json { render json: @cube, status: :created, location: @cube }
      else
        format.html { render action: "new" }
        format.json { render json: @cube.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /cubes/1
  # PUT /cubes/1.json
  def update
    @cube = Cube.find(params[:id])

    respond_to do |format|
      if @cube.update_attributes(params[:cube])
        format.html { redirect_to @cube, notice: 'Cube was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @cube.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cubes/1
  # DELETE /cubes/1.json
  def destroy
    @cube = Cube.find(params[:id])
    @cube.destroy

    respond_to do |format|
      format.html { redirect_to cubes_url }
      format.json { head :no_content }
    end
  end
end
