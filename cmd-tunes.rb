class CmdTunes < Formula
  desc "Play a snippet of music after long terminal commands"
  homepage "https://github.com/yinganwang/cmd‑tunes"
  url "https://github.com/yinganwang/cmd‑tunes/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "8eb28bfeb514a32390d4f9fb436ddb435fe328c7"
  license "MIT"

  # If you need any dependencies you could add here.
  # e.g., depends_on "mpg123" unless on macOS, etc.

  def install
    # Assuming you have just a shell script named cmdtunes.sh
    bin.install "cmdtunes.sh" => "cmdtunes"
    # If you want to allow users to source it instead of using the script,
    # you could also install a library directory or other files.
  end

  test do
    # A very simple test: check that `cmdtunes version` or `cmdtunes --help` returns something.
    system "#{bin}/cmdtunes", "--help"
  end
end
