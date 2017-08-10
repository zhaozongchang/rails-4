class WelcomeController < ApplicationController
  def index
    flash[:notice] = "哈喽 你好！"
  end
end
