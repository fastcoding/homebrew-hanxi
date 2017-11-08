class Usbredir < Formula
  desc "FreeDesktop usbredir libraries and utilities"
  homepage "https://cgit.freedesktop.org/spice/usbredir/"
  url "https://github.com/SPICE/usbredir/archive/usbredir-0.7.1.tar.gz"
  sha256 "17e99e8873eb140fc29eb5973ee61192fac53cc50a2dd1c9a811ac0cb76b89a0"

  def install
    system "./autogen.sh"
    system "./configure", "--disable-debug",
                          "--disable-dependency-tracking",
                          "--disable-silent-rules",
                          "--prefix=#{prefix}"
    system "make", "install"
  end

  test do
    system "#{bin}/usbredirtestclient"
  end
end
