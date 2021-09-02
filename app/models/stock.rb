class Stock < ApplicationRecord
  # include PgSearch::Model
  # pg_search_scope :search_by_term, against: [:name, :symbol],
  #                                  using: {
  #                                    tsearch: {
  #                                      any_word: true,
  #                                      prefix: true,
  #                                    },
  #                                  }
end
