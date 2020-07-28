((nil . ((eval . (setq-local my-project-dir
                             (file-truename (locate-dominating-file default-directory
                                                                    ".dir-locals.el"))))
         (eval . (setq-local cmake-ide-build-dir
                             (format "%s/%s" my-project-dir "build")))
         (eval . (setq-local cmake-ide-project-dir my-project-dir)))))
