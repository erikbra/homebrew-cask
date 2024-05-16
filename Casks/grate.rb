cask "grate" do
    version "1.7.4"

    name "grate"
    desc "grate - the SQL scripts migration runner"
    homepage "https://erikbra.github.io/grate/"

    if Hardware::CPU.arm?
      url "https://github.com/erikbra/grate/releases/download/#{version}/grate-osx-arm64-self-contained-#{version}.zip"
      sha256 "2aea5bb8f63480306602624f3d37e766b8505e9997f58d814e89ed04bfc4fbcf"
    end
    if Hardware::CPU.intel?
      url "https://github.com/erikbra/grate/releases/download/#{version}/grate-osx-x64-self-contained-#{version}.zip"
      sha256 "dc48000ef18d9f64c54fb79caace475086ddad03e50c99c803bb8282ddb84d38"
    end

    binary "grate"

end
