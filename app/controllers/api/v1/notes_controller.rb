class Api::V1::NotesController < ApplicationController
  protect_from_forgery except: [:index,:create, :last]

  def index
    render json: Note.all
  end
  def last
    render json: Note.last
  end

  def create
    note = Note.create(content: params[:note])
    note.save
    render json: note
  end

end
