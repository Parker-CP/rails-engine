class Api::V1::SearchController < ApplicationController
  respond_to :json, :xml

  def show
    respond_with Invoice.find(params[:id]) if params[:id]
    respond_with Invoice.find_by(status: params[:status]) if params[:status]
    respond_with Invoice.find_by(created_at: params[:created_at]) if params[:created_at]
    respond_with Invoice.find_by(updated_at: params[:updated_at]) if params[:updated_at]
  end

end