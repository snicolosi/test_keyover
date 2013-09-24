class AddessesController < ApplicationController
  # GET /addesses
  # GET /addesses.json
  def index
    @addesses = Addess.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @addesses }
    end
  end

  # GET /addesses/1
  # GET /addesses/1.json
  def show
    @addess = Addess.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @addess }
    end
  end

  # GET /addesses/new
  # GET /addesses/new.json
  def new
    @addess = Addess.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @addess }
    end
  end

  # GET /addesses/1/edit
  def edit
    @addess = Addess.find(params[:id])
  end

  # POST /addesses
  # POST /addesses.json
  def create
    @addess = Addess.new(params[:addess])

    respond_to do |format|
      if @addess.save
        format.html { redirect_to @addess, notice: 'Addess was successfully created.' }
        format.json { render json: @addess, status: :created, location: @addess }
      else
        format.html { render action: "new" }
        format.json { render json: @addess.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /addesses/1
  # PUT /addesses/1.json
  def update
    @addess = Addess.find(params[:id])

    respond_to do |format|
      if @addess.update_attributes(params[:addess])
        format.html { redirect_to @addess, notice: 'Addess was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @addess.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /addesses/1
  # DELETE /addesses/1.json
  def destroy
    @addess = Addess.find(params[:id])
    @addess.destroy

    respond_to do |format|
      format.html { redirect_to addesses_url }
      format.json { head :no_content }
    end
  end
end
