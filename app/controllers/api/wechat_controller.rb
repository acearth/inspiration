class Api::WechatController < ApplicationController
  protect_from_forgery except: :hello

  def hello
    puts params[:echostr]
    render json: {echostr: params[:echostr] }
  end
end
