require 'jekyll-pseudocode-b/brush'

module Jekyll
  module PseudoCodeB
    class MockBrush < Brush
      def sym(txt)
        "sym(#{txt})"
      end

      def fn(txt)
        "fn(#{txt})"
      end

      def objfn(obj, fnc)
        "v(#{obj})op(.)fn(#{fnc})"
      end

      def variable(txt)
        "v(#{txt})"
      end

      def number(txt)
        "num(#{txt})"
      end

      def var(txt, sub)
        if sub
          "#{txt}sub(#{sub.slice(1,sub.size)})"
        else
          txt
        end
      end

      def comment(txt)
        "c(#{txt})"
      end

      def op(txt)
        "op(#{txt})"
      end

      def string(txt)
        "str(#{txt})"
      end

      def indent(txt)
        "i(#{txt})"
      end

      def math(txt)
        "math(#{txt})"
      end

      def plain(txt)
        txt
      end
    end
  end
end