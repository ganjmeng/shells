#!/bin/bash
# 一键安装 iTerm2、pip、powerline-status、Homebrew、RVM、Cocoapods、Carthage


echo "\033[32m=========== 安装 iTerm2  ============"
curl -L https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh | sh


echo "\033[32m=========== 安装 pip  ============"
sudo easy_install pip


echo "\033[32m=========== 安装 powerline-status  ============"
pip install powerline-status


echo "\033[32m=========== 安装 Homebrew  ============"
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"


echo "\033[32m=========== 安装 RVM  ============"
curl -L https://get.rvm.io | bash -s stable
# Ruby 版本安装：
# 	rvm list known
# 	rvm install 2.3.0


echo "\033[32m=========== 安装 Cocoapods  ============"
sudo gem install -n /usr/local/bin cocoapods
pod setup


echo "\033[32m=========== 安装 Carthage  ============"
brew install Carthage


echo "\033[32m=========== 安装 Xcode Command Line Tools  ============"
xcode-select --install


echo "\033[32m=========== 安装 fastlane  ============"
udo gem install fastlane


echo "\033[32m=========== 安装 mysql  ============"
brew install mysql
# 设置PATH：
# 	`export PATH=/usr/local/mysql/bin:$PATH`
# 	`echo $PATH`


echo "\033[32m=========== 安装 Tomcat  ============"
# 1. [Tomcat官网](http://tomcat.apache.org) 
# 2. 选择版本：Tomcat 8.5.24 Released   Download
# 3. 选择 Tomcat 压缩包：tar.gz (pgp, md5, sha1, sha512)


echo "\033[32m=========== 安装 Jenkins  ============"
# 1. 安装Java运行环境JDK：[Java JDK](http://www.oracle.com/technetwork/java/javase/downloads/jdk8-downloads-2133151.html)
# 2. 下载最新的Jenkins.war：[jenkins.war](http://mirrors.jenkins.io/war-stable/latest/jenkins.war )
# 3. 进入war包所在目录，执行以下命令：`java -jar jenkins.war`
# 4. 记住给出的安全密码：5042b7ad651f46058c24167507fabd41
# 5. 打开浏览器输入：http://localhost:8080/
# 6. 输入安全密码，弹出Jenkins安装界面，选择默认安装
