require "FileUtils"

class KnativeClient < Formula
  homepage "https://github.com/knative/client"

  v = "vknative-v1.6.1" # CI Managed
  url "https://github.com/knative/client/releases/download/#{v}/kn-darwin-amd64"
  version v
  sha256 "156d6eb8af6c23b7b3eb0a7fc27101989d06b4f489fbe4fe90234a57d77ba469" # CI Managed

  def install
    FileUtils.mv("kn-darwin-amd64", "kn")
    bin.install "kn"
  end

  test do
    system "#{bin}/kn", "version"
  end
end
