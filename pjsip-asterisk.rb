  url 'http://www.pjsip.org/release/2.3/pjproject-2.3.tar.bz2'
  sha1 '42743b36d758fb0c7656a4b5f041d086efbcb587'

  keg_only "Specifically tuned just for asterisk"
    # Hack to truly disable opencore
                          "--enable-shared",
                          "--disable-opencore-amr",