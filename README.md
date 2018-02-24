# jekyll-pseudocode-b
_A pseudocode/algorithm formatter for sites powered by Jekyll._

This is a fork from **[wkm/jekyll-pseudo](https://github.com/wkm/jekyll-pseudo)**.

Sometimes you don't want to use a particular programming language to
demonstrate a concept because of the syntactic overhead. **jekyll-pseudocode-b** lets
you use a gently styled free-formated representation.

## Usage:

    {% pseudocode %}
    Function swap(old, new)
      remaining <- quorumSize
      success <- False
      For Each host
        result[host] <- send(host, propose(old, new))
        If result[host] = "ok"
          remaining--

      If remaining > 1+quorumSize/2
        success <- True

      For Each result
        If success
          send(host, confirm(old, new))
        Else
          send(host, cancel(old, new))
    {% endpseudocode %}

## Language

* Indentation is preserved
* A word beginning with a capital letter is a keyword
* A word followed by parentheses is a function name
* All other words are variables
* Words within double quotes are generally strings

* These symbols are auto-formatted: `<-- <= >= --> =`

## Output
Output is annotated with `<span>` classes and can be styled using CSS. Typically keywords are made bold and variables are italicized.

With a bit of formatting, the above code becomes:

![Image](https://raw.github.com/wkm/jekyll-pseudo/master/doc/samplecode.png)

## Author

[Wiktor Macura](https://github.com/wkm) is the author of this plugin. This is fork for updated proposal version. Also it's based on the fork of [Victor Bazterra](https://github.com/baites).