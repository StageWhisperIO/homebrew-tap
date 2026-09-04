cask "stagewhisper" do
  version "1.32.0"
  sha256 "e0b1b73023e7661dc0beaa110914046526c6e34cd9f104f3d9fd8fc104b30456"

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
