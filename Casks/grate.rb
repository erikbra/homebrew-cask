cask "grate" do
    version "1.5.2"

    name "grate"
    desc "grate - the SQL scripts migration runner"
    homepage "https://erikbra.github.io/grate/"

    if Hardware::CPU.arm?
      url "https://github.com/erikbra/grate/releases/download/#{version}/grate-osx.13-arm64-self-contained-#{version}.zip"
      sha256 "d7c412d654d156d8d3ad03d2732a67fb7367c7be7a03ebf558885fad86dbb48"
    end
    if Hardware::CPU.intel?
      url "https://github.com/erikbra/grate/releases/download/#{version}/grate-osx-x64-self-contained-#{version}.zip"
      sha256 "7a01f633ceee53a0ff8dabcefa042a5bb67c66a48ba945cdb40c90ad008e7779"
    end

    binary "grate"

end
