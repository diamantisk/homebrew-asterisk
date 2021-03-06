# homebrew-asterisk

## 2017-12-31

 * Happy New Year!
 * Update pjsip to 2.7.1
   * Update to srtp2; add libgsm and libxml2 dependencies
   * Increase `PJSIP_MAX_PKT_LEN`, based on header from Asterisk's self
     build
 * Update asterisk to 15.1.5
   * Update devel build to the 15 branch
   * Tons of patches to get things building
   * Update to srtp2; add libgsm and libxml2 dependencies
   * Default compiler to clang, since GCC is now causing problems
 * Fixes for Travis CI
   * Add clang build for xcode9.2. Keeping xcode8.3, since GCC isn't working
     with the Xcode 9.2 headers
     (see https://gcc.gnu.org/bugzilla/show_bug.cgi?id=82200)
   * When tapping, check out the branch, so we build the latests PJSIP with
     Asterisk

## 2017-08-13

 * Add `--without-pjproject-bundled` configure flag. The default changed in
   Asterisk 15, and the bundled PJSIP does not build on macOS :-(

## 2017-07-14

 * Asterisk 14.6.0. Removes patch for BIND8 support, since that's been merged
   upstream.

## 2017-06-16

 * Only apply BIND8 patch for stable, since the PR has been merged to 14 and
   master.
 * Removed a debug print that slipped in there, and accidentally having
   dev-mode added to the matrix.

## 2017-06-10

 * Asterisk 14.5.0
   * patch for BIND8 support
   * Instead of all the pkg-config mess I was doing myself, rely on the
     superenv to get everything into the include and lib path correctly.
 * travis: switch to Xcode 8.3 as a build environment
   * uninstall oclint, because it conflicts with gcc
   * Set HOMEBREW_DEVELOPER, so we can update to brew between tags
     * Always opt for the freshest bugs
 * More brew-deprecation related fixes

## 2017-06-08

 * pjsip 2.6.0
   * Adjusted config to better match Asterisk's bundled pjsip
 * Added .editorconfig
 * Various fixes for stuff that's been deprecated from Homebrew, since it's
   been a while since I've done anything with this tap.

## 2016-11-28

 * Asterisk 14.2.0

## 2016-11-10

 * Asterisk 14.1.2

## 2016-10-31

 * Asterisk 14.1.1
 * Happy Halloween

## 2016-10-26

 * Asterisk 14.1.0. No longer requires patch for strdupa bug.

## 2016-10-10

 * #23 - add README note about configure failures with libxml2

## 2016-10-05

 * Asterisk 14.0.2

## 2016-09-27

 * Asterisk 14.0.1

## 2016-09-26

 * Asterisk 14.0.0
 * Move devel branch to 14

## 2016-09-12

 * Asterisk 13.11.2

## 2016-09-08

 * Asterisk 13.11.1 (Security Release)

## 2016-09-02

 * Asterisk 13.11.0

## 2016-08-29

 * Removing iksemel. Google code took down the tarball, and I cannot find
   another good source for it. The [GitHub project][iksemel] shows zero activity
   from the maintainer for nearly five years. Unless someone revives it, I'm
   calling it dead :-(

 [iksemel]: https://github.com/meduketto/iksemel

## 2016-08-22

 * srtp1: As was foretold by prophecy, the srtp1 formula was merged into
   homebrew/versions. Removing srtp and instead using homebrew/versions/srtp15
 * README: updated for the spiffy `brew services` command

## 2016-07-28

 * Asterisk 13.10.0
 * travis.yml: update to Xcode 7.3; OS X 10.11

## 2016-05-16

 * Asterisk 13.9.1

## 2016-05-10

 * Asterisk 13.9.0
 * Changed the versions for devel and head installs, so that they won't
   go stale over time.

## 2016-05-05

 * Adding srtp1 formula, since libsrtp2 has changes the file paths for all
   the things. This has been [submitted to homebrew-versions][hv-srtp1], so
   the formula here should be removed if that PR is accepted.

   [hv-srtp1]: https://github.com/Homebrew/homebrew-versions/pull/1244

## 2016-04-27

 * #22 - workaround for PJSIP errors compiling with Xcode 7.3. I think this
   isn't the best fix in the world, since I'm pretty sure that the install name
   and runpath on the libs are wrong. But it works for now.

## 2016-04-20

 * Asterisk 13.8.2

## 2016-04-15

 * Asterisk 13.8.1 (Security Release)

## 2016-04-08

 * Travis CI: install PJSIP with --verbose, so we can debug it

## 2016-03-30

 * Asterisk 13.8.0

## 2016-03-29

 * Added `--with-sounds-*` options for installing additional sound files

## 2016-02-09

 * Asterisk 13.7.2 (Security Release)

## 2016-02-05

 * Asterisk 13.7.1 (Security Release)

## 2016-01-21

 * Added docs for how to fix the `/usr/lib/bundle1.o: No such file or directory`
   problem

## 2016-01-18

 * Upgrade to Asterisk 13.7.0

## 2015-12-02

 * More #21 - Use system ncurses

## 2015-11-26

 * Removed unneeded dep on gmime
 * #21 - Use system ODBC and SQLite

## 2015-11-19

 * Added separate optimize and dev-mode options (although dev-mode still implies
   dont-optimize)

## 2015-10-29

 * Use GitHub instead of Gerrit for HEAD and devel builds, so we're cloning
   from a repo instead of a code review tool

## 2015-10-13

 * Added changelog
 * Upgrade to Asterisk 13.6.0
 * Upgrade to PJSIP 2.4.5
 * Travis: Refine brew upgrade to only upgrade dependencies
