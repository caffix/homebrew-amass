# This file was generated by GoReleaser. DO NOT EDIT.
class Amass < Formula
  desc "In-depth DNS Enumeration and Network Mapping"
  homepage "https://www.owasp.org/index.php/OWASP_Amass_Project"
  version "3.0.26"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/OWASP/Amass/releases/download/v3.0.26/amass_v3.0.26_macos_amd64.zip"
    sha256 "58dc937b8e6d0f2e4d047fd3a7e3dd826921a70bb48599a25886db26afc9bb58"
  elsif OS.linux?
    url "https://github.com/OWASP/Amass/releases/download/v3.0.26/amass_v3.0.26_linux_amd64.zip"
    sha256 "94552349cda371e45fb50f51a2805abb4d0d30fd70bdfd3b04655e544f2c4a06"
  end

  def install
    bin.install "amass"
  end
end
