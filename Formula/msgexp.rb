class Msgexp < Formula
  desc "Tool to export iMessage data and run iMessage diagnostics"
  homepage "https://github.com/iskng/imessage-exporter"
  version "2.1.1a"

  url "https://github.com/iskng/imessage-exporter/releases/download/#{version}/imessage-exporter"
  sha256 "4d1f7ad1558ddf20a142247f89a193605c4871c212c4c2a91dba24c12c85fa68"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "imessage-exporter" => "msgexp"
  end

  test do
    system "#{bin}/msgexp", "--version"
  end
end 