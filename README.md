# Introduction

Markdown is a markup language designed to be simple enough to let anyone write structured documents without the need of a visual editor.
I **strongly** encourage you to change the source of the varios parts to see what happens(the output will change as you type)

## Basic Styles
With this markup you can obtain *simple emphasis*(italic) or **strong emphasis**(bold), `source code` text or ~~strikethrough~~ text.

You may use also _this_ or __this__ notation to emphasize text, and you can use all _**`together`**_(you can mix `*` and `_`)

If you look at the source code
you may note that even 
if 
you
break
the
lines,
the text is kept together 
in a single paragraph

Paragraphs are delimited by blank lines, leading and trailing spaces are removed

You may force a line break with two spaces or with a `\`\
at the end of the line

## Links
- You can insert links in text like [this](tutorial.md)
- You may add a [title](https://agea.github.io/tutorial.md "Markdown Tutorial") to your link(for tooltip)
- If your link contains spaces you have to write the [link](<http://example.com/ space>) between `<>`
- You can use spaces and markup inside the [link **text**](https://agea.github.io/tutorial.md)
- Long links may decrease source readability, so it's possible to define all links somewhere in the document (the end is a good place) and just reference the [link][tutorial.md], you may also collapse the reference if it matches the link text (example: [tutorial.md][])
- You may also write directly the link: <https://agea.github.io/tutorial.md>
- It will work also for email addresses: <email@example.com> (you may write vaild email links also using [mailto](mailto:email@example.com) as protocol)

[tutorial.md]:
https://agea.github.io/tutorial.md

## Images
Syntax for images is like the syntax for links, but with a `!` before:

![alt text](img/1.png "image title")

![](img/2.png)

![ref]

[ref]:img/3.png 

## Lists
To define a list of items, just put a `*`, a `-`, or a `+` at the the start of the line of each item of the list followed by at least a space, to end the list, leave a blank line
* red
* green
* blue

- white
- grey
- black
+ yellow
+ pink
+ orange

You can also define numbered list, putting a number followed by a `.` or a `)` and a space at the start of the line (you may use any number, the first one is taken to start counting, then it will incremenet by one):

3. 
2. you may leave blank items

1) or start
1) again

You can insert any block inside a list, you have to respect the identation of the list item
- A *paragraph* of text (spanning multiple lines),
```
fenced code,
```
    idented code (4 spaces + 2 spaces for the list indentation, one blank line above, one below),

  >quotes,

  - another
    * list
      + (and so on...),
  - ### or headers

## Headers

There are two ways to define headers:

The biggest possible header
===============================

# You can also use this markup

(I prefer the first one as it's more readable when looking directly at the source code)

A sub heading
-------------
## This is the alternative format

### Then you can go smaller

#### And smaller

##### And even smaller

###### No, you can't go smaller than this

The good thing is that many tools that convert Markdown in HTML or PDF are able to generate index of your document, or links to the headers automatically (like GitHub does on the [source](http://git.io/vgz98) of Markdown files)

## Horizontal Rules

You can use horizontal rules to separate paragraphs: you may use three or more `*`
********
or three or more `_`(you may insert spaces before, after or between the characters, no other characters are allowed)
__ __ __ __

or three (or more) `-`

---

but you have to be careful as it is simillar to the header syntax, so if you write `---` immediately after a single line of text you get a header, either you have to leave a blank line before the `---` or you put it after multiple lines of text

## Source code

If you have to insert code in your document you have three choices:

1. inline code like this: `*Hello* **world!**"`
2. fenced code blocks(you may use ` ``` ` or `~~~` as delimiters):
``` markdown 
*Hello* **world!**
```
3. indented code blocks

~~with this works~~

      *Hello* 

      **world!**

You need to leave a blank line after a paragraph and 2 blank lines after a list to start an indented code block (if you want the code to be out of the list), and you may insert the name of the language immediatly after the opening code fence (so some renders may be able to highlight the syntax of the language)


## Blockquotes

> In this way you define a quoted block of text.
You can skip the initial `>` in intermediate lines if you are in the same paragraph
>
>>(you may nest levels)

    > but you can't indent with more than 3 spaces

## HTML

Text between `<` and `>` that looks like an HTML tag is parsed as a raw HTML tag and will be rendered in HTML

While it may be useful when writing online content, please note that your tag may be stripped for security reasons and in output other than HTML you may have unexpected results

<p class="text-right">Look I'm right!</p>

This is the list of allowed html tags(case sensitive):

`article`, `header`, `aside`, `hgroup`, `blockquote`, `hr`, `iframe`, `body`, `li`, `map`, `button`, `object`, `canvas`, `ol`,`caption`, `output`, `col`, `p`, `colgroup`, `pre`, `dd`, `progress`, `div`, `section`, `dl`,`table`, `td`, `dt`, `tbody`, `embed`,`textarea`, `fieldset`, `tfoot`, `figcaption`, `th`, `figure`, `thead`, `footer`, `tr`, `form`, `ul`, `h1`, `h2`, `h3`, `h4`, `h5`, `h6`, `video`, `script`, `style`

## Entities

With the goal of making Markdown as HTML-agnostic as possible, all [valid HTML entities][] are recognized and converted into unicode characteres

Named entities consist of `&` + any of the valid HTML5 entity name `;`

Some examples:

- `&amp;` &amp;
- `&copy;` &copy;
- `&rarr;` &rarr;
- `&larr;` &larr;

## Escaping

If you have to write something that would result in a Markdown valid syntax, you can escape the first character of your expression (you may also escape any other punctuation character) with a `/`

\*not emphasized*

\<br/>not a tag

\[not a link](/foo)

\`not code`

1.\not a list

\*not a list

\#not a header

\[foo]: /url "not a reference"

You may also escape the backslash itself\\*like this*

