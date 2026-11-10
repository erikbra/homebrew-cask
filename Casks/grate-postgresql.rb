cask "grate-postgresql" do
  arch arm: "arm64", intel: "x64"

  version "2.3.0"
  sha256 arm:   "f8baa239d4ccd96bc881ffb38c310284ad977cdcd31a0123c29e6856e1a545f2",
         intel: "7abf6b6cb60af08b1a3484aab0e619fe6490d36c2c9c068c1b6ffbad5d029511"

  url "https://github.com/grate-devs/grate/releases/download/#{version}/grate-postgresql-osx-#{arch}-self-contained-#{version}.zip"
  name "grate-postgresql"
  desc "SQL scripts migration runner for PostgreSQL"
  homepage "https://grate-devs.github.io/grate/"

  conflicts_with cask: [
    "grate",
    "grate-sqlite",
    "grate-sqlserver",
    "grate-mariadb",
    "grate-oracle",
  ]
  depends_on :macos

  binary "grate"
end
