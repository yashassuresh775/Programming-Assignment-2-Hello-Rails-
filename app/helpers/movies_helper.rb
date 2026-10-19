module MoviesHelper
  def sortable_column(column, title = nil)
    title ||= column.titleize
    direction = if @sort_column == column && @sort_direction == "asc"
                  "desc"
                else
                  "asc"
                end

    css_class = "sortable"
    indicator = ""

    if @sort_column == column
      css_class += @sort_direction == "asc" ? " sorted-asc" : " sorted-desc"
      indicator = @sort_direction == "asc" ? " ▲" : " ▼"
    end

    link_to "#{title}#{indicator}", movies_path(sort: column, direction: direction),
            class: css_class,
            "aria-sort": (@sort_column == column ? (@sort_direction == "asc" ? "ascending" : "descending") : "none")
  end
end
