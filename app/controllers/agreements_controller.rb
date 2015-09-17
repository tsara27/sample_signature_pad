class AgreementsController < ApplicationController

  def index
    @agreement = Agreement.new
  end

  def create
    @agreement = Agreement.create(agreement_params)
    render action: "show" if @agreement.persisted?
  end

  def show
    @agreement = Agreement.find(params[:id])
  end

  private

  def agreement_params
    params.require(:agreement).permit(:name, :signature)
  end

end
