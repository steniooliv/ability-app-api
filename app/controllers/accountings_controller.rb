class AccountingsController < ApplicationController
  
  before_action :set_accounting, only: :show
  
  def index
    @accountings = Accounting.all
  end

  def show
  end

  private

  def set_accounting
    @accounting = Accounting.find(params[:id])
  end
end
