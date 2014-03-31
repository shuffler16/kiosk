class MagazinePagesController < ApplicationController
  before_action :set_magazine_page, only: [:show, :edit, :update, :destroy]
  before_action :set_magazine_page_layout, only: [:new, :edit]

  # GET /magazine_pages
  # GET /magazine_pages.json
  def index
    @magazine_pages = MagazinePage.all
  end

  # GET /magazine_pages/1
  # GET /magazine_pages/1.json
  def show
  end

  # GET /magazine_pages/new
  def new
    @magazine_page = MagazinePage.new
    @magazine_page.magazine = Magazine.find(params[:magazine_id])
  end

  # GET /magazine_pages/1/edit
  def edit
  end

  # POST /magazine_pages
  # POST /magazine_pages.json
  def create
    @magazine_page = MagazinePage.new(magazine_page_params)
    @magazine = Magazine.find(@magazine_page.magazine_id)
    @magazine_page.page = MagazinePage.where(magazine_id: @magazine_page.magazine_id).count + 1 # page will always be last for new magazine page
    respond_to do |format|
      if @magazine_page.save
        format.html { redirect_to @magazine_page, notice: 'Magazine page was successfully created.' }
        format.json { render action: 'show', status: :created, location: @magazine_page }
      else
        format.html { render action: 'new' }
        format.json { render json: @magazine_page.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /magazine_pages/1
  # PATCH/PUT /magazine_pages/1.json
  def update
    respond_to do |format|
      if @magazine_page.update(magazine_page_params)
        format.html { redirect_to @magazine_page, notice: 'Magazine page was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @magazine_page.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /magazine_pages/1
  # DELETE /magazine_pages/1.json
  def destroy
    @magazine_page.destroy
    respond_to do |format|
      format.html { redirect_to magazine_pages_url }
      format.json { head :no_content }
    end
  end

  private
    def set_magazine_page_layout
      @magazine_page_layouts = MagazinePageLayout.all
    end
    # Use callbacks to share common setup or constraints between actions.
    def set_magazine_page
      @magazine_page = MagazinePage.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def magazine_page_params
      params.require(:magazine_page).permit(:page, :magazine_id, :page_layout_id)
    end
end
