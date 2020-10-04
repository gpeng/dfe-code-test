class ProvidersController < ApplicationController
  def index
    @providers = Provider.all
  end

  def new
    @provider = Provider.new
  end

  def create
    @provider = Provider.new(provider_params)

    if @provider.save
      redirect_to root_path
    else
      render :new
    end
  end

private

  def provider_params
    params.require(:provider).permit(
      :name,
      :address_1,
      :address_2,
      :address_3,
      :postcode,
    )
  end
end
