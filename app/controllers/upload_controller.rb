class UploadController < ApplicationController
  def show
    @upload = Upload.find(params[:id])
    render json: { file_data: @upload.file_data }, status: :ok
  rescue ActiveRecord::RecordNotFound
    render json: { error: 'File not found' }, status: :not_found
  end

  def create
    pry-byebug
    @upload = Upload.new(file_data: upload_params)
    if @upload.save
      render json: { message: 'File uploaded successfully' }, status: :ok
    else
      render json: { error: 'Failed to upload file' }, status: :unprocessable_entity
    end
  end

  private

  def upload_params
    params.permit(:file)
  end
end