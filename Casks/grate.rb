cask "grate" do
    version "1.7.2"

    name "grate"
    desc "grate - the SQL scripts migration runner"
    homepage "https://erikbra.github.io/grate/"

    if Hardware::CPU.arm?
      url "https://github.com/erikbra/grate/releases/download/#{version}/grate-osx-arm64-self-contained-#{version}.zip"
      sha256 "85a8f1e4457db2e04ed4dd7bf2692b57f5881158225684412949201c7e8769fd"
    end
    if Hardware::CPU.intel?
      url "https://github.com/erikbra/grate/releases/download/#{version}/grate-osx-x64-self-contained-#{version}.zip"
      sha256 "b367bd6c62b1c6f6e5d1262431526b958e3bfcf28f738ce7d7c56ee3042f03b8"
    end

    binary "grate"

end
