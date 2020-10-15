class LinksController < ApplicationController
  before_action :set_report
  before_action :set_link, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  # GET reports/1/links
  def index
    @links = @report.links
  end

  # GET reports/1/links/1
  def show
  end

  # GET reports/1/links/new
  def new
    @link = @report.links.build
  end

  # GET reports/1/links/1/edit
  def edit
  end

  # POST reports/1/links
  def create
    @link = @report.links.build(link_params)

    if @link.save
      redirect_to([@link.report])
    else
      render action: 'new'
    end
  end

  # PUT reports/1/links/1
  def update
    if @link.update_attributes(link_params)
      redirect_to([@link.report], notice: 'Link was successfully updated by '+ current_user.email)
    else
      render action: 'edit'
    end
  end

  # DELETE reports/1/links/1
  def destroy
    @link.destroy

    redirect_to report_links_url(@report)
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_report
      @report = Report.find(params[:report_id])
    end

    def set_link
      @link = @report.links.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def link_params
      params.require(:link).permit(:name_link, :status)
    end
end
