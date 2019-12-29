module Gatherin
  module Core
    module Concerns
      module Response
        def render_success!(object, status: :ok)
          render json: object, status: status
        end

        def render_failure!(messages = [], status: 422)
          data = { errors: { details: Array.wrap(messages), status: status } }
          render json: data, status: status
        end
      end
    end
  end
end
