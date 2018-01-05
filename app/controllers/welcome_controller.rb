class WelcomeController < ApplicationController
  def index
  @students = Studentx.all
  end
end
