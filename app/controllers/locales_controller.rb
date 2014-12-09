class LocalesController < ApplicationController
  before_action :set_locale, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @locales = Locale.all
    respond_with(@locales)
  end

  def show
    respond_with(@locale)
  end

  def new
    @locale = Locale.new
    respond_with(@locale)
  end

  def edit
  end

  def create
    @locale = Locale.new(locale_params)
    @locale.save
    respond_with(@locale)
  end

  def update
    @locale.update(locale_params)
    respond_with(@locale)
  end

  def destroy
    @locale.destroy
    respond_with(@locale)
  end

  private
    def set_locale
      @locale = Locale.find(params[:id])
    end

    def locale_params
      params.require(:locale).permit(:lang_territory)
    end
end
