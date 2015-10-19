require 'redcarpet/compat'

class WelcomeController < ApplicationController
  def index
    renderer = Redcarpet::Render::HTML.new(no_links: true, hard_wrap: true, fenced_code_blocks: true, prettify: true)
    markdown = Redcarpet::Markdown.new(renderer, extensions = {})
    path_to_markdown = File.expand_path("../../views/welcome/mark.md", __FILE__)
    markdown_file = File.open(path_to_markdown, "r").read
    @markdown = markdown.render(markdown_file)

    # @markdown.each do |node|
    #   if node.element_name == 'code'
    #     Pygment.makeit_be_code(node)
    #   end
    # end

    # Markdown.new('this is my text').to_html
  end

  def mark
  end
end
