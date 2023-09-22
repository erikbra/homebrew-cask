cask "grate" do
    version "1.5.3"

    name "grate"
    desc "grate - the SQL scripts migration runner"
    homepage "https://erikbra.github.io/grate/"

    if Hardware::CPU.arm?
      url "https://github.com/erikbra/grate/releases/download/#{version}/grate-osx-arm64-self-contained-#{version}.zip"
      sha256 "2dfe0ec6c634906174927266dedee91af1eb1cfcb250acbe606eaa280de9e07c"
    end
    if Hardware::CPU.intel?
      url "https://github.com/erikbra/grate/releases/download/#{version}/grate-osx-x64-self-contained-#{version}.zip"
      sha256 "328d5057c2b63546551ee337d864031eab0135ff180054868a2306d3732f7d0a"
    end

    binary "grate"

end
