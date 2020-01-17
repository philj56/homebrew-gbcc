class Gbcc < Formula
  desc "Game Boy and Game Boy Color emulator written in C"
  homepage "https://philj56.github.io/gbcc/"
  head "https://github.com/philj56/gbcc.git"

  depends_on "meson" => :build
  depends_on "ninja" => :build
  depends_on "pkg-config" => :build
  depends_on "scdoc" => :build
  depends_on "libepoxy"
  depends_on "libpng"
  depends_on "sdl2"
  depends_on "gtk+3" => :optional

  def install
    system "meson", "build", "--prefix=#{prefix}"
    system "ninja", "-C", "build", "install"
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! For Homebrew/homebrew-core
    # this will need to be a test that verifies the functionality of the
    # software. Run the test with `brew test gbcc`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "false"
  end
end
