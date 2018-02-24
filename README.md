# jekyll-pseudocode-b
_A pseudocode/algorithm formatter for sites powered by Jekyll._

This is a fork from **[wkm/jekyll-pseudo](https://github.com/wkm/jekyll-pseudo)**.

Sometimes you don't want to use a particular programming language to
demonstrate a concept because of the syntactic overhead. **jekyll-pseudocode-b** lets
you use a gently styled free-formated representation.

## Usage:

`gem 'jekyll-pseudocode-b'`

_Comming soon..._

## Language

* Indentation is preserved
* A word beginning with a capital letter is a keyword
* A word followed by parentheses is a function name
* All other words are variables
* Words within double quotes are generally strings

## Auto-Formatted Syntax

The following table shows auto-formated symbols:

| Syntax | Symbol   |
| :------: | :--------: |
| <-     | &#x2190; |
| ->     | &#x2192; |
| <--    | &#x27f5; |
| -->    | &#x27f6; |
| =>     | &#x2265; |
| <=     | &#x2264; |
| ==     | &#xff1d; |
| :=     | &#x2254; |
| =      | &#x3d;   |
| <      | &#65308; |
| >      | &#65310; |
| [      | &#65339; |
| ]      | &#65341; |
| <->    | &#x2194; |
| <-->   | &#x27f7; |
| pi     | &#x3C0;  |
| tau    | &#x1d6d5;  |

## Example

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

### Output

Output is annotated with `<span>` classes and can be styled using CSS. Typically keywords are made bold and variables are italicized.

With a bit of formatting, the above code becomes:

![Image](https://raw.github.com/wkm/jekyll-pseudo/master/doc/samplecode.png)

## Author

[Wiktor Macura](https://github.com/wkm) is the author of this plugin. This is fork for updated proposal version. Also it's based on the fork of [Victor Bazterra](https://github.com/baites).