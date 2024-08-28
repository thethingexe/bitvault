
# BitVault


*DISCLAIMER:* This Repo is derived from the great Microbin Project. As the original Project seems to be abandoned, I made some minor updates to my taste - thus removing any telemetry and utilizing some more up to date rust libraries. I might or might not continue development from this point.

*TL:DR:*
The Main Target of this Project is:

 - Maintaining the great
   [Microbin](https://github.com/szabodanika/microbin) Project
 - Increasing Privacy and removing features, which are not necessary
 - Adding some convenience-features without decreasing the main goals of
   privacy, simplicity and security
 - A new color-scheme - orange is the obvious choice, because of our
   ideals
 - Replacing the Animal names with BIP39-words



BitVault is a super tiny, feature rich, configurable, self-contained and self-hosted paste bin web application. It is very easy to set up and use, and will only require a few megabytes of memory and disk storage. It takes only a couple minutes to set it up, why not give it a try now?

TOR HiddenService for demonstration: [http://bvaultb5wmxcxxapep7tnq2zrkjva6ry7uekfcsxpsxts2ve5qmf4iyd.onion/](http://bvaultb5wmxcxxapep7tnq2zrkjva6ry7uekfcsxpsxts2ve5qmf4iyd.onion/)

### Build from source

```
# Install rust and git if necessary (Arch Linux)
sudo pacman -S rust git

# clone repository & build w. cargo
git clone https://github.com/overcuriousity/bitvault
cd bitvault
cargo build --release
cargo run --release

# one-liner to build:
sudo pacman -S rust git && \
git clone https://github.com/overcuriousity/bitvault && \
cd bitvault && \
cargo build --release
```
Create systemd service to run it automatically:
```
# Example /etc/systemd/system/bitvault.service
[Unit]
Description=BitVault
After=network.target

[Service]
Type=simple
Restart=always
RootDirectory=/

# This is the user that will be used to run the executable
User=<insert username>
# This is where BitVault will save your data
WorkingDirectory=/home/<insert username>/
# This is the location of the compiled binary which we did with cargo before 
ExecStart=/home/<insert username>/bitvault/target/release/bitvault

Environment="BITVAULT_ADMIN_USERNAME=admin"
Environment="BITVAULT_ADMIN_PASSWORD=changeme
Environment="BITVAULT_PORT=8080"
Environment="BITVAULT_BIND=0.0.0.0"
Environment="BITVAULT_PUBLIC_PATH=https://bitvault.example.org"
# Environment="BITVAULT_SHORT_PATH=https://short.net"
Environment="BITVAULT_JSON_DB=false"
Environment="BITVAULT_EDITABLE=true"
Environment="BITVAULT_HIDE_HEADER=false"
Environment="BITVAULT_HIDE_FOOTER=false"
Environment="BITVAULT_HIDE_LOGO=false"
Environment="BITVAULT_NO_LISTING=false"
Environment="BITVAULT_READONLY=false"
Environment="BITVAULT_SHOW_READ_STATS=true"
Environment="BITVAULT_THREADS=2"
Environment="BITVAULT_GC_DAYS=90"
Environment="BITVAULT_WIDE=true"
Environment="BITVAULT_ETERNAL_PASTA=true"
Environment="BITVAULT_PRIVATE=true"
Environment="BITVAULT_HIGHLIGHTSYNTAX=true"
Environment="BITVAULT_QR=true"
Environment="BITVAULT_ENABLE_BURN_AFTER=true"
Environment="BITVAULT_ENABLE_READONLY=true"
Environment="BITVAULT_DEFAULT_EXPIRY=24hour"
Environment="BITVAULT_NO_FILE_UPLOAD=false"
Environment="BITVAULT_HASH_IDS=false"
Environment="BITVAULT_ENCRYPTION_CLIENT_SIDE=true"
Environment="BITVAULT_ENCRYPTION_SERVER_SIDE=true"
Environment="BITVAULT_MAX_FILE_SIZE_ENCRYPTED_MB=2048"
Environment="BITVAULT_MAX_FILE_SIZE_UNENCRYPTED_MB=2048"
# Environment="BITVAULT_BASIC_AUTH_USERNAME=something"
# Environment="BITVAULT_BASIC_AUTH_PASSWORD=something"
# Environment="BITVAULT_CUSTOM_CSS="https://myserver.com/custom.css""
Environment="BITVAULT_TITLE=BitVault"
[Install]
WantedBy=multi-user.target
```

On the original developers website [microbin.eu](https://microbin.eu) you will find the following:

- [Screenshots](https://microbin.eu/screenshots/)
- [Guide and Documentation](https://microbin.eu/docs/intro)
- [Donations and Sponsorships](https://microbin.eu/sponsorship)
- [Roadmap](https://microbin.eu/roadmap)

## Features

- Entirely self-contained executable, BitVault is a single file!
- Server-side and client-side encryption
- File uploads (eg. `server.com/file/pig-dog-cat`) - this will soon be improved with the BIP39 words
- Raw text serving (eg. `server.com/raw/pig-dog-cat`)
- QR code support
- URL shortening and redirection
- Animal names instead of random numbers for upload identifiers (64 animals)
- SQLite and JSON database support
- Private and public, editable and uneditable, automatically and never expiring uploads
- Automatic dark mode and custom styling support with very little CSS and only vanilla JS (see [`water.css`](https://github.com/kognise/water.css))
- And much more!

## What is an upload?

In BitVault, an upload can be:

- A text that you want to paste from one machine to another, eg. some code,
- A file that you want to share, eg. a video that is too large for Discord, a zip with a code project in it or an image,

## When is BitVault useful?

You can use BitVault:

- To send long texts to other people
- To send large files to other people
- To share secrets or sensitive documents securely
- As a URL shortener/redirect service
- To serve content on the web, eg. configuration files for testing, images, or any other file content using the Raw functionality
- To move files between your desktop and a server you access from the console
- As a "postbox" service where people can upload their files or texts, but they cannot see or remove what others sent you
- Or even to take quick notes


BitVault is available under the [GPL-3](LICENSE) License, while the original Project was published under [BSD 3-Clause License](ORIGINAL_LICENSE).

© Dániel Szabó 2022-2023
© Mario Stöckl, from 2024-05-27, under GPL-3 License.
