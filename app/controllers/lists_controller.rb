class ListsController < ApplicationController
  def index
    @lists = List.all
  end

  def new
    @list = List.new
  end

  def show
    @list = List.find(params[:id])
  end

  # def create
  #   @list = List.new(list_params)
  #   # @list.save
  #   if @list.save
  #     redirect_to lists_path(@list), notice: "List was successfully created."
  #   else
  #     render :new, status: :unprocessable_entity
  #   end
  #   # redirect_to root_path
  #   # redirect_to lists_path
  # end

  # private

  # def list_params
  #   params.require(:list).permit(
  #     :name
  #   )
  # end
end