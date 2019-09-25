class Javae < Formula
  desc "compile and execute one-line Java programs"
  homepage "https://okorz001.github.io/javae/"
  head "https://github.com/okorz001/javae.git"

  depends_on :java
  # make install will use it if available
  #depends_on "groff" => :optional
  depends_on "bats-core" => :test

  def install
    system "make", "PREFIX=#{prefix}", "install"
  end

  test do
    system bin/"javae" 'System.out.println("Hello world!");'
  end
end
