# PLAY-behaviorome.github.io
Web site for the PLAY project.

The site is generated in R Markdown.
We acknowledge extensive use of this resource: Xie, Y., Allaire, J. J., & Grolemund, G. (2018). *R Markdown: The Definitive Guide*. CRC Press. Retrieved from https://market.android.com/details?id=book-octmDwAAQBAJ and the web-based version of the book located at <https://bookdown.org/yihui/rmarkdown/>.

## Rendering the site

To render the website, run `rmarkdown::render_site()` in R from the project root directory.
(If any packages need to be installed, you can do so using `install.packages("package_name")`)
The website files are copied to `docs/` where you can view them using a web browser or file editor.
If the local copy looks good:
1. Commit the changes - saves a local copy of the changes
- in R, in the Git tab, you will see the files that have been changed
- click on commit (top right)
- type in a commit message, click on the Commit button
2. Push the changes to GitHub
- click on Push (top right) - saves a copy on GitHub
3. Check the [website](https://PLAY-behaviorome.github.io/PLAY-project.org)


## Deploying the site

From RStudio, commit the relevant changes, then push the changes to GitHub.
We use [Netlify](netlify.com) to serve the files pushed to the `docs/` folder.
At the moment, the `play-project.org` domain is not live, but it will go live soon.
There is a short delay between pushing the new files to GitHub and having them appear live on the site.
