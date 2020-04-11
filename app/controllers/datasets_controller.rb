class DatasetsController < ApplicationController
  before_action :authenticate_user!, except: [:index]

  def index
   @datasets = Dataset.all
  end

  def new
  end

  def show
   @dataset = Dataset.find(params[:id])
  end

  def create
    @dataset = Dataset.new(dataset_params)
    @dataset.user = current_user
    @dataset.csv_file.attach(params[:dataset][:csv_file])
    logger.debug params
    @dataset.save
    redirect_to @dataset
  end

  def destroy
    @dataset = Dataset.find(params[:id])
    @dataset.destroy

  redirect_to datasets_path
  end

  private
  def dataset_params
    params.require(:dataset).permit(:title, :text, :csv_file)
  end

end
