class CountersController < ApplicationController
  # GET /counters
  # GET /counters.json
  def index
    @counters = Counter.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @counters }
    end
  end

  # GET /counters/1
  # GET /counters/1.json
  def show
    @counter = Counter.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @counter }
    end
  end

  # GET /counters/new
  # GET /counters/new.json
  def new
    @counter = Counter.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @counter }
    end
  end

  # GET /counters/1/edit
  def edit
    @counter = Counter.find(params[:id])
  end

  # POST /counters
  # POST /counters.json
  def create
    @counter = Counter.new(params[:counter])

    respond_to do |format|
      if @counter.save
        format.html { redirect_to @counter, notice: 'Counter was successfully created.' }
        format.json { render json: @counter, status: :created, location: @counter }
      else
        format.html { render action: "new" }
        format.json { render json: @counter.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /counters/1
  # PUT /counters/1.json
  def update
    @counter = Counter.find(params[:id])

    respond_to do |format|
      if @counter.update_attributes(params[:counter])
        format.html { redirect_to @counter, notice: 'Counter was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @counter.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /counters/1
  # DELETE /counters/1.json
  def destroy
    @counter = Counter.find(params[:id])
    @counter.destroy

    respond_to do |format|
      format.html { redirect_to counters_url }
      format.json { head :ok }
    end
  end
end
