class AutomatonsController < ApplicationController
  # GET /automatons
  # GET /automatons.json
  def index
    @automatons = Automaton.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @automatons }
    end
  end

  # GET /automatons/1
  # GET /automatons/1.json
  def show
    @automaton = Automaton.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @automaton }
    end
  end

  # GET /automatons/new
  # GET /automatons/new.json
  def new
    @automaton = Automaton.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @automaton }
    end
  end

  # GET /automatons/1/edit
  def edit
    @automaton = Automaton.find(params[:id])
  end

  # POST /automatons
  # POST /automatons.json
  def create
    @automaton = Automaton.new(params[:automaton])

    respond_to do |format|
      if @automaton.save
        format.html { redirect_to @automaton, notice: 'Automaton was successfully created.' }
        format.json { render json: @automaton, status: :created, location: @automaton }
      else
        format.html { render action: "new" }
        format.json { render json: @automaton.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /automatons/1
  # PUT /automatons/1.json
  def update
    @automaton = Automaton.find(params[:id])

    respond_to do |format|
      if @automaton.update_attributes(params[:automaton])
        format.html { redirect_to @automaton, notice: 'Automaton was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @automaton.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /automatons/1
  # DELETE /automatons/1.json
  def destroy
    @automaton = Automaton.find(params[:id])
    @automaton.destroy

    respond_to do |format|
      format.html { redirect_to automatons_url }
      format.json { head :no_content }
    end
  end
end
