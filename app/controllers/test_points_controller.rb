class TestPointsController < ApplicationController
  # GET /test_points
  # GET /test_points.json
  def index
    @test_points = TestPoint.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @test_points }
    end
  end

  # GET /test_points/1
  # GET /test_points/1.json
  def show
    @test_point = TestPoint.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @test_point }
    end
  end

  # GET /test_points/new
  # GET /test_points/new.json
  def new
    @test_point = TestPoint.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @test_point }
    end
  end

  # GET /test_points/1/edit
  def edit
    @test_point = TestPoint.find(params[:id])
  end

  # POST /test_points
  # POST /test_points.json
  def create
    @test_point = TestPoint.new(params[:test_point])

    respond_to do |format|
      if @test_point.save
        format.html { redirect_to @test_point, notice: 'Test point was successfully created.' }
        format.json { render json: @test_point, status: :created, location: @test_point }
      else
        format.html { render action: "new" }
        format.json { render json: @test_point.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /test_points/1
  # PUT /test_points/1.json
  def update
    @test_point = TestPoint.find(params[:id])

    respond_to do |format|
      if @test_point.update_attributes(params[:test_point])
        format.html { redirect_to @test_point, notice: 'Test point was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @test_point.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /test_points/1
  # DELETE /test_points/1.json
  def destroy
    @test_point = TestPoint.find(params[:id])
    @test_point.destroy

    respond_to do |format|
      format.html { redirect_to test_points_url }
      format.json { head :no_content }
    end
  end
end
