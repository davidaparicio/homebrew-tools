# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Namecheck < Formula
  desc ""
  homepage "https://github.com/davidaparicio/homebrew-tools"
  version "0.0.5"

  on_macos do
    url "https://github.com/davidaparicio/namecheck/releases/download/v0.0.5/namecheck_0.0.5_Darwin_x86_64.tar.gz"
    sha256 "140da6d2132abf1f794464ab5ecb998f92363c0e7df6fdc555357c242bee06a9"

    def install
      bin.install "namecheck"
    end

    if Hardware::CPU.arm?
      def caveats
        <<~EOS
          The darwin_arm64 architecture is not supported for the Namecheck
          formula at this time. The darwin_amd64 binary may work in compatibility
          mode, but it might not be fully supported.
        EOS
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/davidaparicio/namecheck/releases/download/v0.0.5/namecheck_0.0.5_Linux_x86_64.tar.gz"
      sha256 "5a7257568a29c9030374bacadcf69e0ada9dfdb285b737959be72799ae48460f"

      def install
        bin.install "namecheck"
      end
    end
  end
end
