class EStoragesController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]

  def index
    @e_storages = EStorage.all
  end

  def show
    @e_storage = EStorage.find(params[:id])
  end

  def new
    @e_storage = EStorage.new
  end

  def create
    @e_storage = current_user.e_storages.build(e_storage_params)
    if @e_storage.save
      redirect_to @e_storage, notice: 'File was successfully uploaded.'
    else
      render :new
    end
  end

  def edit
    @e_storage = EStorage.find(params[:id])
  end

  def update
    @e_storage = EStorage.find(params[:id])
    if @e_storage.update(e_storage_params)
      redirect_to @e_storage, notice: 'EStorage was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @e_storage = EStorage.find(params[:id])
    @e_storage.destroy
    redirect_to e_storages_url, notice: 'EStorage was successfully deleted.'
  end

  private

  def e_storage_params
    params.require(:e_storage).permit(:name, :description, files: [])
  end
end
