cask "stagewhisper" do
  version "1.31.0"
  sha256 "287cc13e20e121dea59438148e329f6c543bda78dd131c9a76d0e4e625ed4ae1"

  url "https://github.com/StageWhisperIO/stagewhisper/releases/download/v#{version}/StageWhisper-Lite.dmg",
      verified: "github.com/StageWhisperIO/stagewhisper/"
  name "StageWhisper Lite"
  desc "Live-call transcription with on-device speech-to-text"
  homepage "https://stagewhisper.io/"

  livecheck do
    url "https://github.com/StageWhisperIO/stagewhisper"
    strategy :github_latest
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "StageWhisper Lite.app"

  zap trash: [
    "~/Library/Application Support/com.stagewhisper.free",
    "~/Library/Caches/com.stagewhisper.free",
    "~/Library/HTTPStorages/com.stagewhisper.free",
    "~/Library/Logs/com.stagewhisper.free",
    "~/Library/Preferences/com.stagewhisper.free.plist",
    "~/Library/Saved Application State/com.stagewhisper.free.savedState",
    "~/Library/WebKit/com.stagewhisper.free",
  ]
end
