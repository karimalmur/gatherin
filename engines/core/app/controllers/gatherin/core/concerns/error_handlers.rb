module Gatherin
  module ErrorHandlers
    extend ActiveSupport::Concern

    included do
      rescue_from ActiveRecord::RecordNotFound, with: :record_not_found
      rescue_from ActiveRecord::RecordInvalid, with: :four_twenty_two
    end

    private

    def record_not_found(err)
      render_failure!(
        messages: err.message,
        status: 404,
      )
    end

    def four_twenty_two(err)
      render_failure!(
        messages: err.record.errors.full_messages,
        status: 422,
      )
    end
  end
end
