# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Amass < Formula
  desc "In-depth Attack Surface Mapping and Asset Discovery"
  homepage "https://owasp.org/www-project-amass/"
  version "3.11.4"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/OWASP/Amass/releases/download/v3.11.4/amass_macos_amd64.zip"
    sha256 "3a02ed517606611b89422c767222698f8807dac4c661c3e4a42a2d34e152599d"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/OWASP/Amass/releases/download/v3.11.4/amass_linux_amd64.zip"
    sha256 "523c3d5b1189894d20c7fffcfcd82ce81cf9e3b5e7ceebbb1ffb80557d28f3a5"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/OWASP/Amass/releases/download/v3.11.4/amass_linux_arm.zip"
    sha256 "d5483e60d0bbbaabdf471ad0a73d561790387c5465621d4527f1e40d490d7977"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/OWASP/Amass/releases/download/v3.11.4/amass_linux_arm64.zip"
    sha256 "446592fa788f64d20ef84a5c7408dfcebc3540fd0e74e3366edc511792d2c266"
  end

  def install
    bin.install "amass"
  end

  test do
    system "#{bin}/amass --version"
  end
end
