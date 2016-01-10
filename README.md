# Resume

This is the source for my resume.

The easiest way to monitor it is to run the following.

``` bash
$ jekyll serve -w --config _config.yml,_config-dev.yml
```

The `_config-dev.yml` file contains development only overrides that
are ignored by GitHub.  Mainly this is used to make the pathing work
locally.

## Layout

As a resume the entire site is meant to compile into a single
document, but for easy of maintenance it is split into multiple files.
These files are included in the following order:

1. Header - Name, Email, Phone, and Links
1. Summary
1. Skills
1. Open Source
1. Experience
1. Education
1. Footer - Copyright

## Print Media

A print media CSS is provided which changes the colors and fonts to
look better on the printed page.  Also, the header and footer are
hidden and links are expanded.
