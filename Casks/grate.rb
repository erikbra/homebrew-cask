cask "grate" do
    version "1.5.1"

    name "grate"
    desc "grate - the SQL scripts migration runner"
    homepage "https://erikbra.github.io/grate/"

    if Hardware::CPU.arm?
      url "https://github.com/erikbra/grate/releases/download/#{version}/grate-osx.13-arm64-self-contained-#{version}.zip"
      sha256 "f6df7a07a63db78b98152cd7612cbe7a1910f9c08a996dfc409d7ffb192d4d16"
    end
    if Hardware::CPU.intel?
      url "https://github.com/erikbra/grate/releases/download/#{version}/grate-osx-x64-self-contained-#{version}.zip"
      sha256 "ee761411d881b6303a9d7ad696ccb03d92f8337f915fef57b8eaf23a6e85298c"
    end

    binary "grate"

end
