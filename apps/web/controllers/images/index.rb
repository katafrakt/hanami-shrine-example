module Web::Controllers::Images
  class Index
    include Web::Action

    expose :images

    def call(params)
      @images = ImageRepository.new.all
    end
  end
end
