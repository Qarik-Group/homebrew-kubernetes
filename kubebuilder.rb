require "FileUtils"

class Kubebuilder < Formula
  homepage "https://github.com/kubernetes-sigs/kubebuilder"

  v = "v1.0.5" # CI Managed
  @@verNum = v.sub "v", ""
  url "https://github.com/kubernetes-sigs/kubebuilder/releases/download/#{v}/kubebuilder_#{@@verNum}_darwin_amd64.tar.gz"
  version v
  sha256 "a510ef34d947764f57385e11990ba70560bf2d520f56849160174d2c18544063" # CI Managed

  def install
    bin.install "bin/kubebuilder"
  end

  test do
    system "#{bin}/kubebuilder", "version"
  end
end
