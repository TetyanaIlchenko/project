class DatabaseController < ApplicationController
  def index
    @csv = CvsDatabase.all
  end

  def new
    @csv = CvsDatabase.new
  end

  def create
    @csv = CvsDatabase.create(dataset_params)
      if @csv.save
         redirect_to @csv
      else 
         render 'new'
      end
  end

  def show
    @csv = CvsDatabase.find(params[:id])
  end

  def edit
    @csv = CvsDatabase.find(params[:id])
  end

  def update
    @csv = CvsDatabase.find(params[:id])
       if @csv.update(dataset_params)
        redirect_to @csv
      else 
        render 'edit'
      end

  end

  def destroy
    @csv = CvsDatabase.find(params[:id])
    @csv.destroy
    redirect_to database_path
  end

private 
  def dataset_params
    params.require(:csv).permit(:filePath, :title, :description)
  end

end
