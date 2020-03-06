module Types
  class QueryType < Types::BaseObject
    # Add root-level fields here.
    # They will be entry points for queries on your schema.

    field(
      :users,
      [Types::UserType],
      null: false,
      description: "Returns a list of Gatherin users",
    )
    def users
      Gatherin::User.all
    end
  end
end
