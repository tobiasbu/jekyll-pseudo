require 'liquid'
require 'jekyll-pseudocode-b/version'
require 'jekyll-pseudocode-b/grammar'
require 'jekyll-pseudocode-b/html_brush'


class String

  def remove_lines(i)
    split("\n")[i..-1].join("\n")
  end

end

module Jekyll
  class PseudoCodeBlockB < Liquid::Block
    def initialize(tag_name, text, tokens)
      super
      @brush = PseudoCodeB::HtmlBrush.new
      @grammar = PseudoCodeB::Grammar.new
    end

    

    def render(context)
      @text = super

      # for some reason is adding a line to initial code
      # let's remove
      @text = @text.remove_lines(1)

      @formatted = @grammar.format(@text, @brush)
      
      "<div class='pseudocode'>#{@formatted}</div>"
    end
  end
end


Liquid::Template.register_tag('pseudocode', Jekyll::PseudoCodeBlockB)
