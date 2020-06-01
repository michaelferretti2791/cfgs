#!/bin/bash

# Ask for the administrator password upfront.
sudo -v

# Keep-alive: update existing `sudo` time stamp until the script has finished.
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# Check for Homebrew,
# Install if we don't have it
if test ! $(which brew); then
  echo "Installing homebrew..."
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Make sure we are using the latest Homebrew.
brew update
brew upgrade
# brew prune
brew cleanup

brew tap homebrew/cask-versions

echo "------------------------------"
echo "Updating Bash"
echo "------------------------------"

brew install bash
brew install bash-completion
# We installed the new shell, now we have to activate it
# echo "Adding the newly installed shell to the list of allowed shells"
# Prompts for password
# sudo bash -c 'echo /usr/local/bin/bash >> /etc/shells'
# Change to the new shell, prompts for password
# chsh -s /usr/local/bin/bash
brew install zsh


echo "------------------------------"
echo "Installing Programming Langs"
echo "------------------------------"

brew tap adoptopenjdk/openjdk
brew cask install --appdir="/Applications" adoptopenjdk/openjdk/adoptopenjdk8
brew cask install --appdir="/Applications" adoptopenjdk11
brew cask install --appdir="/Applications" adoptopenjdk
brew install python
brew install node
brew install scala
brew install sbt
brew install go

# Install java stuff
brew install ant
brew install maven
brew install gradle

brew install apache-spark

echo "------------------------------"
echo "Installing Cloud CLI's"
echo "------------------------------"

# Install cloud cli
brew install awscli
brew install azure-cli
brew cask install --appdir="/Applications" google-cloud-sdk
brew tap heroku/brew && brew install heroku

echo "------------------------------"
echo "Installing Brew Packages"
echo "------------------------------"

