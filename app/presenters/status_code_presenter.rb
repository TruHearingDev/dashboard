module StatusCodePresenter
  class Base
    def on_update(resource)
      if resource.respond_to?(:all_errors)
        resource.all_errors.present? ? 400 : 200
      else
        resource.errors.present? ? 400 : 200
      end
    end

    def on_create(resource)
      if resource.respond_to?(:all_errors)
        resource.all_errors.present? ? 400 : 201
      else
        resource.errors.present? ? 400 : 201
      end
    end
  end
end
