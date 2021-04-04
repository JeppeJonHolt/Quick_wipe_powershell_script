function set-exstensions_for_vscode {
    power_shell_extentions
    basic_functionality
    python_functionality
    c_funtionality
    database_functionality
    niche_functionality
    markdown_functionality
    unit_test_framworks
    themes
}

function power_shell_extentions {
    code --install-extension ms-vscode.powershell
}

function basic_functionality {
    code --install-extension aaron-bond.better-comments
    code --install-extension coenraads.bracket-pair-colorizer-2
    code --install-extension oderwat.indent-rainbow
    code --install-extension gruntfuggly.todo-tree
}

function python_functionality {
    code --install-extension ms-python.python
    code --install-extension njpwerner.autodocstring
    code --install-extension kevinrose.vsc-python-indent
    code --install-extension kiteco.kite
}

function c_funtionality {
    code --install-extension danielpinto8zz6.c-cpp-compile-run
    code --install-extension ms-vscode.cpptools
}

function database_functionality {
    code --install-extension mtxr.sqltools
    code --install-extension mtxr.sqltools-driver-pg
}
function niche_functionality {
    code --install-extension vsciot-vscode.vscode-arduino
    code --install-extension slevesque.vscode-autohotkey
    code --install-extension kleber-swf.unity-code-snippets
}

function markdown_functionality {
    code --install-extension docsmsft.docs-markdown
    code --install-extension yzhang.markdown-all-in-one
    code --install-extension yzane.markdown-pdf
    code --install-extension fcrespo82.markdown-table-formatter
    code --install-extension davidanson.vscode-markdownlint
}

function unit_test_framworks {
    code --install-extension hbenl.vscode-test-explorer
    code --install-extension littlefoxteam.vscode-python-test-adapter
}

function themes {
    code --install-extension eppz.eppz-code
    code --install-extension gerane.theme-abyss
    code --install-extension artisanbytecrafter.poptheme
    code --install-extension xen.vscode-theme-cenhanced
}
set-exstensions_for_vscode