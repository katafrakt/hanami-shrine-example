module Web::Controllers::Images
  class Index
    include Web::Action

    expose :images

    def call(params)
      @images = ImageRepository.all
    end
  end
end
