# reSnap

reMarkable screenshots over ssh.

## Prequisites

- SSH-access to your reMarkable tablet.
  [Tutorial](https://remarkablewiki.com/tech/ssh) <br>
  (recommended: SSH-key so you don't have to type in your root password every time)

- The following programs are required on your reMarkable:
  - `lz4`

- The following programs are required on your computer:
  - `lz4`
  - `ffmpeg`
  - [`ImageMagick`](https://imagemagick.org/index.php) -- used by the `--sketch` option to clean up the snapshot.

### Installing Programs on your reMarkable

Please use [toltec](https://github.com/toltec-dev/toltec) to install `lz4` on your reMarkable.

Packages:
- `lz4`

Note: before installing the packages, run
```
opkg update
opkg upgrade
```
once and the install the packages via
```
opkg install <pkg>
```

## Usage

1. Connect your reMarkable via USB
1. Run
```
./reSnap.sh
```

### Options

```
Usage: reSnap.sh [options]

Options:
  -l, --landscape             Snapshot in Landscape.
  -s <host>, --source=<host>  SSH hostname or IP address. [default: 10.11.99.1]
  -o <path>, --output=<path>  Save output in <path>.
  -v, --version               Display version and exit.
  --copy                      Copy snapshot image to clipboard.
  --show                      Show snapshot image (in terminal if possible).
  --sketch                    Pre-process snapshot as a sketch with a
                              transparent background and black strokes.
  -h, --help                  Show help (this).
```

## Environment Variables

- `REMARKABLE_IP` Default IP of your reMarkable.
- `RESNAP_DISPLAY` Default behavior of reSnap. See option `-d and -n`.

### Disclaimer

The majority of the code is copied from [reStream](https://github.com/rien/reStream). Be sure to check them out!
