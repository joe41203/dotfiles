function prettier-fmt() {
    prettier --write --ignore-path .gitignore "**/*.{js,jsx,ts,tsx,css,scss,json,md}"
}
