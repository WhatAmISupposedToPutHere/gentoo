# Copyright 2024-2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

# Autogenerated by pycargoebuild 0.13.4

EAPI=8

CRATES="
	RustyXML@0.3.0
	addr2line@0.24.2
	adler2@2.0.0
	adler32@1.2.0
	aead@0.5.2
	aes-gcm-siv@0.11.1
	aes-gcm@0.10.3
	aes@0.8.4
	ahash@0.7.8
	ahash@0.8.11
	aho-corasick@1.1.3
	allocator-api2@0.2.21
	android-tzdata@0.1.1
	android_system_properties@0.1.5
	anstream@0.6.18
	anstyle-parse@0.2.6
	anstyle-query@1.1.2
	anstyle-wincon@3.0.6
	anstyle@1.0.10
	anyhow@1.0.95
	arbitrary@1.4.1
	arc-swap@1.7.1
	argon2@0.5.3
	arrayref@0.3.9
	arrayvec@0.7.6
	ascii-canvas@3.0.0
	asn1-rs-derive@0.4.0
	asn1-rs-derive@0.5.1
	asn1-rs-impl@0.1.0
	asn1-rs-impl@0.2.0
	asn1-rs@0.5.2
	asn1-rs@0.6.2
	async-channel@1.9.0
	async-compression@0.4.18
	async-lock@3.4.0
	async-recursion@1.1.1
	async-stream-impl@0.3.6
	async-stream@0.3.6
	async-trait@0.1.83
	atomic-waker@1.1.2
	attohttpc@0.28.2
	autocfg@1.4.0
	aws-creds@0.37.0
	aws-region@0.25.5
	axum-core@0.4.5
	axum@0.7.9
	azure_core@0.21.0
	azure_storage@0.21.0
	azure_storage_blobs@0.21.0
	azure_svc_blobstorage@0.21.0
	backtrace@0.3.74
	base16ct@0.2.0
	base32@0.4.0
	base64@0.11.0
	base64@0.13.1
	base64@0.21.7
	base64@0.22.1
	base64ct@1.6.0
	bigdecimal@0.4.7
	bincode@1.3.3
	bindgen@0.69.5
	bindgen@0.70.1
	bindgen@0.71.1
	biscuit@0.7.0
	bit-set@0.5.3
	bit-set@0.8.0
	bit-vec@0.6.3
	bit-vec@0.8.0
	bitflags@1.3.2
	bitflags@2.6.0
	bitpacking@0.9.2
	bitvec-nom2@0.2.1
	bitvec@1.0.1
	blake2@0.10.6
	blake3@1.5.5
	block-buffer@0.10.4
	block-buffer@0.9.0
	block-padding@0.3.3
	blowfish@0.7.0
	blowfish@0.9.1
	borsh-derive@1.5.3
	borsh@1.5.3
	btoi@0.4.3
	buffered-reader@1.3.2
	bumpalo@3.16.0
	bytecheck@0.6.12
	bytecheck_derive@0.6.12
	bytemuck@1.21.0
	byteorder@1.5.0
	bytes@1.9.0
	bzip2-sys@0.1.11+1.0.8
	bzip2@0.4.4
	camellia@0.1.0
	cast5@0.11.1
	cbc@0.1.2
	cc@1.2.5
	cedarwood@0.4.6
	cexpr@0.6.0
	cfb-mode@0.8.2
	cfb@0.7.3
	cfg-if@1.0.0
	cfg_aliases@0.2.1
	chrono@0.4.39
	cipher@0.2.5
	cipher@0.4.4
	clang-sys@1.8.1
	clap@4.5.23
	clap_builder@4.5.23
	clap_derive@4.5.18
	clap_lex@0.7.4
	cmac@0.7.2
	cmake@0.1.52
	colorchoice@1.0.3
	combine@4.6.7
	concurrent-queue@2.5.0
	console@0.15.10
	const-oid@0.9.6
	const-random-macro@0.1.16
	const-random@0.1.18
	const_panic@0.2.11
	constant_time_eq@0.2.6
	constant_time_eq@0.3.1
	core-foundation-sys@0.8.7
	core-foundation@0.9.4
	core2@0.4.0
	cpufeatures@0.2.16
	crc-catalog@2.4.0
	crc16@0.4.0
	crc32fast@1.4.2
	crc@3.2.1
	crossbeam-channel@0.5.14
	crossbeam-deque@0.8.6
	crossbeam-epoch@0.9.18
	crossbeam-queue@0.3.12
	crossbeam-utils@0.8.21
	crossbeam@0.8.4
	crunchy@0.2.2
	crypto-bigint@0.5.5
	crypto-common@0.1.6
	crypto-mac@0.10.0
	csv-core@0.1.11
	csv@1.3.1
	ctr@0.9.2
	curve25519-dalek-derive@0.1.1
	curve25519-dalek@4.1.3
	darling@0.13.4
	darling@0.20.10
	darling_core@0.13.4
	darling_core@0.20.10
	darling_macro@0.13.4
	darling_macro@0.20.10
	dary_heap@0.3.7
	dashmap@6.1.0
	data-encoding@2.6.0
	dbl@0.3.2
	deadpool-postgres@0.14.1
	deadpool-runtime@0.1.4
	deadpool@0.10.0
	deadpool@0.12.1
	decancer@3.2.8
	deflate64@0.1.9
	der-parser@8.2.0
	der-parser@9.0.0
	der@0.7.9
	deranged@0.3.11
	derive_arbitrary@1.4.1
	des@0.8.1
	digest@0.10.7
	digest@0.9.0
	dirs-next@2.0.0
	dirs-sys-next@0.1.2
	displaydoc@0.2.5
	dlv-list@0.5.2
	dns-update@0.1.2
	doc-comment@0.3.3
	dsa@0.6.3
	dyn-clone@1.0.17
	eax@0.5.0
	ecb@0.1.2
	ecdsa@0.16.9
	ece@2.3.1
	ed25519-dalek@2.1.1
	ed25519@2.2.3
	either@1.13.0
	elasticsearch@8.5.0-alpha.1
	elliptic-curve@0.13.8
	ena@0.14.3
	encode_unicode@1.0.0
	encoding_rs@0.8.35
	endian-type@0.1.2
	enum-as-inner@0.6.1
	equivalent@1.0.1
	event-listener-strategy@0.5.3
	event-listener@2.5.3
	event-listener@5.3.1
	fallible-iterator@0.2.0
	fallible-iterator@0.3.0
	fallible-streaming-iterator@0.1.9
	fancy-regex@0.14.0
	farmhash@1.1.5
	fast-float@0.2.0
	fastrand@1.9.0
	ff@0.13.0
	fiat-crypto@0.2.9
	fixedbitset@0.4.2
	flate2@1.0.35
	fnv@1.0.7
	foldhash@0.1.4
	foreign-types-shared@0.1.1
	foreign-types@0.3.2
	form-data@0.5.5
	form_urlencoded@1.2.1
	foundationdb-gen@0.9.1
	foundationdb-macros@0.3.1
	foundationdb-sys@0.9.1
	foundationdb@0.9.1
	frunk@0.4.3
	frunk_core@0.4.3
	frunk_derives@0.4.3
	frunk_proc_macro_helpers@0.1.3
	frunk_proc_macros@0.1.3
	funty@2.0.0
	futures-channel@0.3.31
	futures-core@0.3.31
	futures-executor@0.3.31
	futures-io@0.3.31
	futures-lite@1.13.0
	futures-macro@0.3.31
	futures-sink@0.3.31
	futures-task@0.3.31
	futures-util@0.3.31
	futures@0.3.31
	fxhash@0.2.1
	generic-array@0.14.7
	generic-array@1.1.1
	gethostname@0.4.3
	getrandom@0.1.16
	getrandom@0.2.15
	ghash@0.5.1
	gimli@0.31.1
	glob@0.3.1
	group@0.13.0
	h2@0.3.26
	h2@0.4.7
	hashbrown@0.12.3
	hashbrown@0.14.5
	hashbrown@0.15.2
	hashlink@0.9.1
	heck@0.4.1
	heck@0.5.0
	hermit-abi@0.3.9
	hermit-abi@0.4.0
	hex@0.4.3
	hickory-client@0.24.2
	hickory-proto@0.24.2
	hickory-resolver@0.24.2
	hkdf@0.12.4
	hmac@0.10.1
	hmac@0.12.1
	home@0.5.11
	hostname@0.3.1
	hostname@0.4.0
	http-body-util@0.1.2
	http-body@0.4.6
	http-body@1.0.1
	http-types@2.12.0
	http@0.2.12
	http@1.2.0
	httparse@1.9.5
	httpdate@1.0.3
	human-size@0.4.3
	hyper-rustls@0.24.2
	hyper-rustls@0.27.5
	hyper-timeout@0.5.2
	hyper-util@0.1.10
	hyper@0.14.32
	hyper@1.5.2
	iana-time-zone-haiku@0.1.2
	iana-time-zone@0.1.61
	icu_collections@1.5.0
	icu_locid@1.5.0
	icu_locid_transform@1.5.0
	icu_locid_transform_data@1.5.0
	icu_normalizer@1.5.0
	icu_normalizer_data@1.5.0
	icu_properties@1.5.1
	icu_properties_data@1.5.0
	icu_provider@1.5.0
	icu_provider_macros@1.5.0
	idea@0.5.1
	ident_case@1.0.1
	idna@1.0.3
	idna_adapter@1.2.0
	imagesize@0.13.0
	include-flate-codegen@0.2.0
	include-flate@0.3.0
	indexmap@1.9.3
	indexmap@2.7.0
	indicatif@0.17.9
	infer@0.16.0
	infer@0.2.3
	inout@0.1.3
	instant@0.1.13
	ipconfig@0.3.2
	ipnet@2.10.1
	is-terminal@0.4.13
	is_terminal_polyfill@1.70.1
	itertools@0.10.5
	itertools@0.11.0
	itertools@0.12.1
	itertools@0.13.0
	itoa@1.0.14
	jemalloc-sys@0.5.4+5.3.0-patched
	jemallocator@0.5.4
	jieba-macros@0.7.1
	jieba-rs@0.7.1
	jmap-client@0.3.2
	jobserver@0.1.32
	js-sys@0.3.76
	keyed_priority_queue@0.4.2
	konst@0.3.15
	konst_kernel@0.3.15
	lalrpop-util@0.20.2
	lalrpop@0.20.2
	lazy_static@1.5.0
	lazycell@1.3.0
	lber@0.4.2
	ldap3@0.11.5
	libc@0.2.169
	libflate@2.1.0
	libflate_lz77@2.1.0
	libloading@0.8.6
	libm@0.2.11
	libredox@0.1.3
	librocksdb-sys@0.17.1+9.9.3
	libsqlite3-sys@0.30.1
	libz-sys@1.1.20
	linked-hash-map@0.5.6
	litemap@0.7.4
	lock_api@0.4.12
	lockfree-object-pool@0.1.6
	log@0.4.22
	lru-cache@0.1.2
	lru@0.12.5
	lz4-sys@1.11.1+lz4-1.10.0
	lz4_flex@0.11.3
	lzma-rs@0.3.0
	mail-auth@0.6.0
	mail-builder@0.3.2
	mail-parser@0.9.4
	mail-send@0.4.9
	maplit@1.0.2
	match_cfg@0.1.0
	matchit@0.7.3
	maybe-async@0.2.10
	md-5@0.10.6
	md-5@0.9.1
	md5@0.7.0
	memchr@2.7.4
	memoffset@0.7.1
	memory-stats@1.2.0
	memsec@0.7.0
	mime@0.3.17
	mime_guess@2.0.5
	minimal-lexical@0.2.1
	miniz_oxide@0.8.2
	mio@0.8.11
	mysql-common-derive@0.31.2
	mysql_async@0.34.1
	mysql_common@0.32.4
	new_debug_unreachable@1.0.6
	nibble_vec@0.1.0
	nix@0.26.4
	nohash@0.2.0
	nom@7.1.3
	num-bigint-dig@0.8.4
	num-bigint@0.4.6
	num-conv@0.1.0
	num-integer@0.1.46
	num-iter@0.1.45
	num-traits@0.2.19
	num_cpus@1.16.0
	number_prefix@0.4.0
	object@0.36.7
	oid-registry@0.6.1
	oid-registry@0.7.1
	once_cell@1.20.2
	opaque-debug@0.3.1
	openssl-macros@0.1.1
	openssl-probe@0.1.5
	openssl-sys@0.9.104
	openssl@0.10.68
	opentelemetry-http@0.25.0
	opentelemetry-otlp@0.25.0
	opentelemetry-proto@0.25.0
	opentelemetry-semantic-conventions@0.25.0
	opentelemetry@0.25.0
	opentelemetry_sdk@0.25.0
	ordered-multimap@0.7.3
	p256@0.13.2
	p384@0.13.0
	p521@0.13.3
	parking@2.2.1
	parking_lot@0.12.3
	parking_lot_core@0.9.10
	password-hash@0.5.0
	paste@1.0.15
	pbkdf2@0.12.2
	pem-rfc7468@0.7.0
	pem@3.0.4
	percent-encoding@2.3.1
	petgraph@0.6.5
	phf@0.11.2
	phf_codegen@0.11.2
	phf_generator@0.11.2
	phf_macros@0.11.2
	phf_shared@0.10.0
	phf_shared@0.11.2
	pin-project-internal@1.1.7
	pin-project-lite@0.2.15
	pin-project@1.1.7
	pin-utils@0.1.0
	pkcs1@0.7.5
	pkcs8@0.10.2
	pkg-config@0.3.31
	polyval@0.6.2
	portable-atomic@1.10.0
	postgres-protocol@0.6.7
	postgres-types@0.2.8
	powerfmt@0.2.0
	ppv-lite86@0.2.20
	precomputed-hash@0.1.1
	prettyplease@0.2.25
	prettytable-rs@0.10.0
	primeorder@0.13.6
	privdrop@0.5.4
	proc-macro-crate@3.2.0
	proc-macro-error-attr2@2.0.0
	proc-macro-error2@2.0.1
	proc-macro2@1.0.92
	prometheus@0.13.4
	prost-derive@0.13.4
	prost@0.13.4
	proxy-header@0.1.2
	psl-types@2.0.11
	psl@2.1.73
	ptr_meta@0.1.4
	ptr_meta_derive@0.1.4
	pwhash@1.0.0
	quick-error@1.2.3
	quick-xml@0.31.0
	quick-xml@0.32.0
	quick-xml@0.37.1
	quick_cache@0.6.9
	quinn-proto@0.11.9
	quinn-udp@0.5.9
	quinn@0.11.6
	quote@1.0.38
	r2d2@0.8.10
	radium@0.7.0
	radix_trie@0.2.1
	rand@0.7.3
	rand@0.8.5
	rand_chacha@0.2.2
	rand_chacha@0.3.1
	rand_core@0.5.1
	rand_core@0.6.4
	rand_hc@0.2.0
	rasn-cms@0.10.6
	rasn-derive@0.10.6
	rasn-pkix@0.10.6
	rasn@0.10.6
	rayon-core@1.12.1
	rayon@1.10.0
	rcgen@0.12.1
	rcgen@0.13.2
	redis@0.27.6
	redox_syscall@0.5.8
	redox_users@0.4.6
	regex-automata@0.4.9
	regex-syntax@0.8.5
	regex@1.11.1
	rend@0.4.2
	reqwest@0.11.27
	reqwest@0.12.9
	resolv-conf@0.7.0
	rev_lines@0.3.0
	rfc6979@0.4.0
	ring@0.16.20
	ring@0.17.8
	ripemd@0.1.3
	rkyv@0.7.45
	rkyv_derive@0.7.45
	rle-decode-fast@1.0.3
	roaring@0.10.9
	rocksdb@0.23.0
	rpassword@7.3.1
	rsa@0.9.7
	rtoolbox@0.0.2
	rtrb@0.3.1
	rusqlite@0.32.1
	rust-ini@0.21.1
	rust-s3@0.35.0-alpha.2
	rust-stemmers@1.2.0
	rust_decimal@1.36.0
	rustc-demangle@0.1.24
	rustc-hash@1.1.0
	rustc-hash@2.1.0
	rustc_version@0.2.3
	rustc_version@0.4.1
	rusticata-macros@4.1.0
	rustls-native-certs@0.6.3
	rustls-native-certs@0.7.3
	rustls-pemfile@1.0.4
	rustls-pemfile@2.2.0
	rustls-pki-types@1.10.1
	rustls-webpki@0.101.7
	rustls-webpki@0.102.8
	rustls@0.21.12
	rustls@0.22.4
	rustls@0.23.20
	rustversion@1.0.18
	ryu@1.0.18
	salsa20@0.10.2
	same-file@1.0.6
	saturating@0.1.0
	scc@2.2.6
	schannel@0.1.27
	scheduled-thread-pool@0.2.7
	scopeguard@1.2.0
	scrypt@0.11.0
	sct@0.7.1
	sdd@3.0.5
	seahash@4.1.0
	sec1@0.7.3
	security-framework-sys@2.13.0
	security-framework@2.11.1
	semver-parser@0.7.0
	semver@0.9.0
	semver@1.0.24
	sequoia-openpgp@1.22.0
	serde@1.0.216
	serde_bytes@0.11.15
	serde_derive@1.0.216
	serde_json@1.0.134
	serde_qs@0.8.5
	serde_urlencoded@0.7.1
	serde_with@1.14.0
	serde_with_macros@1.5.2
	serial_test@3.2.0
	serial_test_derive@3.2.0
	sha-1@0.9.8
	sha1@0.10.6
	sha1_smol@1.0.1
	sha1collisiondetection@0.3.4
	sha2@0.10.8
	sha2@0.9.9
	shlex@1.3.0
	sieve-rs@0.5.3
	signal-hook-registry@1.4.2
	signature@2.2.0
	simd-adler32@0.3.7
	simdutf8@0.1.5
	siphasher@0.3.11
	siphasher@1.0.1
	slab@0.4.9
	smallvec@1.13.2
	smtp-proto@0.1.5
	snafu-derive@0.7.5
	snafu@0.7.5
	socket2@0.5.8
	spin@0.5.2
	spin@0.9.8
	spki@0.7.3
	stable_deref_trait@1.2.0
	static_assertions@1.1.0
	string_cache@0.8.7
	stringprep@0.1.5
	strsim@0.10.0
	strsim@0.11.1
	subprocess@0.2.9
	subtle@2.6.1
	syn@1.0.109
	syn@2.0.91
	sync_wrapper@0.1.2
	sync_wrapper@1.0.2
	synstructure@0.12.6
	synstructure@0.13.1
	system-configuration-sys@0.5.0
	system-configuration@0.5.1
	tap@1.0.1
	term@0.7.0
	termcolor@1.4.1
	thiserror-impl@1.0.69
	thiserror-impl@2.0.9
	thiserror@1.0.69
	thiserror@2.0.9
	time-core@0.1.2
	time-macros@0.2.19
	time@0.3.37
	tiny-keccak@2.0.2
	tinystr@0.7.6
	tinyvec@1.8.1
	tinyvec_macros@0.1.1
	tokio-macros@2.3.0
	tokio-postgres@0.7.12
	tokio-rustls@0.24.1
	tokio-rustls@0.25.0
	tokio-rustls@0.26.1
	tokio-stream@0.1.17
	tokio-tungstenite@0.21.0
	tokio-tungstenite@0.26.1
	tokio-util@0.7.13
	tokio@1.38.1
	toml_datetime@0.6.8
	toml_edit@0.22.22
	tonic@0.12.3
	totp-rs@5.6.0
	tower-layer@0.3.3
	tower-service@0.3.3
	tower@0.4.13
	tower@0.5.2
	tracing-attributes@0.1.28
	tracing-core@0.1.33
	tracing@0.1.41
	trim-in-place@0.1.7
	try-lock@0.2.5
	try_map@0.3.1
	tungstenite@0.21.0
	tungstenite@0.26.1
	twofish@0.7.1
	twox-hash@1.6.3
	typenum@1.17.0
	typewit@1.11.0
	typewit_proc_macros@1.8.1
	unicase@2.8.1
	unicode-bidi@0.3.18
	unicode-ident@1.0.14
	unicode-normalization@0.1.24
	unicode-properties@0.1.3
	unicode-script@0.5.7
	unicode-security@0.1.2
	unicode-width@0.1.14
	unicode-width@0.2.0
	unicode-xid@0.2.6
	universal-hash@0.5.1
	untrusted@0.7.1
	untrusted@0.9.0
	url@2.5.4
	urlencoding@2.1.3
	utf-8@0.7.6
	utf16_iter@1.0.5
	utf8_iter@1.0.4
	utf8parse@0.2.2
	uuid@1.11.0
	vcpkg@0.2.15
	version_check@0.9.5
	void@1.0.2
	waker-fn@1.2.0
	walkdir@2.5.0
	want@0.3.1
	wasi@0.11.0+wasi-snapshot-preview1
	wasi@0.9.0+wasi-snapshot-preview1
	wasite@0.1.0
	wasm-bindgen-backend@0.2.99
	wasm-bindgen-futures@0.4.49
	wasm-bindgen-macro-support@0.2.99
	wasm-bindgen-macro@0.2.99
	wasm-bindgen-shared@0.2.99
	wasm-bindgen@0.2.99
	wasm-streams@0.4.2
	web-sys@0.3.76
	web-time@1.1.0
	webpki-roots@0.25.4
	webpki-roots@0.26.7
	webpki@0.22.4
	whatlang@0.16.4
	whoami@1.5.2
	widestring@1.1.0
	winapi-i686-pc-windows-gnu@0.4.0
	winapi-util@0.1.9
	winapi-x86_64-pc-windows-gnu@0.4.0
	winapi@0.3.9
	windows-core@0.52.0
	windows-registry@0.2.0
	windows-result@0.2.0
	windows-strings@0.1.0
	windows-sys@0.48.0
	windows-sys@0.52.0
	windows-sys@0.59.0
	windows-targets@0.48.5
	windows-targets@0.52.6
	windows@0.52.0
	windows_aarch64_gnullvm@0.48.5
	windows_aarch64_gnullvm@0.52.6
	windows_aarch64_msvc@0.48.5
	windows_aarch64_msvc@0.52.6
	windows_i686_gnu@0.48.5
	windows_i686_gnu@0.52.6
	windows_i686_gnullvm@0.52.6
	windows_i686_msvc@0.48.5
	windows_i686_msvc@0.52.6
	windows_x86_64_gnu@0.48.5
	windows_x86_64_gnu@0.52.6
	windows_x86_64_gnullvm@0.48.5
	windows_x86_64_gnullvm@0.52.6
	windows_x86_64_msvc@0.48.5
	windows_x86_64_msvc@0.52.6
	winnow@0.6.20
	winreg@0.50.0
	write16@1.0.0
	writeable@0.5.5
	wyz@0.5.1
	x25519-dalek@2.0.1
	x509-parser@0.15.1
	x509-parser@0.16.0
	xml-rs@0.8.24
	xxhash-rust@0.8.14
	yasna@0.5.2
	yoke-derive@0.7.5
	yoke@0.7.5
	zerocopy-derive@0.7.35
	zerocopy@0.7.35
	zerofrom-derive@0.1.5
	zerofrom@0.1.5
	zeroize@1.8.1
	zeroize_derive@1.4.2
	zerovec-derive@0.10.3
	zerovec@0.10.4
	zip@2.2.2
	zopfli@0.8.1
	zstd-safe@7.2.1
	zstd-sys@2.0.13+zstd.1.5.6
	zstd@0.13.2
"

inherit cargo

DESCRIPTION="Stalwart Mail Server command line utility"
HOMEPAGE="https://stalw.art"
SRC_URI="https://github.com/stalwartlabs/mail-server/archive/refs/tags/v${PV}.tar.gz -> stalwart-mail-${PV}.tar.gz
	${CARGO_CRATE_URIS}
"
# rename to same as stalwart-mail as it is the same tarball

S="${WORKDIR}/mail-server-${PV}"

LICENSE="|| ( AGPL-3 )"
# Dependent crate licenses
LICENSE+="
	AGPL-3 Apache-2.0 BSD-2 BSD Boost-1.0 CC0-1.0 ISC LGPL-2+ MIT
	MPL-2.0 Unicode-3.0 ZLIB
"

SLOT="0"
KEYWORDS="~amd64"

src_compile() {
	cargo_src_compile --bin stalwart-cli
}

src_install() {
	cargo_src_install --path crates/cli
}
