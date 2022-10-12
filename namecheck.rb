# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Namecheck < Formula
  desc ""
  homepage "https://github.com/davidaparicio/homebrew-tools"
  version "0.0.3"

  on_macos do
    url "https://github.com/davidaparicio/namecheck/releases/download/v0.0.3/namecheck_0.0.3_Darwin_x86_64.tar.gz"
    sha256 "244a6290ee45f248fac10f1c0830bb27eb59471d05be0eababcc95d67e06774e"

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
      url "https://github.com/davidaparicio/namecheck/releases/download/v0.0.3/namecheck_0.0.3_Linux_x86_64.tar.gz"
      sha256 "31be7bb22216885a5d5154888ab83667d37357f35594901adf71be940935a655"

      def install
        bin.install "namecheck"
      end
    end
  end
end
