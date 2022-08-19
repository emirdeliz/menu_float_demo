#!/bin/sh
# This sh make symlink to vscode root directory for the folders .vscode and .devcontainer.
# It's used to make the workspace config visible in the vscode.

ln -sf menu_float_demo/.vscode .vscode && \
ln -sf menu_float_demo/.devcontainer .devcontainer