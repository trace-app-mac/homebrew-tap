class Tracecli < Formula
  desc "Query past Trace meetings and control the app from the command line"
  homepage "https://traceapp.info"
  version "1.1.0"
  url "https://github.com/trace-app-mac/homebrew-tap/releases/download/tracecli-v1.1.0/tracecli-1.1.0-arm64.tar.gz"
  sha256 "ff0dde9f25b80560a7f7bcb0bff41cd9ae13d60aeb55bba39d592af84377430a"
  depends_on arch: :arm64
  depends_on macos: :ventura

  def install
    bin.install "tracecli"
    # Generates and installs bash/zsh/fish completions by running
    #  at install time.
    generate_completions_from_executable(bin/"tracecli", "completion")
  end

  test do
    assert_match "tracecli", shell_output("#{bin}/tracecli --help")
  end
end
