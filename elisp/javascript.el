;;; ~/.doom.d/elisp/javascript.el -*- lexical-binding: t; -*-

(setq-hook! 'web-mode-hook
  web-mode-css-indent-offset    2
  web-mode-code-indent-offset   2
  web-mode-markup-indent-offset 2
  web-mode-sql-indent-offset    2)

(setq-hook! 'js2-mode
  js2-basic-offset 2)
