task :default => :pdf
# task :default => :page_pdf

source_files = Rake::FileList.new("**/*.md") do |fl|
# fl.exclude("~*")
  # fl.exclude(/^scratch\//)
  # fl.exclude do |f|
  #   `git ls-files #{f}`.empty?
  # end
end

task :pdf => source_files.ext(".pdf")

rule ".pdf" => ".md" do |t|
  # sh "kramdown #{t.source} >> #{t.name} "
  # sh "news_article #{t.source}"
  sh "touch #{t.name}"
  # puts " #{t.source}"
end

page_pdfs = Rake::FileList.new("**/section.pdf")
story_pdfs = Rake::FileList.new("**/story.pdf")

task :page_pdf => page_pdfs

rule "section.pdf" => "story.pdf" do |t|
  # sh "news_page #{t.source}"
  sh "touch #{t.name}"
  # puts " #{t.source}"
end