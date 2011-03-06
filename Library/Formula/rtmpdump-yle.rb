require 'formula'

class RtmpdumpYle <Formula
  url 'http://users.tkk.fi/~aajanki/rtmpdump-yle/rtmpdump-yle-1.4.1.tar.gz'
  homepage 'http://users.tkk.fi/~aajanki/rtmpdump-yle/index.html'
  md5 '847b33a19161390d2dc568255af244d1'

  depends_on 'json-c'

  def install
    system "make SYS=darwin"
    system "make install SYS=darwin prefix=#{prefix} mandir=#{man}"
  end
end
