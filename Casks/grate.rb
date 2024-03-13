cask "grate" do
    version "1.6.2"

    name "grate"
    desc "grate - the SQL scripts migration runner"
    homepage "https://erikbra.github.io/grate/"

    if Hardware::CPU.arm?
      url "https://github.com/erikbra/grate/releases/download/#{version}/grate-osx-arm64-self-contained-#{version}.zip"
      sha256 "358c36a1b76e27d7eab291c34725600b23ab46d7add9b1c28a8ad30a54d4d00b"
    end
    if Hardware::CPU.intel?
      url "https://github.com/erikbra/grate/releases/download/#{version}/grate-osx-x64-self-contained-#{version}.zip"
      sha256 "b16a878e2d65d2fb5a7d2aa43b17f4e5cc2a9e19e76f08bf512a764523c666f9"
    end

    binary "grate"

end
