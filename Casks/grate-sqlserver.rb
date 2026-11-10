cask "grate-sqlserver" do
  arch arm: "arm64", intel: "x64"

  version "2.3.0"
  sha256 arm:   "29102c11b18d2c98bce1c19b4cac2b1fecea98b9c13fe4c49eed95de2ee54da1",
         intel: "df3c88c01fc6e80a9dfbfcb4a97cecaca618e8409d0a7ab35333f8448dde0954"

  url "https://github.com/grate-devs/grate/releases/download/#{version}/grate-sqlserver-osx-#{arch}-self-contained-#{version}.zip"
  name "grate-sqlserver"
  desc "SQL scripts migration runner for SQLServer"
  homepage "https://grate-devs.github.io/grate/"

  conflicts_with cask: [
    "grate",
    "grate-sqlite",
    "grate-mariadb",
    "grate-postgresql",
    "grate-oracle",
  ]
  depends_on :macos

  binary "grate"
end
