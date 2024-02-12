cask "grate" do
    version "1.6.0"

    name "grate"
    desc "grate - the SQL scripts migration runner"
    homepage "https://erikbra.github.io/grate/"

    if Hardware::CPU.arm?
      url "https://github.com/erikbra/grate/releases/download/#{version}/grate-osx-arm64-self-contained-#{version}.zip"
      sha256 "831781a95cd38b84cc803d1bcc21110ecc9324af606cf0c7f58859f5527b6632"
    end
    if Hardware::CPU.intel?
      url "https://github.com/erikbra/grate/releases/download/#{version}/grate-osx-x64-self-contained-#{version}.zip"
      sha256 "c0688aec0e49bba492f3b1b90ff9206c801d6c5700d98c4b80eb348a0aa8b64c"
    end

    binary "grate"

end
