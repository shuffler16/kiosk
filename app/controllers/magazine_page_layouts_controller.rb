class MagazinePageLayoutsController < ApplicationController
  before_action :set_magazine_page_layout, only: [:show, :edit, :update, :destroy]

  # GET /magazine_page_layouts
  # GET /magazine_page_layouts.json
  def index
    @magazine_page_layouts = MagazinePageLayout.all
  end

  # GET /magazine_page_layouts/1
  # GET /magazine_page_layouts/1.json
  def show
  end

  # GET /magazine_page_layouts/new
  def new
    @magazine_page_layout = MagazinePageLayout.new
  end

  # GET /magazine_page_layouts/1/edit
  def edit
  end

  # POST /magazine_page_layouts
  # POST /magazine_page_layouts.json
  def create
    @magazine_page_layout = MagazinePageLayout.new(magazine_page_layout_params)

    respond_to do |format|
      if @magazine_page_layout.save
        format.html { redirect_to @magazine_page_layout, notice: 'Magazine page layout was successfully created.' }
        format.json { render action: 'show', status: :created, location: @magazine_page_layout }
      else
        format.html { render action: 'new' }
        format.json { render json: @magazine_page_layout.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /magazine_page_layouts/1
  # PATCH/PUT /magazine_page_layouts/1.json
  def update
    respond_to do |format|
      if @magazine_page_layout.update(magazine_page_layout_params)
        format.html { redirect_to @magazine_page_layout, notice: 'Magazine page layout was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @magazine_page_layout.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /magazine_page_layouts/1
  # DELETE /magazine_page_layouts/1.json
  def destroy
    @magazine_page_layout.destroy
    respond_to do |format|
      format.html { redirect_to magazine_page_layouts_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_magazine_page_layout
      @magazine_page_layout = MagazinePageLayout.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def magazine_page_layout_params
      params.require(:magazine_page_layout).permit(:name, :description, :preview_file, :template_file)
    end
end
