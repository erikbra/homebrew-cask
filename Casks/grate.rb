cask "grate" do
    version "1.7.0"

    name "grate"
    desc "grate - the SQL scripts migration runner"
    homepage "https://erikbra.github.io/grate/"

    if Hardware::CPU.arm?
      url "https://github.com/erikbra/grate/releases/download/#{version}/grate-osx-arm64-self-contained-#{version}.zip"
      sha256 "679c8a1e6990a014a571040e7197e2c7b3b96993a13bf9dbef3dc0f3e2af3d93"
    end
    if Hardware::CPU.intel?
      url "https://github.com/erikbra/grate/releases/download/#{version}/grate-osx-x64-self-contained-#{version}.zip"
      sha256 "7507788b3cc18a0286a1224ea9d25ccbd966d753b41104c1b967b5a52b1d26a4"
    end

    binary "grate"

end
