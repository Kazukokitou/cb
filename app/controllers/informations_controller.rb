class InformationsController < ApplicationController
  def show
    @informations = Information.active
  end
end
