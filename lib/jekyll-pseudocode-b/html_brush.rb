require 'jekyll-pseudocode-b/brush'

module Jekyll
  module PseudoCodeB
    class HtmlBrush < Jekyll::PseudoCodeB::Brush
      def sym(txt)
        "<span class='symbol'>#{txt}</span>"
      end

      def fn(txt)
        "<span class='function'>#{txt}</span>"
      end

      def var(txt, sub)
        if sub
          "<span class='variable'>#{txt}<sub>#{sub.slice(1,sub.size)}</sub></span>"
        else
          "<span class='variable'>#{txt}</span>"
        end
      end

      def comment(txt)
        "<span class='comment'>/* #{txt.strip} */</span>"
      end

      def string(txt)
        "<span class='string'>#{txt}</span>"
      end

      def indent(txt)
        txt.gsub! "\t", '   '
        "<span class='indent'>#{txt}</span>"
      end

      def op(txt)
        symbol = case txt
        when '<' then '&#65308;'
        when '>' then '&#65310;'
        when '<=' then '&#x2264;'
        when '>=' then '&#x2265;'
        when '<-' then '&#x2190;'
        when '->' then '&#x2192;'
        when '*' then '&times;'
        when '[' then '&#65339;'
        when ']' then '&#65341;'
        when '!=' then '&#x2260;'
        when '<>' then '&#x2260;'
        when '=' then '&#x3d;'
        when ':=' then '&#x2254;'
        when '+' then '&#x2b;'
        when '==' then '&#xff1d;'
        else txt
        end
        # FIXME: html conversion for some operators
        "<span class='operator'>#{symbol}</span>"
      end

      def math(txt)
        symbol = case txt
        when 'pi' then '&#x3C0;'
        else txt
        end
        # FIXME: html conversion for some operators
        "<span class='math-symbol'>#{symbol}</span>"
      end

      def plain(txt)
        "#{txt}"
      end
    end
  end
end