# prompt

[![pre-commit.ci status](https://results.pre-commit.ci/badge/github/gnu-octave/prompt/main.svg)](https://results.pre-commit.ci/latest/github/gnu-octave/prompt/main)
[![github/workflow](https://github.com/gnu-octave/prompt/actions/workflows/main.yml/badge.svg)](https://github.com/gnu-octave/prompt/actions)

[![github/downloads](https://shields.io/github/downloads/gnu-octave/prompt/total)](https://github.com/gnu-octave/prompt/releases)
[![github/downloads/latest](https://shields.io/github/downloads/gnu-octave/prompt/latest/total)](https://github.com/gnu-octave/prompt/releases/latest)
[![github/issues](https://shields.io/github/issues/gnu-octave/prompt)](https://github.com/gnu-octave/prompt/issues)
[![github/issues-closed](https://shields.io/github/issues-closed/gnu-octave/prompt)](https://github.com/gnu-octave/prompt/issues?q=is%3Aissue+is%3Aclosed)
[![github/issues-pr](https://shields.io/github/issues-pr/gnu-octave/prompt)](https://github.com/gnu-octave/prompt/pulls)
[![github/issues-pr-closed](https://shields.io/github/issues-pr-closed/gnu-octave/prompt)](https://github.com/gnu-octave/prompt/pulls?q=is%3Apr+is%3Aclosed)
[![github/discussions](https://shields.io/github/discussions/gnu-octave/prompt)](https://github.com/gnu-octave/prompt/discussions)
[![github/milestones](https://shields.io/github/milestones/all/gnu-octave/prompt)](https://github.com/gnu-octave/prompt/milestones)
[![github/forks](https://shields.io/github/forks/gnu-octave/prompt)](https://github.com/gnu-octave/prompt/network/members)
[![github/stars](https://shields.io/github/stars/gnu-octave/prompt)](https://github.com/gnu-octave/prompt/stargazers)
[![github/watchers](https://shields.io/github/watchers/gnu-octave/prompt)](https://github.com/gnu-octave/prompt/watchers)
[![github/contributors](https://shields.io/github/contributors/gnu-octave/prompt)](https://github.com/gnu-octave/prompt/graphs/contributors)
[![github/commit-activity](https://shields.io/github/commit-activity/w/gnu-octave/prompt)](https://github.com/gnu-octave/prompt/graphs/commit-activity)
[![github/last-commit](https://shields.io/github/last-commit/gnu-octave/prompt)](https://github.com/gnu-octave/prompt/commits)
[![github/release-date](https://shields.io/github/release-date/gnu-octave/prompt)](https://github.com/gnu-octave/prompt/releases/latest)

[![github/license](https://shields.io/github/license/gnu-octave/prompt)](https://github.com/gnu-octave/prompt/blob/main/LICENSE)
[![github/languages](https://shields.io/github/languages/count/gnu-octave/prompt)](https://github.com/gnu-octave/prompt)
[![github/languages/top](https://shields.io/github/languages/top/gnu-octave/prompt)](https://github.com/gnu-octave/prompt)
[![github/directory-file-count](https://shields.io/github/directory-file-count/gnu-octave/prompt)](https://github.com/gnu-octave/prompt)
[![github/code-size](https://shields.io/github/languages/code-size/gnu-octave/prompt)](https://github.com/gnu-octave/prompt)
[![github/repo-size](https://shields.io/github/repo-size/gnu-octave/prompt)](https://github.com/gnu-octave/prompt)
[![github/v](https://shields.io/github/v/release/gnu-octave/prompt)](https://github.com/gnu-octave/prompt)

A [powerlevel10k](https://github.com/romkatv/powerlevel10k)-like prompt for
[octave](https://octave.org).

![screenshot](https://github.com/gnu-octave/prompt/assets/32936898/dc261e93-cd2f-4a59-8c66-590c460d2485)

## Install

```matlab
pkg install prompt
```

## Usage

`~/.config/octave/octaverc`:

```matlab
pkg load prompt
PS1(get_ps1())
```

## Customize

- See [`help get_ps1`](inst/get_ps1.m) for usage.
- See _Color Handling_ of
  [`man 5 terminfo`](https://man7.org/linux/man-pages/man5/terminfo.5.html)
  for color name/value.
- See
  [powerline-extra-symbols](https://github.com/ryanoasis/powerline-extra-symbols)
  for separator.
- See
  [Customizing-the-Prompt](https://docs.octave.org/latest/Customizing-the-Prompt.html)
  for prompt escape code.

## Similar Projects

- [vim-airline](https://github.com/vim-airline/vim-airline): for vim.
- [powerlevel10k](https://github.com/romkatv/powerlevel10k): for zsh.
- [powerline](https://github.com/powerline/powerline): for vim, zsh, bash,
  tmux, IPython, Awesome and Qtile.
- [bash-prompt-style](https://github.com/Freed-Wu/bash-prompt-style): for bash.
- [translate-shell](https://github.com/Freed-Wu/translate-shell): for python.
- [tcl-prompt](https://github.com/Freed-Wu/tcl-prompt): for tcl.
