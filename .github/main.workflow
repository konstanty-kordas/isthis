workflow "Build front" {
  on = "push"
  resolves = ["GitHub Action for npm"]
}

action "GitHub Action for npm" {
  uses = "actions/npm@e7aaefe"
  args = "run deploy"
}
