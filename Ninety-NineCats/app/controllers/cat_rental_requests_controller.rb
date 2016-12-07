class CatRentalRequestsController < ApplicationController

  def new
    @cat_rental_request = CatRentalRequest.new
    render :new
  end

  def create
    @cat_rental_request = CatRentalRequest.new(cat_rental_request_params)

    if @cat_rental_request.save
      redirect_to cat_url(params[:cat_id])
    else
      render :new
    end
  end
  #
  # def show
  #   @cat = Cat.find_by(id: params[:cat_id])
  #   @cat_rental_request = CatRentalRequest.find_by(cat_rental_request_params)
  #   render :show, cat = @cat, rental_request = @cat_rental_request
  # end

  # def edit
  #
  # end
  #
  # def updated
  #
  # end

  private
  def cat_rental_request_params
    params.require(:cat_rental_request).permit(:start_date, :end_date, :cat_id)
  end
end
