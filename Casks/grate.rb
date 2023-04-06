cask "grate" do
    version "1.5.0"

    name "grate"
    desc "grate - the SQL scripts migration runner"
    homepage "https://erikbra.github.io/grate/"

    if Hardware::CPU.arm?
      url "https://github.com/erikbra/grate/releases/download/#{version}/grate-osx.13-arm64-self-contained-#{version}.zip"
      sha256 "726bebb02dae910bb7068b8caff5921c090185c5a59a34ab1aad07a0b9e7cf34"
    end
    if Hardware::CPU.intel?
      url "https://github.com/erikbra/grate/releases/download/#{version}/grate-osx-x64-self-contained-#{version}.zip"
      sha256 "e8614336b692f741e0f0913374dce98c2a7a0ff55e71fb9eee588607adbe1c12"
    end

    binary "grate"

end
