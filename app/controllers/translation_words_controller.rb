class TranslationWordsController < ApplicationController
  before_action :set_translation_word, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @translation_words = TranslationWord.all
    respond_with(@translation_words)
  end

  def show
    respond_with(@translation_word)
  end

  def new
    @translation_word = TranslationWord.new
    respond_with(@translation_word)
  end

  def edit
  end

  def create
    @translation_word = TranslationWord.new(translation_word_params)
    @translation_word.save
    respond_with(@translation_word)
  end

  def update
    @translation_word.update(translation_word_params)
    respond_with(@translation_word)
  end

  def destroy
    @translation_word.destroy
    respond_with(@translation_word)
  end

  private
    def set_translation_word
      @translation_word = TranslationWord.find(params[:id])
    end

    def translation_word_params
      params.require(:translation_word).permit(:prev_id, :cud_type, :work_id, :locale_id, :content, :progress_status)
    end
end
