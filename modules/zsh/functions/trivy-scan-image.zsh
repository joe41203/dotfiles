function trivy-scan-image() {
    local image_name="$1"
    trivy image --no-progress --exit-code 1 --severity HIGH,CRITICAL "$image_name"
}
