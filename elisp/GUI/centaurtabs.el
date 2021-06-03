  (use-package centaur-tabs
   :ensure t
   :config 
   (setq  centaur-tabs-set-bar 'under
	  x-underline-at-descent-line t
          centaur-tabs-style "bar"
          centaur-tabs-set-icons t
          centaur-tabs-gray-out-icons 'buffer
          centaur-tabs-height 40
          centaur-tabs-set-modified-marker t
          centaur-tabs-modifier-marker "*")
   (centaur-tabs-mode t))
