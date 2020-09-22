require 'erb'

index_template_path = "index.html.erb"
template_file   = File.open(index_template_path, 'r'){|f| f.read}
@date = Time.now.to_s.split(" ").first
@date = Time.now
@name = "Min Soo"
erb   = ERB.new(template_file)
html  = erb.result(binding)
index_path = "index.html"
File.open(index_path, 'w'){|f| f.write html}
