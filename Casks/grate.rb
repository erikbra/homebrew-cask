cask "grate" do
  arch arm: "arm64", intel: "x64"

  version "2.3.0"
  sha256 arm:   "b5d7798e4dfeb425a9493d125b73b2e223460c9eb9e8f1556f444e4678469dd8",
         intel: "63af204d60cfe406cc5f8f55ac2a1ff0cfb98a6afb6d07c60e21fddc6fa0fa8a"

  url "https://github.com/grate-devs/grate/releases/download/#{version}/grate-osx-#{arch}-self-contained-#{version}.zip"
  name "grate"
  desc "SQL scripts migration runner"
  homepage "https://grate-devs.github.io/grate/"

  conflicts_with cask: [
    "grate-sqlite",
    "grate-sqlserver",
    "grate-mariadb",
    "grate-postgresql",
    "grate-oracle",
  ]
  depends_on :macos

  binary "grate"
end
