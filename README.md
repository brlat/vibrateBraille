# vibrateBraille - 指点字、体表点字、振動点字実験アプリ

## 何をするものか

iPhoneのバイブレーションを使って、何か点字を表現できないかと思ってアプリの作り方を勉強中です。

現在のバージョンでは、iPhone画面の一方の半分をタップすると「ブーブー」と2回、反対の半分側をタップすると「ブー」と1回振動するだけのアプリです。

たとえば点があることを2回の振動で表し、点がないことを1回の振動で表すことで、点字1マス分を6回のタップで表現できます。

## Mac VoiceOverでのXcodeの操作

次のようなキーボードショートカットを使用することで、全盲視覚障害の私はXcodeをVoiceOverの画面読み上げとキーボード操作だけで使っています。

* Commandキー + 1キー - プロジェクトナビゲータへ移動
* Option + Command + Lキー - オブジェクトライブラリへ移動
* VOキー + スペースキー - 何かを選択。VOキーは設定によってCtrlキーとOptionキー、またはCapsキーのこと。
* VOキー + F5キー - マウスカーソルがどこにあるか確認
* VOキー + Commandキー + F5キー - マウスカーソルをVOカーソルのところに持ってくる
* Shift + VOキー + Commandキー - マウスを押し下げる、ドラッグ開始、またはマウスを離す、ドロップする
* Option + Command + 4キー -  attributeを開く、ボタン内のテキストの変更など
* Option + Command + 5キー - sizeを開く、ボタンの位置や大きさの設定など
* Shift + VOキー + 数字キー - 現在のVOカーソル位置をホットスポット(数字)として保存
* VOキー + 数字キー - 保存したホットスポット(数字)にVOカーソルを移動
* Option + Command + エンターキー - アシスタントエディタを開く

## アプリの作り方

新規プロジェクトを作り、ボタンを2つキャンバスに貼り付けます。

ボタンの名前は、dot(点がある)とblank(点がない)としています。

ボタンの位置と大きさを設定します。

アシスタントエディタを開いて次のように書きます。

<div>
<code>
// ViewController.swift の内容

import UIKit

import AudioToolbox // バイブレートするAudioServicesPlaySystemSound()を使うために追加

class ViewController: UIViewController {

// 「ブーブーー」と2回振動する関数    

@IBAction func twoVibe(){

        AudioServicesPlaySystemSound(1011)

        sleep(1) // 少し間を置く

    }
    
// 「ブー」と1回振動する関数

@IBAction func oneVibe(){
        
AudioServicesPlaySystemSound(4095)
        
sleep(1) // 少し間を置く
    
}

// 以下略

</code>
</div>

このままでは@IBActionが「not connected」というエラーになるので、このエラーメッセージが出ているところにVOカーソルを合わせて、ドラッグしてキャンバスの目的のボタンのところにドロップします。

## 著作権

自己責任で自由にどうぞご利用ください。
