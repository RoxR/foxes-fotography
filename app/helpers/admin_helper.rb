module AdminHelper
  def admin_panel_link(which)
    label = which.to_s.gsub('_', ' ').titleize
    href = "/admin/#{which.to_s}"
    cls = which.to_s == request.path.split('/')[2] ? 'selected' : ''
    content_tag :li, link_to(label, href), class: cls
  end
end