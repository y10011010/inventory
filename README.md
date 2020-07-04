# inventory

> If I knew one I'd insert a famous quote about how it's important to know what you
> want


#### re. Purpose

As a starting point for organising research material, I've created this repo to
manage a list of tags taxonomically.

The philosophy behind adding labels is as follows.

Top level categories should answer the question *what do you do?* Subcategories
should answer *what do you have?* -- ideally in unision with the question *what
do you need?*

All that remains is to fill in the gaps with want you want, and who you want to
meet.


#### Install

###### requirements

- `tree`
- `make`
- `jq`


###### running

Export your firefox bookmarks and run

`make bookmarks.json`

Now import and your bookmarks should reflect the changes in the directory
structure