# https://www.gnu.org/software/coreutils/manual/coreutils.html - basic gnu unix
# ---------------------------------------------------
# Output of entire files
# ---------------------------------------------------
# cat: Concatenate and write files
# tac: Concatenate and write files in reverse
# nl: Number lines and write files
# od: Write files in octal or other formats
# base32: Transform data into printable data
# base64: Transform data into printable data
# basenc: Transform data into printable data
# ---------------------------------------------------
# Formatting file contents
# ---------------------------------------------------
# fmt: Reformat paragraph text
# pr: Paginate or columnate files for printing
# fold: Wrap input lines to fit in specified width
# ---------------------------------------------------
# Output of parts of files
# ---------------------------------------------------
# head: Output the first part of files
# tail: Output the last part of files
# split: Split a file into fixed-size pieces
# csplit: Split a file into context-determined pieces
# ---------------------------------------------------
# Summarizing files
# ---------------------------------------------------
# wc: Print newline, word, and byte counts
# sum: Print checksum and block counts
# cksum: Print CRC checksum and byte counts
# b2sum: Print or check BLAKE2 digests
# md5sum: Print or check MD5 digests
# sha1sum: Print or check SHA-1 digests
# sha2 utilities: Print or check SHA-2 digests
# ---------------------------------------------------
# Operating on sorted files
# ---------------------------------------------------
# sort: Sort text files
# shuf: Shuffle text files
# uniq: Uniquify files
# comm: Compare two sorted files line by line
# ptx: Produce a permuted index of file contents
# tsort: Topological sort
# ---------------------------------------------------
# Permuted indexes
# ---------------------------------------------------
# ptx: Produce permuted indexes
# ---------------------------------------------------
# Operating on fields
# ---------------------------------------------------
# cut: Print selected parts of lines
# paste: Merge lines of files
# join: Join lines on a common field
# ---------------------------------------------------
# Operating on characters
# ---------------------------------------------------
# tr: Translate, squeeze, and/or delete characters
# expand: Convert tabs to spaces
# unexpand: Convert spaces to tabs
# ---------------------------------------------------
# Directory listing
# ---------------------------------------------------
# ls: List directory contents
# dir: Briefly list directory contents
# vdir: Verbosely list directory contents
# dircolors: Color setup for ls
# ---------------------------------------------------
# Basic operations
# ---------------------------------------------------
# cp: Copy files and directories
# dd: Convert and copy a file
# install: Copy files and set attributes
# mv: Move (rename) files
# rm: Remove files or directories
# shred: Remove files more securely
# ---------------------------------------------------
# Special file types
# ---------------------------------------------------
# link: Make a hard link via the link syscall
# ln: Make links between files
# mkdir: Make directories
# mkfifo: Make FIFOs (named pipes)
# mknod: Make block or character special files
# readlink: Print value of a symlink or canonical file name
# rmdir: Remove empty directories
# unlink: Remove files via unlink syscall
# ---------------------------------------------------
# Changing file attributes
# ---------------------------------------------------
# chown: Change file owner and group
# chgrp: Change group ownership
# chmod: Change access permissions
# touch: Change file timestamps
# ---------------------------------------------------
# Disk usage
# ---------------------------------------------------
# df: Report file system disk space usage
# du: Estimate file space usage
# stat: Report file or file system status
# sync: Synchronize cached writes to persistent storage
# truncate: Shrink or extend the size of a file
# ---------------------------------------------------
# Printing text
# ---------------------------------------------------
# echo: Print a line of text
# printf: Format and print data
# yes: Print a string until interrupted
# ---------------------------------------------------
# Conditions
# ---------------------------------------------------
# false: Do nothing, unsuccessfully
# true: Do nothing, successfully
# test: Check file types and compare values
# expr: Evaluate expressions
# ---------------------------------------------------
# Redirection
# ---------------------------------------------------
# tee: Redirect output to multiple files or processes
# ---------------------------------------------------
# File name manipulation
# ---------------------------------------------------
# basename: Strip directory and suffix from a file name
# dirname: Strip last file name component
# pathchk: Check file name validity and portability
# mktemp: Create temporary file or directory
# realpath: Print resolved file names
# ---------------------------------------------------
# Working context
# ---------------------------------------------------
# pwd: Print working directory
# stty: Print or change terminal characteristics
# printenv: Print all or some environment variables
# tty: Print file name of terminal on standard input
# ---------------------------------------------------
# User information
# ---------------------------------------------------
# id: Print user identity
# logname: Print current login name
# whoami: Print effective user ID
# groups: Print group names a user is in
# users: Print login names of users currently logged in
# who: Print who is currently logged in
# ---------------------------------------------------
# System context
# ---------------------------------------------------
# arch: Print machine hardware name
# date: Print or set system date and time
# nproc: Print the number of processors
# uname: Print system information
# hostname: Print or set system name
# hostid: Print numeric host identifier
# uptime: Print system uptime and load
# ---------------------------------------------------
# SELinux context
# ---------------------------------------------------
# chcon: Change SELinux context of file
# runcon: Run a command in specified SELinux context
# ---------------------------------------------------
# Modified command invocation
# ---------------------------------------------------
# chroot: Run a command with a different root directory
# env: Run a command in a modified environment
# nice: Run a command with modified niceness
# nohup: Run a command immune to hangups
# stdbuf: Run a command with modified I/O buffering
# timeout: Run a command with a time limit
# ---------------------------------------------------
# Process control
# ---------------------------------------------------
# kill: Sending a signal to processes.
# ---------------------------------------------------
# Delaying
# ---------------------------------------------------
# sleep: Delay for a specified time
# ---------------------------------------------------
# Numeric operations
# ---------------------------------------------------
# factor: Print prime factors
# numfmt: Reformat numbers
# seq: Print numeric sequences
brew install coreutils

# https://joeyh.name/code/moreutils/
# chronic: runs a command quietly unless it fails
# combine: combine the lines in two files using boolean operations
# errno: look up errno names and descriptions
# ifdata: get network interface info without parsing ifconfig output
# ifne: run a program if the standard input is not empty
# isutf8: check if a file or standard input is utf-8
# lckdo: execute a program with a lock held
# mispipe: pipe two commands, returning the exit status of the first
# parallel: run multiple jobs at once
# pee: tee standard input to pipes
# sponge: soak up standard input and write to a file
# ts: timestamp standard input
# vidir: edit a directory in your text editor
# vipe: insert a text editor into a pipe
# zrun: automatically uncompress arguments to command
brew install moreutils

# GNU Binutils collection of binary tools
# https://www.gnu.org/software/binutils/binutils.html

# ld: the GNU linker.
# as: the GNU assembler.
# addr2line: Converts addresses into filenames and line numbers.
# ar: A utility for creating, modifying and extracting from archives.
# c++filt: Filter to demangle encoded C++ symbols.
# dlltool: Creates files for building and using DLLs.
# gold: A new, faster, ELF only linker, still in beta test.
# gprof: Displays profiling information.
# nlmconv: Converts object code into an NLM.
# nm: Lists symbols from object files.
# objcopy: Copies and translates object files.
# objdump: Displays information from object files.
# ranlib: Generates an index to the contents of an archive.
# readelf: Displays information from any ELF format object file.
# size: Lists the section sizes of an object or archive file.
# strings: Lists printable strings from files.
# strip: Discards symbols.
# windmc: A Windows compatible message compiler.
# windres: A compiler for Windows resource files.
brew install binutils

