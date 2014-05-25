module ApplicationHelper
  def inline_js(&block)
    output = capture(&block)[31..-10]

    signature = Digest::MD5.hexdigest(output)

    content_for :js, "if(!window.js_#{signature}){window.js_#{signature}=true;#{output}}".html_safe
  end
end
