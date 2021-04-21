# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Amass < Formula
  desc "In-depth Attack Surface Mapping and Asset Discovery"
  homepage "https://owasp.org/www-project-amass/"
  version "3.12.2"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/OWASP/Amass/releases/download/v3.12.2/amass_macos_amd64.zip"
    sha256 "e40e5a8d037213dad78f5382057d85401172c56dc679e97c6caf09cd9668ff0d"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/OWASP/Amass/releases/download/v3.12.2/amass_macos_arm64.zip"
    sha256 "62e0e1d510ae5ed3226cb5539abf1319e6ee8a150fe1b5d9c96f1924583889cd"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/OWASP/Amass/releases/download/v3.12.2/amass_linux_amd64.zip"
    sha256 "c8596b89925c293452ea7e21efc66551e666fe38c97baac72b9a5af8bef2071b"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/OWASP/Amass/releases/download/v3.12.2/amass_linux_arm.zip"
    sha256 "141dbd5480bd116609359fba44de1f0b88aadbbe8a579d5c2a176dfd2b6b08e7"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/OWASP/Amass/releases/download/v3.12.2/amass_linux_arm64.zip"
    sha256 "cfc78d522b03859d4d3f7cd499fdd934a5a70981698cecf9d6a0d415e9fb97eb"
  end

  def install
    bin.install "amass"
  end

  test do
    system "#{bin}/amass --version"
  end
end
