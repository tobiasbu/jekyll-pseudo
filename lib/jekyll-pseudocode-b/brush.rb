module Jekyll
  module PseudoCodeB
    class Brush
      # format a symbol
      def sym(txt)
        raise 'not implemented'
      end

      # format a function
      def fn(txt)
        raise 'not implemented'
      end

      # format a object call function
      def objfn(txt)
        raise 'not implemented'
      end

      # format a variable
      def var(txt, sub)
        raise 'not implemented'
      end

      # format a special variable
      def special(txt, sub)
        raise 'not implemented'
      end

      # format a comment
      def comment(txt)
        raise 'not implemented'
      end

      # format an operator
      def op(txt)
        raise 'not implemented'
      end

      # format a string
      def string(txt)
        raise 'not implemented'
      end

      # render plain text
      def plain(txt)
        raise 'not implemented'
      end

      # render math symbols
      def math(txt)
        raise 'not implemented'
      end

      def number(txt)
        raise 'not implemented'
      end
    end
  end
end