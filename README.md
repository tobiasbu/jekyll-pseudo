# jekyll-pseudocode-b
_A pseudocode/algorithm formatter for sites powered by Jekyll._

This is a updated fork from **[wkm/jekyll-pseudo](https://github.com/wkm/jekyll-pseudo)**.

Sometimes you don't want to use a particular programming language to
demonstrate a concept because of the syntactic overhead. **jekyll-pseudocode-b** lets
you use a gently styled free-formated representation.



## Usage:

0. Install the `gem`

```
gem install jekyll-pseudocode-b
```

1. Add the following line to your site's `Gemfile`

```GemFile
gem 'jekyll-pseudocode-b'
```

2. And add the following line to your site plugin's `_config.yml`

```yml
plugins:
  - jekyll-pseudocode-b
```

Note: if `jekyll --version` is less than `3.5` use:

```yml
gems:
  - jekyll-pseudocode-b
```

## Language

* Indentation is preserved
* A word beginning with a capital letter is a keyword
* A word followed by parentheses is a function name
* All other words are variables
* Words within double quotes are generally strings
* Variables that calls a function can reproduce the following output: `myVar.FUNCTION(a);`

## Output

Output is annotated with `<span>` classes and can be styled using CSS. Typically keywords are made bold and variables are italicized. Using the following code lines:

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

With a bit of formatting, the above code becomes:

![Image](https://raw.githubusercontent.com/tobiasbu/jekyll-pseudo/master/doc/output-sample.png)

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
| $pi     | &#x3C0;  |
| $tau    | &#x1d6d5;  |

## More Styles

You can also create your own CSS style for pseudo-codes like the images below. Check on the `css` folder for CSS files examples.

![Sample 0](https://raw.githubusercontent.com/tobiasbu/jekyll-pseudo/master/doc/output-sample-0.png)

![Sample 1](https://raw.githubusercontent.com/tobiasbu/jekyll-pseudo/master/doc/output-sample-1.png)

## Author

[Wiktor Macura](https://github.com/wkm) is the author of this plugin. This is fork for updated version with some new features. Also it's based on the fork of [Victor Bazterra](https://github.com/baites).