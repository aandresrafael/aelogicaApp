class HomeController < ApplicationController
  before_action :clean_db

  def index
    EtlAelogica::EtlOrganizer.call
    @units = Unit.all
    render :index
  end

  protected

  def clean_db
    Unit.destroy_all
    UnitGroup.destroy_all
    ChannelRate.destroy_all
    UnitType.destroy_all
    InvoiceableFee.destroy_all
    UnitAmenity.destroy_all
    DiscountPlan.destroy_all
    DiscountPlanDiscount.destroy_all
    DiscountPlanControl.destroy_all
    ClientApplication.destroy_all
  end

end
