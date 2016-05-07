class ReportsController < ApplicationController
  def index
    @reports = Report.all
  end

  def show
    @report = Report.find(params[:id])
  end

  def edit
  end

  def update
  end

  def new
  end

  def create
  end

  def destroy
  end
end
