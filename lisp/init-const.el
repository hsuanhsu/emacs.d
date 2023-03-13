;;; init-const.el --- setting for const

;;; Commentary:

;;; Code:

;;判斷作業系統
(defconst *is-mac* (eq system-type 'darwin))
(defconst *is-linux* (eq system-type 'gnu/linux))
(defconst *is-windows* (memq system-type '(ms-dos windows-nt cygwin)))

;;各個文件通過 provide 暴露對外調用的名稱，其他檔案可以使用require來叫用此名稱
(provide 'init-const)

;;; init-const.el ends here
