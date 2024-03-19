function search_images() {
    local directory="${1:-.}"
    local query="$2"

    find "$directory" -type f \( -name "*.png" -o -name "*.webp" -o -name "*.jpg" -o -name "*.jpeg" \) -print0 | xargs -0 -I {} echo "{}" | peco --query "$query"
}

# 画像圧縮関数
function compress-image-peco() {
    local directory="${1:-.}"
    local quality="${2:-50}"

    # 画像検索
    local selected_images=$(search_images "$directory" | tr '\n' ' ')

    if [[ -n "$selected_images" ]]; then
        # PNGファイルの圧縮
        echo "$selected_images" | tr ' ' '\n' | grep -E "\.(png)$" | xargs -I {} optipng -o7 -strip all -out {} {}

        # WEBPファイルの圧縮
        echo "$selected_images" | tr ' ' '\n' | grep -E "\.(webp)$" | xargs -I {} cwebp -q "$quality" {} -o {}

        # JPEGファイルの圧縮
        echo "$selected_images" | tr ' ' '\n' | grep -E "\.(jpe?g)$" | xargs -I {} jpegoptim --strip-all --all-progressive -m"$quality" {}
    else
        echo "No images selected for compression."
    fi
}

