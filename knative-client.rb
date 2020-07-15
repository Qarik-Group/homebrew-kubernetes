require "FileUtils"

class KnativeClient < Formula
  homepage "https://github.com/knative/client"

  v = "v0.16.0" # CI Managed
  url "https://github.com/knative/client/releases/download/#{v}/kn-darwin-amd64"
  version v
  sha256 "44fda335ff7ad133e4286b97d8760fd68c1719a758f9fc5c246e3da8a74893a1" # CI Managed

  def install
    FileUtils.mv("kn-darwin-amd64", "kn")
    bin.install "kn"
  end

  test do
    system "#{bin}/kn", "version"
  end
end
