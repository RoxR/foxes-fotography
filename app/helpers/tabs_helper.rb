module TabsHelper
  def tab(name)
    path = "/admin/#{name}"
    text = name.to_s.capitalize
    link = link_to(text, path)
    cls = request.path == path ? 'selected' : ''
    content_tag :li, link, class: cls
  end
end