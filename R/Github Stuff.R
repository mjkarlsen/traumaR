usethis::use_git()
usethis::use_github()
usethis::use_mit_license("Matt Carlson")


usethis::use_git_config(
  scope = "ptos",
  user.name = "ultramattyice",
  user.email = "matthew.j.carlson00@gmail.com"
)



usethis::use_git_remote(name = "ptos",
                        url = "https://github.com/ultramattyice/ptos.git",
                        overwrite = TRUE)
usethis::use_git_remote(name = "origin", url = "https://github.com/ultramattyice/ptos.git")
