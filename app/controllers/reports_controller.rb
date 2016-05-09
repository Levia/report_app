class ReportsController < ApplicationController
  respond_to :html

  def index
    @reports = Report.all
  end

  def show
    @report = Report.find(params[:id])
  end

  def edit
    @report = Report.find(params[:id])
  end

  def update
    @report = Report.find(params[:id])

    flash[:notice] = "Report successfully updated" if @report.update_attributes(report_params)
    respond_with(@report)
  end

  def new
    @report = Report.new
  end

  def create
    @report = Report.new(report_params.merge({user_id: current_user.id}))
    if @report.save
      respond_with(@report)
    end
  end

  def destroy
  end

  private

  def report_params
    params.require(:report).permit(:date)
  end
end
