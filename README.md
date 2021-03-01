# VRC Symlink Package
### About
複数の UnityProject で、 VRCSDK, UdonSharp などのアセットを一か所で管理する際に役立つかもしれないスクリプトです。 
プロジェクト内から、一か所に展開された Unitypackage の中身へ纏めてシンボリックリンクを作成します。  
以下の様なリンクの作成を、纏めて一つのコマンドで処理できます。  
* C:\Packages\Assets\VRCSDK <--> C:\Users\user\UnityPriject\Assets\VRCSDK
* C:\Packages\Assets\UdonSharp <--> C:\Users\user\UnityPriject\Assets\UdonSharp
* C:\Packages\Assets\UdonSharp.meta <--> C:\Users\user\UnityPriject\Assets\UdonSharp.meta

### Usage
PowerShell スクリプトを初めて利用する場合、管理者権限で実行した PowerShell で以下のコマンドをあらかじめ実行しておく必要があります。  
Set-ExecutionPolicy RemoteSigned  

スクリプトを使用するには、ダウンロードした VRC_SymlinkPackage.ps1 ファイルを右クリックし、"Powershellで実行" を押します。  
パラメーターの入力を要求されますので、以下の値を入力します。  
TargetReposDir: リポジトリのディレクトリです。Assets や Packages のフォルダを含む場所です。  
SourcePackageDir: 展開された UnityPackage のディレクトリです。Assets や Packages のフォルダを含む場所です。  

![コマンドサンプル画像](https://github.com/AoiKamishiro/VRC_SymlinkPackage/blob/master/Resources/Image1.png)

パッケージの展開には、以下のツールを使用しました。
[UnityPackageUnPacker](https://booth.pm/ja/items/1037772)

### Contact
[Twitter: @aoi3192](https://twitter.com/aoi3192)  
[Booth: 神城工業](https://kamishirolab.booth.pm/)  
[Vket: 神城工業](https://www.v-market.work/ec/shops/1810/detail/)  
[VRC: 神城アオイ](https://www.vrchat.com/home/user/usr_19514816-2cf8-43cc-a046-9e2d87d15af7)
