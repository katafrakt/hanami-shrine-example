module Web::Views::Images
  class Index
    include Web::View

    def title(image)
      if image.title.to_s != ''
        image.title
      else
        path = Pathname.new(image.image_url(:original))
        path.basename
      end
    end
  end
end
