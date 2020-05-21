require "FileUtils"

class Istioctl < Formula
  homepage "https://github.com/istio/istio"

  v = "v1.6.0" # CI Managed
  @@verNum = v.sub "v", ""
  url "https://github.com/istio/istio/releases/download/#{@@verNum}/istio-#{@@verNum}-osx.tar.gz"
  version v
  sha256 "556de6b28a6c05a0e949c063b9b72dc091ded29a3f2885033ef5f3b211549929" # CI Managed

  def install
    bin.install "bin/istioctl"
  end

  test do
    system "#{bin}/istioctl", "version"
  end
end