# https://www.gnu.org/software/findutils/manual/html_mono/find.html
# brew install findutils

# File comparison utilities
# https://www.gnu.org/software/diffutils/manual/diffutils.html
# diff
# diff3
# sdiff
# cmp
# patch
# brew install diffutils

# https://www.nongnu.org/renameutils/ - File rename utils

# qmv: ("quick move") program allows file names to be edited in a text editor
# The names of all files in a directory are written to a text file, which is
# then edited by the user. The text file is read and parsed, and the changes
# are applied to the files.

# qcp: ("quick cp") program works like qmv, but copies files instead of moving them

# imv: ("interactive move") program, is trivial but useful when you are too lazy
# to type (or even complete) the name of the file to rename twice. It allows a file
# name to be edited in the terminal using the GNU Readline library. icp copies files.

# deurlname: program removes URL encoded characters (such as %20 representing space)
# from file names

brew install renameutils

# http://docutils.sourceforge.net/
# brew install docutils

# https://www.languagetool.org/ - proofreading
# brew install languagetool

# https://www.w3.org/Tools/HTML-XML-utils/README - simple utilities for manipulating HTML and XML files
# brew install html-xml-utils

# https://billposer.org/Software/unidesc.html
# Uniname
# Unidesc
# Unihist
# ExplicateUTF8
# Utf8lookup
# Unireverse
# Unifuzz
# brew install uniutils

# https://nlp.stanford.edu/software/lex-parser.shtml - natural language parser
# brew install stanford-parser

# https://www.cs.indiana.edu/~kinzler/align/ - text column alignment filter
# brew install align

##
## Install Useful Binaries Not on OSX
##

# https://www.gnu.org/software/wget/manual/wget.html
brew install wget

# https://beyondgrep.com/documentation/
brew install ack

# https://github.com/adrianlopezroche/fdupes - https://github.com/adrianlopezroche/fdupes/blob/master/README
brew install fdupes
brew install rename
brew install ssh-copy-id
brew install tree
brew install trash
brew install htop
brew install calc

# https://www.nongnu.org/rdiff-backup/
# brew install rdiff-backup

# https://www.httrack.com/
# brew install httrack
# brew install lynx

# Install git stuff
brew install git
brew install git-lfs
brew install git-flow
brew install git-extras

# This gives you sshfs mounting
# brew install osxfusecase

# Some Optional Stuff
# brew install speedtest_cli
# https://pandoc.org/ - universal document converter
brew install pandoc
# https://zlib.net/pigz/ - A parallel implementation of gzip for modern multi-processor, multi-core machines
brew install pigz
# https://www.ivarch.com/programs/pv.shtml - Pipe Viewer - is a terminal-based tool for monitoring the progress of data through a pipeline
# brew install pv
# brew install memcached
# https://github.com/wting/autojump - autojump - a faster way to navigate your filesystem
brew install autojump
brew install peco
# brew install httpie
brew install tmux
# https://hub.github.com/ - hub is an extension to command-line git that helps you do everyday GitHub tasks without ever leaving the terminal.
# brew install hub
# https://www.joedog.org/siege-home/ - http load testing and benchmarking utility.
# brew install siege
# brew install imagemagick
brew install emacs
# https://github.com/rsnapshot/rsnapshot - a tool for backing up your data using rsync
# brew install rsnapshot
# brew install youtube-dl
# http://p7zip.sourceforge.net/ - p7zip is a port of 7za.exe for POSIX systems like Unix (
brew install p7zip
# https://github.com/facebook/watchman - Watches files and records, or triggers actions, when they change
brew install watchman

