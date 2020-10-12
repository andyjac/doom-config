;;; ~/.doom.d/elisp/elixir.el -*- lexical-binding: t; -*-

(after! (:and alchemist-mode elixir-mode)
  (setq alchemist-mix-command      "/Users/andrewjacobson/.kiex/elixirs/elixir-1.10.0/bin/mix")
  (setq alchemist-iex-program-name "/Users/andrewjacobson/.kiex/elixirs/elixir-1.10.0/bin/iex")
  (setq alchemist-execute-command  "/Users/andrewjacobson/.kiex/elixirs/elixir-1.10.0/bin/elixir")
  (setq alchemist-compile-command  "/Users/andrewjacobson/.kiex/elixirs/elixir-1.10.0/bin/elixirc"))

(use-package lsp
  :init (add-to-list 'exec-path "/Users/andrewjacobson/elixir-ls"))
