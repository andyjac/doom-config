;;; ~/.doom.d/elisp/lsp.el -*- lexical-binding: t; -*-

(require 'lsp-mode)

(defvar lsp-enhanced-flycheck-checkers
  '(javascript-eslint
    go-gofmt
    erlang))

(defgroup lsp-ccls nil
  "LSP support for C/C++/Objective-C using CC Language Server"
  :group lsp-mode
  :link "https://github.com/MaskRay/ccls"
  :package-version '(lsp-mode . "6.1"))

(defcustom lsp-clients-cc-library-directories '("/usr/")
  "List of directories which will be considered to be libraries."
  :risky t
  :type '(repeat string)
  :group 'lsp-ccls
  :package-version '(lsp-mode . "6.1"))

(after! (:and lsp flycheck)
  (dolist (checker lsp-enhanced-flycheck-checkers)
    (flycheck-add-next-checker 'lsp checker)))

(after! flycheck
  (setq-default flycheck-disabled-checkers '(go-vet))
  ;; (setq-default flycheck-clang-args '("-std=c++14"))
  )

(use-package lsp-mode
  :config
  (setq ccls-library-folders-fn
        (lambda (_workspace) lsp-clients-cc-library-directories)))
