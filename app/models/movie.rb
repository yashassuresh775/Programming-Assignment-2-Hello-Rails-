class Movie < ActiveRecord::Base
  SORTABLE_COLUMNS = %w[title rating release_date].freeze

  def self.sorted_by(column, direction)
    column = SORTABLE_COLUMNS.include?(column) ? column : "title"
    direction = direction == "desc" ? "desc" : "asc"
    order("#{column} #{direction}")
  end
end
