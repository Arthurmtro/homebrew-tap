cask "opaline" do
  version "1.0.1"
  sha256 "2d8e4135f45a8b92dfee06c88d476e6adb456c3eceecacfbdd4a1ada61b12d40"

  url "https://github.com/Arthurmtro/Opaline/releases/download/v#{version}/Opaline-#{version}-macOS.zip"
  name "Opaline"
  desc "Design one color theme and apply it to your terminal, editor, browser and wallpaper"
  homepage "https://github.com/Arthurmtro/Opaline"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :sequoia"

  app "Opaline.app"

  zap trash: [
    "~/Library/Application Support/Opaline",
    "~/Library/Preferences/app.opaline.Opaline.plist",
  ]
end
