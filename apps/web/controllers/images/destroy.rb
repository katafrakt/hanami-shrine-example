module Web::Controllers::Images
  class Destroy
    include Web::Action

    def call(params)
      image = ImageRepository.find(params[:id])
      ImageRepository.delete(image)
      redirect_to routes.url(:images)
    end
  end
end
