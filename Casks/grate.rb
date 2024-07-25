cask "grate" do
    version "1.8.0"

    name "grate"
    desc "grate - the SQL scripts migration runner"
    homepage "https://erikbra.github.io/grate/"

    if Hardware::CPU.arm?
      url "https://github.com/erikbra/grate/releases/download/#{version}/grate-osx-arm64-self-contained-#{version}.zip"
      sha256 "d0465592555c90207f7b48984c8b330bd055c618646172d4c7f15a48d254ea05"
    end
    if Hardware::CPU.intel?
      url "https://github.com/erikbra/grate/releases/download/#{version}/grate-osx-x64-self-contained-#{version}.zip"
      sha256 "7e14283ee5a97c81e8104aca32367d5f817a1b072caef101e16f9af94cfcb37e"
    end

    binary "grate"

end
