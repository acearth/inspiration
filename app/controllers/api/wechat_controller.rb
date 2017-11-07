class Api::WechatController < ApplicationController
  protect_from_forgery except: [:hello, :add_note]

  def hello
    puts params[:echostr]
    render body: params[:echostr]
  end

  def add_note
     info = Hash.from_xml(request.body.read)
	note = Note.create(content: info[:Content])
	note.save
	render status: 200

  end
end
