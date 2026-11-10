cask "grate-sqlite" do
  arch arm: "arm64", intel: "x64"

  version "2.3.0"
  sha256 arm:   "d708143f1a05478ec39f4e3441babf994014d1067997488b46ba6026e2606ea2",
         intel: "75fae837b94014dc1073193440f801e637693b8fd0b8648cc1a5c824d7b81a57"

  url "https://github.com/grate-devs/grate/releases/download/#{version}/grate-sqlite-osx-#{arch}-self-contained-#{version}.zip"
  name "grate-sqlite"
  desc "SQL scripts migration runner for SQLite"
  homepage "https://grate-devs.github.io/grate/"

  conflicts_with cask: [
    "grate",
    "grate-sqlserver",
    "grate-mariadb",
    "grate-postgresql",
    "grate-oracle",
  ]
  depends_on :macos

  binary "grate"
end
