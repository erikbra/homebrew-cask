cask "grate" do
    version "1.5.4"

    name "grate"
    desc "grate - the SQL scripts migration runner"
    homepage "https://erikbra.github.io/grate/"

    if Hardware::CPU.arm?
      url "https://github.com/erikbra/grate/releases/download/#{version}/grate-osx-arm64-self-contained-#{version}.zip"
      sha256 "ca0d18c2feccb7f3427841a4eef40417944b5683b639543322374f809b16b6df"
    end
    if Hardware::CPU.intel?
      url "https://github.com/erikbra/grate/releases/download/#{version}/grate-osx-x64-self-contained-#{version}.zip"
      sha256 "f9fd61912e40daaad845259a5942241002fda45ed702ac766a3a13bf6eee098c"
    end

    binary "grate"

end
