cask "grate" do
    version "1.7.1"

    name "grate"
    desc "grate - the SQL scripts migration runner"
    homepage "https://erikbra.github.io/grate/"

    if Hardware::CPU.arm?
      url "https://github.com/erikbra/grate/releases/download/#{version}/grate-osx-arm64-self-contained-#{version}.zip"
      sha256 "d6ac4b6092d7c1b66aafc3fd86efc049efc4877340f3c4823f691113e8fc2814"
    end
    if Hardware::CPU.intel?
      url "https://github.com/erikbra/grate/releases/download/#{version}/grate-osx-x64-self-contained-#{version}.zip"
      sha256 "b90a50e1288d265e6fcedc0783afa59dd0071da71014cd23077815031d312267"
    end

    binary "grate"

end
