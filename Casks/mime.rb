cask "mime" do
  version "0.1.2"
  sha256 "e0f8c61ea46e6dd9defed9e869a86521ec3e27a8de49a33f79a9f9f4a7ca5445"

  url "https://github.com/teilomillet/mime/releases/download/v#{version}/Mime_#{version}_aarch64.dmg"
  name "Mime"
  desc "A distraction-free note-taking app"
  homepage "https://github.com/teilomillet/mime"

  app "Mime.app"

  postflight do
    system_command "/usr/bin/xattr", args: ["-cr", "#{appdir}/Mime.app"]
  end
end