# Install some CTF tools for hacking, cracking, crypto, etc.
# https://aircrack-ng.org/ - Next-generation aircrack with lots of new features
# brew install aircrack-ng
# https://rtyley.github.io/bfg-repo-cleaner/ - git repo cleaner
# brew install bfg
# https://github.com/ReFirmLabs/binwalk - Firmware analysis Tool
# brew install binwalk
# https://code.google.com/archive/p/cifer/ -  automating classical cipher cracking in C
# brew install cifer
# https://github.com/pxb1988/dex2jar - Tools to work with android .dex and java .class files
# brew install dex2jar
# https://packages.debian.org/sid/dns2tcp - tools allowing to encapsulate a TCP session in DNS packets
# brew install dns2tcp
# http://oldhome.schmorp.de/marc/fcrackzip.html
# brew install fcrackzip
# http://foremost.sourceforge.net/
# brew install foremost
# https://github.com/bwall/HashPump - tool to exploit the hash length extension attack
# brew install hashpump
# https://github.com/vanhauser-thc/thc-hydra
# brew install hydra
# https://www.openwall.com/john/
# brew install john
# http://www.zeroflux.org/projects/knock
# brew install knock
# http://netpbm.sourceforge.net/ - Image Manipulation
# brew install netpbm
# https://nmap.org/ - Network Mapper
brew install nmap
# http://www.libpng.org/pub/png/apps/pngcheck.html
# brew install pngcheck
# http://netcat.sourceforge.net/
brew install netcat
# http://www.dest-unreach.org/socat/
brew install socat
# http://sqlmap.org/ - SQL injection testing
# brew install sqlmap
# https://github.com/simsong/tcpflow - TCP/IP Multiplexer
# brew install tcpflow
# https://tcpreplay.appneta.com/ - Replay captured traffic
# brew install tcpreplay
# http://www.tcptrace.org/ - Analyze tcpdump output
# brew install tcptrace
# https://cr.yp.to/ucspi-tcp.html - TCP client-server applications
# brew install ucspi-tcp # `tcpserver` etc.

# https://github.com/nvbn/thefuck - corrects errors in previous console commands
brew install thefuck

brew install mackup

# Development
echo "---------------------------------------"
echo "Installing Development Apps From Brew"
echo "---------------------------------------"
brew cask install --appdir="/Applications" iterm2
# brew cask install --appdir="/Applications" emacs
# brew cask install --appdir="/Applications" sourcetree
# brew cask install --appdir="/Applications" intellij-idea-ce
# brew cask install --appdir="/Applications" cyberduck
# brew cask install --appdir="/Applications" osxfuse
# brew cask install --appdir="/Applications" macfusion
# brew cask install --appdir="/Applications" eclipse
# brew cask install --appdir="/Applications" xquartz
# brew cask install --appdir="/Applications" go2shell
brew cask install --appdir="/Applications" dotnet-sdk
brew cask install --appdir="/Applications" virtualbox
brew cask install --appdir="/Applications" visual-studio-code
brew cask install --appdir="/Applications" skim
brew cask install --appdir="/Applications" wireshark
# brew cask install --appdir="/Applications" zenmap

# Core Functionality
echo "------------------------------------"
echo "Installing Browsers From Brew"
echo "------------------------------------"
# brew cask install --appdir="/Applications" opera
brew cask install --appdir="/Applications" firefox
brew cask install --appdir="/Applications" google-chrome
# brew cask install --appdir="/Applications" google-drive-file-stream

# Core Functionality
echo "------------------------------------"
echo "Installing Useful Apps From Brew"
echo "------------------------------------"
brew cask install --appdir="/Applications" the-unarchiver
# brew cask install --appdir="/Applications" alfred
brew cask install  dropbox
# brew cask install --appdir="/Applications" onedrive
# brew cask install --appdir="/Applications" evernote
# brew cask install --appdir="/Applications" openoffice
# brew cask install --appdir="/Applications" flux
brew cask install --appdir="/Applications" transmit
brew cask install --appdir="/Applications" appcleaner
brew cask install --appdir="/Applications" macs-fan-control
brew cask install --appdir="/Applications" cheatsheet
# brew cask install --appdir="/Applications" gimp
brew cask install --appdir="/Applications" vlc
# brew cask install --appdir="/Applications" karabiner
# brew cask install --appdir="/Applications" kobito
brew cask install --appdir="/Applications" moom
brew cask install --appdir="/Applications" onyx
brew cask install --appdir="/Applications" skype
brew cask install --appdir="/Applications" slack
# brew cask install --appdir="/Applications" soundflower
# brew cask install --appdir="/Applications" pacifist

echo "------------------------------------------"
echo "Installing Docker, Minikube and k8 Stuff"
echo "------------------------------------------"
brew cask install --appdir="/Applications" docker
brew install minikube
brew tap weaveworks/tap
brew install weaveworks/tap/eksctl

echo "------------------------------------------"
echo "Installing Fonts"
echo "------------------------------------------"
brew tap homebrew/cask-fonts
brew cask install font-cousine
brew cask install font-fira-code
brew cask install font-fira-mono
brew cask install font-source-code-pro
brew cask install font-roboto-mono
brew cask install font-input
brew cask install font-hack
# cleanup
# brew cleanup --force
rm -f -r /Library/Caches/Homebrew/*

# brew update && brew prune && brew upgrade && brew cleanup
brew update && brew upgrade && brew cleanup
