# Usage
# compress-images [directory] [quality]
# compress-images . 75

function compress-images() {
    local directory="${1:-.}"
    local quality="${2:-50}"

    # PNGファイルの圧縮
    find "$directory" -type f \( -name "*.png" \) -exec optipng -o7 -strip all -out {} {} \;

    # WEBPファイルの圧縮
    find "$directory" -type f \( -name "*.webp" \) -exec cwebp -q "$quality" {} -o {} \;

    # JPEGファイルの圧縮
    find "$directory" -type f \( -name "*.jpg" -o -name "*.jpeg" \) -exec jpegoptim --strip-all --all-progressive -m"$quality" {} \;
}
