workflow "Build and Publish" {
  on = "push"
  resolves = "ActionTest"
}

action "ActionTest" {
  uses = "olsi-qose/actions@master"
  runs = "./action/lib/entrypoint.sh"
  args = ""
}