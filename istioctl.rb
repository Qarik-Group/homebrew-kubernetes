require "FileUtils"

class Istioctl < Formula
  homepage "https://github.com/istio/istio"

  v = "v1.12.3" # CI Managed
  @@verNum = v.sub "v", ""
  url "https://github.com/istio/istio/releases/download/#{@@verNum}/istio-#{@@verNum}-osx.tar.gz"
  version v
  sha256 "6d311adaf8f7905a72fb273ef1b3c2b91c0bf9e6bd77d675a53e21e7ae0ab1f5" # CI Managed

  def install
    bin.install "bin/istioctl"
  end

  test do
    system "#{bin}/istioctl", "version"
  end
end
