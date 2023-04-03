#set original repo as the upstream
gert::git_remote_add ("https://github.com/rostools/coding-club.git", "upstream")

#create a branch
usethis::pr_init("add-action")

#see a list of branches
gert::git_branch_list()

#create a github folder
usethis::use_github_action("build-website",
                           url = "https://raw.githubusercontent.com/quarto-dev/quarto-actions/main/examples/quarto-publish-example.yml")

#creating a pull request
usethis::pr_push()

