module Web::Controllers::Images
  class Destroy
    include Web::Action

    def call(params)
      ImageRepository.new.delete(params[:id])
      redirect_to routes.url(:images)
    end
  end
end
