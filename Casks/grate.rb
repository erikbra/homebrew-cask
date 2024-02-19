cask "grate" do
    version "1.6.1"

    name "grate"
    desc "grate - the SQL scripts migration runner"
    homepage "https://erikbra.github.io/grate/"

    if Hardware::CPU.arm?
      url "https://github.com/erikbra/grate/releases/download/#{version}/grate-osx-arm64-self-contained-#{version}.zip"
      sha256 "5b4c0b754924642e5edd4a87d48e64303be3af3dec824c371ec5b567aca3cdae"
    end
    if Hardware::CPU.intel?
      url "https://github.com/erikbra/grate/releases/download/#{version}/grate-osx-x64-self-contained-#{version}.zip"
      sha256 "a6d1489e03262b97e7d10fb95d8fa426936dd6006580925feb7ac76987a83ff9"
    end

    binary "grate"

end
