# fairbankshackathon.github.io

public website for the fairbanks hackathon team

## Editing content

* Install hugo http://gohugo.io
* clone repo
* Edit files
* run `hugo server` to preview changes
* commit changes and deploy running `./deploy.sh` script

## A few things to be aware of

* the `public` folder is actually a subtree to `master` branch. Don't delete that. When you are ready to do a deploy you will want to make sure hugo is running without errors then ensure everything is committed including within the `public` folder.

## content

Most of the word content lives in the `content` in Markdown text files. See a typo, missing content, or poorly phrase content?  Likely best place to dive into is the `content` folder.

Main page is made up of `banner`, `cards`, and `projects`.

*banner* Currently is just a single markdown file in `content/banner/intro-to-fbxhax.md`. In the future we may want to consider a carousel of things.

*card* is a series of cards that is the bulk of the main content. This is a series of topics we want on our front page.  Editing existing cards should be straight forward.  The order of the cards is managed by the `weight` attribute with the lowest weight being ordered before higher weight items when rendered.

To create a new card:

    hugo new card/name-of-card.md

*projects* similar to cards. Likely going to be removed or de-emphasized on the main page in the future.  
