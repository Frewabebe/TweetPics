class PhrasesController < ApplicationController

  def index
    @phrases = Phrase.all
  end

  def new
    @phrase = Phrase.new
  end



  def create
    # accepts new phrase
    # @phrase = phrase.new!(phrase_params)
    # @photo = Phrase.findphoto(@phrase)
  end

  def show
  end

private
  def phrase_params
    params.require(:phrase).permit(:content)
  end

end
