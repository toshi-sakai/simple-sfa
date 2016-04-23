class OpportunitiesController < ApplicationController
  before_action :set_opportunity, only: [:show, :edit, :update, :destroy]

  def index
    @opportunities = Opportunity.all
  end

  def new
    @opportunity = Opportunity.new
  end

  def create
    @opportunity = Opportunity.new(opportunity_params)
    if @opportunity.save
      redirect_to(root_path)
    else
      render 'new'
    end
  end
  
  def show
  end
  
  def edit
  end

  def update
    if @opportunity.update_attributes(opportunity_params)
      redirect_to @opportunity
    else
      render 'edit'
    end
  end

  def destroy
    Opportunity.find(params[:id]).destroy
    redirect_to opportunities_url
  end


end

private
    def set_opportunity
      @opportunity = Opportunity.find(params[:id])
    end

    def opportunity_params
      params.require(:opportunity).permit(
        :customer,
        :partner,
        :subject,
        :summary,
        :initial_cost,
        :monthly_cost,
        :expected_date_of_purchase_order,
        :schedule,
        :sales_staff,
        :technical_staff,
        :remarks
      )
    end
