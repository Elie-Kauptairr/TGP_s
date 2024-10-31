class TheGossipProjectsController < ApplicationController
  before_action :set_the_gossip_project, only: %i[ show edit update destroy ]

  # GET /the_gossip_projects or /the_gossip_projects.json
  def index
    @the_gossip_projects = TheGossipProject.all
  end

  # GET /the_gossip_projects/1 or /the_gossip_projects/1.json
  def show
    @the_gossip_project = TheGossipProject.find(params[:id])
  end

  # GET /the_gossip_projects/new
  def new
    @the_gossip_project = TheGossipProject.new
  end

  # GET /the_gossip_projects/1/edit
  def edit
    @the_gossip_project = TheGossipProject.find(params[:id])
  end


  def create
    @the_gossip_project = TheGossipProject.new(the_gossip_project_params)
    @the_gossip_project.user = User.first # Associe un utilisateur par défaut
  
    respond_to do |format|
      if @the_gossip_project.save
        format.html { redirect_to @the_gossip_project, notice: "The gossip project was successfully created." }
        format.json { render :show, status: :created, location: @the_gossip_project }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @the_gossip_project.errors, status: :unprocessable_entity }
      end
    end
  end
  

  # PATCH/PUT /the_gossip_projects/1 or /the_gossip_projects/1.json
  def update
    respond_to do |format|
      if @the_gossip_project.update(the_gossip_project_params)
        format.html { redirect_to @the_gossip_project, notice: "The gossip project was successfully updated." }
        format.json { render :show, status: :ok, location: @the_gossip_project }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @the_gossip_project.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /the_gossip_projects/1 or /the_gossip_projects/1.json
  def destroy
    @the_gossip_project.destroy!

    respond_to do |format|
      format.html { redirect_to the_gossip_projects_path, status: :see_other, notice: "The gossip project was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Only allow a list of trusted parameters through.
    def the_gossip_project_params
      params.require(:the_gossip_project).permit(:title, :content)
    end
end


def set_the_gossip_project
  @the_gossip_project = TheGossipProject.find_by(id: params[:id])
  unless @the_gossip_project
    redirect_to the_gossip_projects_path, alert: "Le potin que vous cherchez n'existe pas."
  end
end
