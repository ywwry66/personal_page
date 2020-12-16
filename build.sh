#!/bin/sh
emacs --batch --no-init-file --load publish.el --funcall toggle-debug-on-error --eval="(org-publish \"blog\" t)"
