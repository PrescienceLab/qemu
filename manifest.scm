(define-module (manifest)
  #:use-module (guix)
  #:use-module (guix packages)
  #:use-module (gnu packages))

(specifications->manifest
 (list "gcc-toolchain"
       "autoconf"
       "automake"
       "clang" ; clangd
       "make"
       "bear"
       "python"
       "ninja"
       "pkg-config"
       "glib" ; Also contains gthread
       "pixman"
       "git" ; Needed for configure to clone submodules
       "bash" ; configure script REQUIRES bash
       "xkeyboard-config" ; Make pc-bios pick up key layouts
       "coreutils" "moreutils" "binutils" "findutils" "diffutils"
       "sed" "gawk" "grep"))
