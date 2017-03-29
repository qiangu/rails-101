class ApplicationController < ActionController::Base
  
  def index
   flash[:warning] = "这是 warning 信息！"
  end
end
