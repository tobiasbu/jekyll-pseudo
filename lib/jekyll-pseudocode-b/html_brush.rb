require 'jekyll-pseudocode-b/brush'

module Jekyll
  module PseudoCodeB
    class HtmlBrush < Jekyll::PseudoCodeB::Brush

      def is_numeric?(s)
        begin
          Float(s)
        rescue
          false # not numeric
        else
          true # numeric
        end
      end

      def sym(txt)
        "<span class='symbol'>#{txt}</span>"
      end


      def fn(txt)
        "<span class='function'>#{txt}</span>"
      end

      def objfn(obj, fnc)
        "<span class='variable'>#{obj}</span><span class='operator'>.</span><span class='function'>#{fnc}</span>"
      end

      def number(txt)
        "<span class='numeric'>#{txt}</span>"
      end

      def special(txt, sub)
        if sub
          "<span class='special'>#{txt}<sub>#{sub.slice(1,sub.size)}</sub></span>"
        else
          "<span class='special'>#{txt}</span>"
        end
      end

      def var(txt, sub)
        if sub
          "<span class='variable'>#{txt}<sub>#{sub.slice(1,sub.size)}</sub></span>"
        else
          if (is_numeric?(txt))
            "<span class='numeric'>#{txt}</span>"
          else
            "<span class='variable'>#{txt}</span>"
          end
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
        when '<--' then '&#x27f5;'
        when '-->' then '&#x27f6;'
        when '<->' then '&#x2194;'
        when '<-->' then '&#x27f7;'
        when '*' then '&times;'
        when '[' then '&#65339;'
        when ']' then '&#65341;'
        when '!=' then '&#x2260;'
        when '<>' then '&#x2260;'
        when '=' then '&#x3d;'
        when ':=' then '&#x2254;'
        when '+' then '&#x2b;'
        when '-' then '-'
        when '/' then '/'
        when '==' then '&#xff1d;'
        else txt
        end
        # FIXME: html conversion for some operators
        "<span class='operator'>#{symbol}</span>"
      end

      def math(txt)
        symbol = case txt
        when 'pi' then '&#x3C0;'
        when 'tau' then '&#x1d6d5;'
        when 'infinity' then '&#x221e;'
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