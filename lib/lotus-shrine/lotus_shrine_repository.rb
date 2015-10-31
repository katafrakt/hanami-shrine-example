module Lotus
  class ShrineRepository < Module
    def self.[](name)
      self::RepositoryMethods.new(name)
    end

    class RepositoryMethods < Module
      def initialize(attachment_name)
        module_eval <<-RUBY, __FILE__, __LINE__ + 1
          def create(entity)
            method_name = "#{attachment_name}_attacher".to_sym

            entity.public_send(method_name).save
            entity.public_send(method_name).replace
            entity.public_send(method_name)._promote

            super
          end
        RUBY
      end
    end
  end
end
