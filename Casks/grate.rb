cask "grate" do
    version "1.7.3"

    name "grate"
    desc "grate - the SQL scripts migration runner"
    homepage "https://erikbra.github.io/grate/"

    if Hardware::CPU.arm?
      url "https://github.com/erikbra/grate/releases/download/#{version}/grate-osx-arm64-self-contained-#{version}.zip"
      sha256 "36c8a8de83d06c7d09d35515003d92f6ab6ffddd1d674bccf723689fd708c55f"
    end
    if Hardware::CPU.intel?
      url "https://github.com/erikbra/grate/releases/download/#{version}/grate-osx-x64-self-contained-#{version}.zip"
      sha256 "6a159151399ff23334dc94e01bd7a1d0122f20a3088976e6bad2b97737b10fc6"
    end

    binary "grate"

end
