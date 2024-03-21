pr(){
  # open pull-request from github
  # use redmine issue url as messages
  # copy pull request url
  rhost=`git config redmine.host`
  head=`git rev-parse --abbrev-ref HEAD`
  git push origin HEAD  # make sure latest update pushed
  git pull-request -m "TestTitle

  $rhost$head" | pbcopy
}
