class PadsController < ApplicationController
  before_filter :signed_in_user, :only => [:index, :show, :edit, :update, :destroy]
  before_filter :admin_user,  only: [:index, :edit, :show, :update, :destroy]
  # GET /pads
  # GET /pads.json
  def index
    @pads = Pad.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @pads }
    end
  end

  # GET /pads/1
  # GET /pads/1.json
  def show
    @pad = Pad.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @pad }
    end
  end

  # GET /pads/new
  # GET /pads/new.json
  def new
    @pad = Pad.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @pad }
    end
  end

  # GET /pads/1/edit
  def edit
    @pad = Pad.find(params[:id])
  end

  # POST /pads
  # POST /pads.json
  def create
    @pad = Pad.new(params[:pad])

    respond_to do |format|
      if @pad.save
        format.html { redirect_to @pad, notice: 'Pad was successfully created.' }
        format.json { render json: @pad, status: :created, location: @pad }
      else
        format.html { render action: "new" }
        format.json { render json: @pad.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /pads/1
  # PUT /pads/1.json
  def update
    @pad = Pad.find(params[:id])

    respond_to do |format|
      if @pad.update_attributes(params[:pad])
        format.html { redirect_to @pad, notice: 'Pad was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @pad.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pads/1
  # DELETE /pads/1.json
  def destroy
    @pad = Pad.find(params[:id])
    @pad.destroy

    respond_to do |format|
      format.html { redirect_to pads_url }
      format.json { head :no_content }
    end
  end
  
  private
    
        def signed_in_user
          unless signed_in?
            store_location
            redirect_to signin_url, notice: "Please sign in."
          end
        end
      
        def correct_user
          @user = User.find(params[:id])
          redirect_to(root_path) unless current_user?(@user)
        end
      
        def admin_user
          redirect_to(root_path) unless current_user.admin?
        end
  
end
