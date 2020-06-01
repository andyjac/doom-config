;;; ~/.doom.d/elisp/lsp.el -*- lexical-binding: t; -*-

(defvar lsp-enhanced-flycheck-checkers
  '(javascript-eslint
    go-gofmt
    erlang))

(after! (:and lsp flycheck)
  (dolist (checker lsp-enhanced-flycheck-checkers)
    (flycheck-add-next-checker 'lsp checker)))
