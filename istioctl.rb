require "FileUtils"

class Istioctl < Formula
  homepage "https://github.com/istio/istio"

  v = "v1.6.2" # CI Managed
  @@verNum = v.sub "v", ""
  url "https://github.com/istio/istio/releases/download/#{@@verNum}/istio-#{@@verNum}-osx.tar.gz"
  version v
  sha256 "e9a1912e554ef31308bb78a96ab7c43281c7be6f7892337c21dab462fdf97b3e" # CI Managed

  def install
    bin.install "bin/istioctl"
  end

  test do
    system "#{bin}/istioctl", "version"
  end
end
