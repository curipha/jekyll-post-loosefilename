# jekyll-post-loosefilename

## What is this

Plug-in for Jekyll.

Jekyll no longer checks a format of filename in `_posts` directory after setting up this plug-in.
It will be able to accept any file name. (e.g. `post-without-date-on-filename.markdown`)

## Background

By default, files in `_posts` directory must follow the naming rule:

```
YEAR-MONTH-DAY-title.MARKUP
```

A date is obvious by a file system attribute.
Even a YAML front matter in the post file can also designate it.

I think there is absolutely no requirement to specify a date on a file name.

This plug-in tell Jekyll to the file modification time as a `YEAR`, `MONTH` and `DAY`.
Technically, it will be set by `File.mtime` method.

## How to use

Put `jekyll-post-loosefilename.rb` into your `_plugins` directory within your Jekyll project.
That's all.

## Requirement

Jekyll 2.5.3 with Ruby 2.1.5

## License

Public domain.

See `LICENSE` in this repository for more details.

