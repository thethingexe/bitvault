# BitVault


*DISCLAIMER:* This Repo is derived from the great Microbin Project. As the original Project seems to be abandoned, I made some minor updates to my taste - thus removing any telemetry and utilizing some more up to date rust libraries. I might or might not continue development from this point.

*TL:DR:*
The Main Target of this Project is:
    - Maintaining the great [Microbin](https://github.com/szabodanika/microbin) Project
    - Increasing Privacy and removing features, which are not necessary
    - Adding some convenience-features without decreasing the main goals of privacy, simlicity and security
    - A new color-scheme - orange is the obvious choice, because of our ideals
    - Replacing the Animal names with BIP39-words

BitVault is a super tiny, feature rich, configurable, self-contained and self-hosted paste bin web application. It is very easy to set up and use, and will only require a few megabytes of memory and disk storage. It takes only a couple minutes to set it up, why not give it a try now?

### Build from source

```
Instructions will follow
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
