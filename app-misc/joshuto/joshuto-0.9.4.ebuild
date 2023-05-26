# Copyright 2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

# Auto-Generated by cargo-ebuild 0.5.4

EAPI=8

CRATES="
	aho-corasick-0.7.18
	alphanumeric-sort-1.4.4
	ansi-to-tui-0.6.0
	ansi_term-0.12.1
	atty-0.2.14
	autocfg-1.1.0
	bitflags-1.3.2
	bstr-0.2.17
	bumpalo-3.10.0
	cassowary-0.3.0
	cc-1.0.73
	cfg-if-1.0.0
	chrono-0.4.19
	clap-2.34.0
	clipboard-win-4.4.1
	colors-transform-0.2.11
	crossbeam-channel-0.5.5
	crossbeam-utils-0.8.10
	dirs-4.0.0
	dirs-next-2.0.0
	dirs-sys-0.3.7
	dirs-sys-next-0.1.2
	endian-type-0.1.2
	errno-0.2.8
	errno-dragonfly-0.1.2
	error-code-2.3.1
	fd-lock-3.0.6
	filetime-0.2.17
	fnv-1.0.7
	form_urlencoded-1.0.1
	fsevent-sys-4.1.0
	getrandom-0.2.7
	globset-0.4.9
	heck-0.3.3
	hermit-abi-0.1.19
	idna-0.2.3
	inotify-0.9.6
	inotify-sys-0.1.5
	io-lifetimes-0.7.2
	js-sys-0.3.58
	kqueue-1.0.6
	kqueue-sys-1.0.3
	lazy_static-1.4.0
	libc-0.2.126
	linux-raw-sys-0.0.46
	log-0.4.17
	malloc_buf-0.0.6
	matches-0.1.9
	memchr-2.5.0
	memoffset-0.6.5
	mio-0.8.4
	nibble_vec-0.1.0
	nix-0.23.1
	notify-5.0.0-pre.15
	num-integer-0.1.45
	num-traits-0.2.15
	numtoa-0.1.0
	objc-0.2.7
	once_cell-1.13.0
	open-2.1.3
	pathdiff-0.2.1
	percent-encoding-2.1.0
	phf-0.10.1
	phf_generator-0.10.0
	phf_macros-0.10.0
	phf_shared-0.10.0
	ppv-lite86-0.2.16
	proc-macro-error-1.0.4
	proc-macro-error-attr-1.0.4
	proc-macro-hack-0.5.19
	proc-macro2-1.0.40
	quote-1.0.20
	radix_trie-0.2.1
	rand-0.8.5
	rand_chacha-0.3.1
	rand_core-0.6.3
	redox_syscall-0.2.13
	redox_termios-0.1.2
	redox_users-0.4.3
	regex-1.6.0
	regex-syntax-0.6.27
	rustix-0.35.7
	rustyline-9.1.2
	same-file-1.0.6
	scopeguard-1.1.0
	serde-1.0.138
	serde_derive-1.0.138
	shell-words-1.1.0
	shellexpand-2.1.0
	signal-hook-0.3.14
	signal-hook-registry-1.4.0
	siphasher-0.3.10
	smallvec-1.9.0
	str-buf-1.0.6
	strsim-0.8.0
	structopt-0.3.26
	structopt-derive-0.4.18
	syn-1.0.98
	termion-1.5.6
	textwrap-0.11.0
	thiserror-1.0.31
	thiserror-impl-1.0.31
	time-0.1.44
	tinyvec-1.6.0
	tinyvec_macros-0.1.0
	toml-0.5.9
	trash-2.1.5
	tui-0.18.0
	unicode-bidi-0.3.8
	unicode-ident-1.0.1
	unicode-normalization-0.1.21
	unicode-segmentation-1.9.0
	unicode-width-0.1.9
	url-2.2.2
	users-0.11.0
	utf8parse-0.2.0
	vec_map-0.8.2
	version_check-0.9.4
	walkdir-2.3.2
	wasi-0.10.0+wasi-snapshot-preview1
	wasi-0.11.0+wasi-snapshot-preview1
	wasm-bindgen-0.2.81
	wasm-bindgen-backend-0.2.81
	wasm-bindgen-macro-0.2.81
	wasm-bindgen-macro-support-0.2.81
	wasm-bindgen-shared-0.2.81
	web-sys-0.3.58
	whoami-1.2.1
	winapi-0.3.9
	winapi-i686-pc-windows-gnu-0.4.0
	winapi-util-0.1.5
	winapi-x86_64-pc-windows-gnu-0.4.0
	windows-0.37.0
	windows-sys-0.36.1
	windows_aarch64_msvc-0.36.1
	windows_aarch64_msvc-0.37.0
	windows_i686_gnu-0.36.1
	windows_i686_gnu-0.37.0
	windows_i686_msvc-0.36.1
	windows_i686_msvc-0.37.0
	windows_x86_64_gnu-0.36.1
	windows_x86_64_gnu-0.37.0
	windows_x86_64_msvc-0.36.1
	windows_x86_64_msvc-0.37.0
	xdg-2.4.1
"

inherit cargo

DESCRIPTION="Terminal file manager inspired by ranger"
HOMEPAGE="https://github.com/kamiyaa/joshuto"
SRC_URI="$(cargo_crate_uris)
	https://github.com/kamiyaa/${PN}/archive/refs/tags/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="LGPL-3"
SLOT="0"
KEYWORDS="-* ~amd64"

IUSE="X wayland +fzf"

DEPEND=""
RDEPEND="
	${DEPEND}
	fzf? ( app-shells/fzf )
	wayland? ( gui-apps/wl-clipboard )
	X? (
		x11-misc/xclip
		x11-misc/xsel
	)
"
BDEPEND=""

RESTRICT="mirror"

# rust does not use *FLAGS from make.conf, silence portage warning
# update with proper path to binaries this crate installs, omit leading /
QA_FLAGS_IGNORED="usr/bin/${PN}"