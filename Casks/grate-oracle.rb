cask "grate-oracle" do
  arch arm: "arm64", intel: "x64"

  version "2.3.0"
  sha256 arm:   "5106ffeb7893bf2853a450716456b07d8cd20ee41b08d07a945427d0aacc0547",
         intel: "0507b2e8fc26c0195653ab0c69d2134661f16d18f3306e7f67c5d4d9fd1b51fe"

  url "https://github.com/grate-devs/grate/releases/download/#{version}/grate-oracle-osx-#{arch}-self-contained-#{version}.zip"
  name "grate-oracle"
  desc "SQL scripts migration runner for Oracle"
  homepage "https://grate-devs.github.io/grate/"

  conflicts_with cask: [
    "grate",
    "grate-sqlite",
    "grate-sqlserver",
    "grate-mariadb",
    "grate-postgresql",
  ]
  depends_on :macos

  binary "grate"
end
