class Spice < Formula
  homepage "https://www.spice-space.org/"
  url "https://gitlab.freedesktop.org/spice/spice.git"
  version "master"

  depends_on "autoconf" => :build
  depends_on "autoconf-archive" => :build
  depends_on "autogen" => :build
  depends_on "automake" => :build
  depends_on "gobject-introspection" => :build
  depends_on "intltool" => :build
  depends_on "libtool" => :build
  depends_on "pkg-config" => :build
  depends_on "python@3" => :build
  depends_on "vala" => :build

  resource "pyparsing" do
    url "https://files.pythonhosted.org/packages/source/p/pyparsing/pyparsing-3.2.1.tar.gz"
    sha256 "61980854fd66de3a90028d679a954d5f2623e83144b5afe5ee86f43d762e5f0a"
  end

  depends_on "atk"
  depends_on "cairo"
  depends_on "gdk-pixbuf"
  depends_on "gettext"
  depends_on "glib"
  depends_on "gst-libav"
  depends_on "gst-plugins-bad"
  depends_on "gst-plugins-base"
  depends_on "gst-plugins-good"
  depends_on "gst-plugins-ugly"
  depends_on "gstreamer"
  depends_on "jpeg-turbo"
  depends_on "json-glib"
  depends_on "libusb"
  depends_on "lz4"
  depends_on "openssl@3"
  depends_on "opus"
  depends_on "pango"
  depends_on "pixman"
  depends_on "spice-protocol"
  depends_on "usbredir"

  def install
    python3 = Formula["python@3"].opt_bin/"python3"

    resource("pyparsing").stage do
      system python3, "-m", "pip", "install",
             "--no-build-isolation", "--no-deps",
             "--prefix=#{buildpath}/.pyparsing", "."
    end
    ENV.prepend_path "PYTHONPATH", Dir["#{buildpath}/.pyparsing/lib/python*/site-packages"].first

    system "./autogen.sh"
    system "./configure", "--disable-debug",
                          "--disable-dependency-tracking",
                          "--disable-silent-rules",
                          "--prefix=#{prefix}"
    system "make", "install"
  end
end
