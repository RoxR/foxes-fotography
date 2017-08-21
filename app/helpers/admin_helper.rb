module AdminHelper
  def admin_panel_link(which)
    label = which.to_s.gsub('_', ' ').titleize
    href = "/admin/#{which.to_s}"
    content_tag :li, link_to(label, href)
  end
end