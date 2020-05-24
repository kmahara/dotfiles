## emacs 25 を導入する。

```vi /etc/yum.repos.d/emacs.repo```
```
[emacs]
name=Emacs repo
baseurl=http://pj.freefaculty.org/EL/7/x86_64/
failovermethod=priority
enabled=1
gpgcheck=1
gpgkey=http://pj.freefaculty.org/EL/PaulJohnson-BinaryPackageSigningKey
```

```yum -y install emacs-nox```

## 初回作業

emacs を起動し以下のコマンドを実行すると、custom.el に記述されているパッケージをインストールする。

```M-x package-refresh-contents``
```M-x package-install-selected-packages```

