## ----eval=FALSE----------------------------------------------------------
#  require(devtools)
#  install_github("rfigshare", "ropensci")

## ------------------------------------------------------------------------
require(rfigshare)

## ----include = FALSE-----------------------------------------------------
# This loads the rOpenSci figshare sandbox credentials, so that the example 
# can run automatically during check and install.  Unlike normal figshare accounts,
# data loaded to this testing sandbox is periodically purged.  
fs_auth(token = "xdBjcKOiunwjiovwkfTF2QjGhROeLMw0y0nSCSgvg3YQxdBjcKOiunwjiovwkfTF2Q", token_secret = "4mdM3pfekNGO16X4hsvZdg")

## ------------------------------------------------------------------------
fs_author_search("Boettiger")

## ------------------------------------------------------------------------
id <- fs_create("Test title", "description of test")

## ------------------------------------------------------------------------
data(mtcars)
write.csv(mtcars, "mtcars.csv")
fs_upload(id, "mtcars.csv")

## ------------------------------------------------------------------------
fs_add_tags(id, "demo")

## ------------------------------------------------------------------------
fs_category_list()

## ------------------------------------------------------------------------
fs_add_categories(id, c("Education", "Software Engineering"))

## ------------------------------------------------------------------------
fs_make_private(id)

## ------------------------------------------------------------------------
data(mtcars)
write.csv(mtcars,"mtcars.csv")
id <- fs_new_article(title="A Test of rfigshare", 
                     description="This is a test", 
                     type="dataset", 
                     authors=c("Karthik Ram", "Scott Chamberlain"), 
                     tags=c("ecology", "openscience"), 
                     categories="Ecology", 
                     links="http://ropensci.org", 
                     files="mtcars.csv",
                     visibility="private")
unlink("mtcars.csv") # clean up

## ------------------------------------------------------------------------
fs_details(id)

## ------------------------------------------------------------------------
mine <- fs_browse()
mine[1:2]

## ------------------------------------------------------------------------
fs_ids(mine)

## ------------------------------------------------------------------------
fs_delete(id)

## ------------------------------------------------------------------------
citation("rfigshare")

