cask "grate-mariadb" do
  arch arm: "arm64", intel: "x64"

  version "2.3.0"
  sha256 arm:   "77579172eaa88462bf7f7445ceded089aa8ac84af34ed089d8fb4662dfed369c",
         intel: "4ce566cbcc56a61c736bf0e6bfa83124144c2a2244d0c9ed176499db16acd3a8"

  url "https://github.com/grate-devs/grate/releases/download/#{version}/grate-mariadb-osx-#{arch}-self-contained-#{version}.zip"
  name "grate-mariadb"
  desc "SQL scripts migration runner for MariaDB"
  homepage "https://grate-devs.github.io/grate/"

  conflicts_with cask: [
    "grate",
    "grate-sqlite",
    "grate-sqlserver",
    "grate-postgresql",
    "grate-oracle",
  ]
  depends_on :macos

  binary "grate"
end
