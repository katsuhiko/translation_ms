class DictionariesController < ApplicationController
  before_action :set_dictionary, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @dictionaries = Dictionary.all
    respond_with(@dictionaries)
  end

  def show
    respond_with(@dictionary)
  end

  def new
    @dictionary = Dictionary.new
    respond_with(@dictionary)
  end

  def edit
  end

  def create
    @dictionary = Dictionary.new(dictionary_params)
    flash[:notice] = 'Dictionary was successfully created.' if @dictionary.save
    respond_with(@dictionary)
  end

  def update
    flash[:notice] = 'Dictionary was successfully updated.' if @dictionary.update(dictionary_params)
    respond_with(@dictionary)
  end

  def destroy
    @dictionary.destroy
    respond_with(@dictionary)
  end

  private
    def set_dictionary
      @dictionary = Dictionary.find(params[:id])
    end

    def dictionary_params
      params.require(:dictionary).permit(:name, :description)
    end
end
