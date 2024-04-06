function setup-python() {
    echo "Downloading .gitignore from GitHub..."
    curl -s https://raw.githubusercontent.com/github/gitignore/main/Python.gitignore -o .gitignore

    echo "Select a Python version using peco..."
    selected_python_version=$(pyenv versions --bare | peco)

    if ! pyenv versions --bare | grep -q "$selected_python_version"; then
        echo "Installing Python $selected_python_version..."
        pyenv install $selected_python_version
    fi

    echo "Creating .python-version..."
    echo $selected_python_version > .python-version

    echo "Creating virtual environment..."
    pyenv exec python -m venv .venv
    source .venv/bin/activate

    echo "Creating requirements.txt..."
    pip freeze > requirements.txt

    echo "Python environment setup complete!"
}
