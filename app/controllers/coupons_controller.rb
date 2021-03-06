
class CouponsController < ApplicationController

  def index
    @coupons = Coupon.all
  end

  def show
    @coupon = Coupon.find(params[:id])
  end

  def new
    @coupon = Coupon.new
  end

  def create
    # byebug
    @coupon = Coupon.create(params_hash)
    redirect_to coupon_path(@coupon)
  end

  private

  def params_hash
    params.require(:coupon).permit(:coupon_code, :store)
    # byebug
  end

end
