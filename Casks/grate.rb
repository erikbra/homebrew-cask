cask "grate" do
    version "1.5.1"

    name "grate"
    desc "grate - the SQL scripts migration runner"
    homepage "https://erikbra.github.io/grate/"

    if Hardware::CPU.arm?
      url "https://github.com/erikbra/grate/releases/download/#{version}/grate-osx.13-arm64-self-contained-#{version}.zip"
      sha256 "c7962f94791f67800ebb867c5cf102bb8180d80e7e52f4395e210445df8ee6e7"
    end
    if Hardware::CPU.intel?
      url "https://github.com/erikbra/grate/releases/download/#{version}/grate-osx-x64-self-contained-#{version}.zip"
      sha256 "ee761411d881b6303a9d7ad696ccb03d92f8337f915fef57b8eaf23a6e85298c"
    end

    binary "grate"

end
