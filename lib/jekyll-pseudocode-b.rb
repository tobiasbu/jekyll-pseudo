require 'liquid'
require 'jekyll-pseudocode-b/version'
require 'jekyll-pseudocode-b/grammar'
require 'jekyll-pseudocode-b/html_brush'

module Jekyll
  class PseudoCodeBlock < Liquid::Block
    def initialize(tag_name, text, tokens)
      super
      @brush = Pseudo::HtmlBrush.new
      @grammar = Pseudo::Grammar.new
    end

    def render(context)
      @text = super
      @formatted = @grammar.format(@text, @brush)
      "<div class='pseudocode'>#{@formatted}</div>"
    end
  end
end


Liquid::Template.register_tag('pseudocode', Jekyll::PseudoCodeBlock)
