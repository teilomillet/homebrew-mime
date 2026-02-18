cask "mime" do
  version "0.1.1"
  sha256 :no_check

  url "https://github.com/teilomillet/mime/releases/download/v#{version}/Mime_0.1.0_aarch64.dmg"
  name "Mime"
  desc "A distraction-free note-taking app"
  homepage "https://github.com/teilomillet/mime"

  app "Mime.app"

  postflight do
    system_command "/usr/bin/xattr", args: ["-cr", "#{appdir}/Mime.app"]
  end
end
