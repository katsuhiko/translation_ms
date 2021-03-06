class WordsController < ApplicationController
  before_action :set_word, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @words = Word.all
    respond_with(@words)
  end

  def show
    respond_with(@word)
  end

  def new
    @word = Word.new
    respond_with(@word)
  end

  def edit
  end

  def create
    @word = Word.new(word_params)
    @word.save
    respond_with(@word)
  end

  def update
    @word.update(word_params)
    respond_with(@word)
  end

  def destroy
    @word.destroy
    respond_with(@word)
  end

  private
    def set_word
      @word = Word.find(params[:id])
    end

    def word_params
      params.require(:word).permit(:dictionary_id, :use_status)
    end
end
