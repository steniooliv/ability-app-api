class AccountingsController < ApplicationController
  def index
    @accountings = Accounting.all
  end

  def show
  end
end
