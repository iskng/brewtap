class Msgexp < Formula
  desc "Tool to export iMessage data and run iMessage diagnostics"
  homepage "https://github.com/iskng/imessage-exporter"
  version "2.1.1c"

  url "https://github.com/iskng/imessage-exporter/releases/download/#{version}/imessage-exporter"
  sha256 "836cceca5573f005dafb8f859b74e35c22869a5372935599c786eb4af3fab5c1"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "imessage-exporter" => "msgexp"
  end

  test do
    system "#{bin}/msgexp", "--version"
  end
end 