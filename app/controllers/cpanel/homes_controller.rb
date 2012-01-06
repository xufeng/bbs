class Cpanel::HomesController < ApplicationController
  # GET /cpanel/homes
  # GET /cpanel/homes.json
  def index
    @cpanel_homes = Cpanel::Home.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @cpanel_homes }
    end
  end

  # GET /cpanel/homes/1
  # GET /cpanel/homes/1.json
  def show
    @cpanel_home = Cpanel::Home.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @cpanel_home }
    end
  end

  # GET /cpanel/homes/new
  # GET /cpanel/homes/new.json
  def new
    @cpanel_home = Cpanel::Home.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @cpanel_home }
    end
  end

  # GET /cpanel/homes/1/edit
  def edit
    @cpanel_home = Cpanel::Home.find(params[:id])
  end

  # POST /cpanel/homes
  # POST /cpanel/homes.json
  def create
    @cpanel_home = Cpanel::Home.new(params[:cpanel_home])

    respond_to do |format|
      if @cpanel_home.save
        format.html { redirect_to @cpanel_home, notice: 'Home was successfully created.' }
        format.json { render json: @cpanel_home, status: :created, location: @cpanel_home }
      else
        format.html { render action: "new" }
        format.json { render json: @cpanel_home.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /cpanel/homes/1
  # PUT /cpanel/homes/1.json
  def update
    @cpanel_home = Cpanel::Home.find(params[:id])

    respond_to do |format|
      if @cpanel_home.update_attributes(params[:cpanel_home])
        format.html { redirect_to @cpanel_home, notice: 'Home was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @cpanel_home.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cpanel/homes/1
  # DELETE /cpanel/homes/1.json
  def destroy
    @cpanel_home = Cpanel::Home.find(params[:id])
    @cpanel_home.destroy

    respond_to do |format|
      format.html { redirect_to cpanel_homes_url }
      format.json { head :ok }
    end
  end
end
