cask "grate" do
    version "1.6.3"

    name "grate"
    desc "grate - the SQL scripts migration runner"
    homepage "https://erikbra.github.io/grate/"

    if Hardware::CPU.arm?
      url "https://github.com/erikbra/grate/releases/download/#{version}/grate-osx-arm64-self-contained-#{version}.zip"
      sha256 "4f3560e348aefd320912186b08760b77daa5d74b4321b00b10b19d0822458a93"
    end
    if Hardware::CPU.intel?
      url "https://github.com/erikbra/grate/releases/download/#{version}/grate-osx-x64-self-contained-#{version}.zip"
      sha256 "a51a9021ff8bbc08ef78181ce4eeaf0240b9de1b5ef6b53cc3e6f0c3cf1d3f0d"
    end

    binary "grate"

end
