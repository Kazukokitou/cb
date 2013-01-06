class InformationController < ApplicationController
  def show
    @information = Information.active
  end
end
