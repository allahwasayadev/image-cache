class ApplicationController < ActionController::Base
  require 'net/http'
  require 'tempfile'
  require 'open-uri'

  def get_image
    if params[:image_url]
      data = Rails.cache.fetch(params[:image_url]) { download_file_and_convert }
      send_data data, type: "image/webp", disposition: 'inline'

    else
      render json: {error: "Image url is required."}, status: :unprocessable_entity
    end
  end

  private
    def download_file_and_convert
      file = Tempfile.new(['image_file', '.jpg'])
      file.binmode
      webp_file = Tempfile.new(['image_file', '.webp'])
      webp_file.binmode

      file.write(open(params[:image_url]).read)
      file.flush

      WebP.encode(file.path, webp_file.path, {})
      webp_file.read
    end
end
