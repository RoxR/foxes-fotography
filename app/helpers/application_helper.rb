module ApplicationHelper
  def livereload_tag
    # get your ip on your local network
    local_ip = Socket.ip_address_list.detect(&:ipv4_private?).ip_address
    # livereload listen port
    port = '35729'
    javascript_include_tag "http://#{local_ip}:#{port}/livereload.js?snipver=1"
  end
end
