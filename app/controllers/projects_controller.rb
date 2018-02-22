class ProjectsController < ApplicationController
  before_action :set_project, only: [:show, :edit, :update, :destroy]
  before_action :find_the_template, except: [:index]

  # GET /projects
  # GET /projects.json
  def index
    @projects = Project.all
  end

  # GET /projects/1
  # GET /projects/1.json
  def show
  end

  # GET /projects/new
  def new
    @project = @template_one.projects.new
  end

  # GET /projects/1/edit
  def edit
  end

  # POST /projects
  # POST /projects.json
  def create
    @project = Project.new(project_params)

    respond_to do |format|
      if @project.save
        format.html { redirect_to edit_portfolio_carousel_path(@template_one), notice: 'Project was successfully created.' }
        format.json { render :show, status: :created, location: @project }
      else
        flash[:danger] = @project.errors.full_messages.to_sentence
        format.html { redirect_to edit_portfolio_carousel_path }
        format.json { render json: @project.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /projects/1
  # PATCH/PUT /projects/1.json
  def update
    respond_to do |format|
      if @project.update(project_params)
        format.html { redirect_to edit_portfolio_carousel_path(@template_one), notice: 'Project was successfully updated.' }
        format.json { render :show, status: :ok, location: @project }
      else
        flash[:danger] = @project.errors.full_messages.to_sentence
        format.html { redirect_to edit_portfolio_carousel_path }
        format.json { render json: @project.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /projects/1
  # DELETE /projects/1.json
  def destroy
    @project.destroy
    respond_to do |format|
      format.html { redirect_to edit_portfolio_carousel_path(@template_one), notice: 'Project was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_project
      @project = Project.find(params[:id])
    end

    def find_the_template
      @template_one = TemplateOne.find(1)
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def project_params
      params.require(:project).permit(
      :name, 
      :description, 
      :button_text, 
      :image_1, 
      :image_2, 
      :template_one_id,
      :modal_name,
      :modal_description,
      :modal_client,
      :modal_date,
      :modal_service,
      :modal_image_1,
      :modal_image_2,
      :modal_image_3,
      :modal_image_4
      )
    end
end
