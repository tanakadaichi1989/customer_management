module ApplicationHelper
  def full_page_name(title = "")

    base_page = "Customer Management"

    if title.empty?
      base_page
    else
      title + " | " + base_page
    end

  end
end
