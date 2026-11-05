cask "grate" do
  arch arm: "arm64", intel: "x64"

  version "2.2.0"
  sha256 arm:   "e398b3e7583fc92ca8bbd403d29ee84e9ff47edfea8233662865b2766ef09857",
         intel: "4b9d98adff0744b83021db5b83567a4fd89afd57ff13415f483713037ff35cf5"

  url "https://github.com/grate-devs/grate/releases/download/#{version}/grate-osx-#{arch}-self-contained-#{version}.zip"
  name "grate"
  desc "SQL scripts migration runner"
  homepage "https://grate-devs.github.io/grate/"

  binary "grate"
end
