# fairbankshackathon.github.io

public website for the fairbanks hackathon team

## Editing content

* Install hugo http://gohugo.io
* clone repo
* Edit files
* run `hugo server` to preview changes
* commit changes and deploy running `./deploy.sh` script

## Key things pay attention to for content (currently)
* Front page `themes/layouts/partials` which is loaded from `themes/layouts/index.html`
* the `public` folder is actually a subtree to `master` branch. Don't delete that.
