module Web::Controllers::Images
  class Show
    include Web::Action

    expose :image

    def call(params)
      @image = ImageRepository.new.find(params[:id])
    end
  end
end
