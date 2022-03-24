# ouija64 #
![top](img/ouija64_top.JPG)

### 目次 ###
- [ouija64](#ouija64)
    - [目次](#目次)
    - [購入ページ](#購入ページ)
    - [ouija64の対応機能について](#ouija64の対応機能について)
    - [ページマップ](#ページマップ)
    - [連絡先](#連絡先)

### 購入ページ ###
遊舎工房にて販売予定！  

### ouija64の対応機能について ###
ouija64は[GL516](https://salicylic-acid3.hatenablog.com/entry/gl516-introduction)に対応した65%自作キーボードです。  

- GL516互換キーボード  
- 65% ANSIレイアウト  
- Raspberry Pi Pico  
- Cherry MX互換キースイッチ  
- Cherry MX互換キーキャップ  
- PCB用スイッチソケット  
- SMDダイオード（1N4148W）  
- （オプション）ロータリーエンコーダー  
- （オプション）ジョイスティック  
- （オプション）インジゲーター用LED(sk6812mini-e)  

### ページマップ ###
組み立てるにあたって使用するファイルが本リポジトリには格納されています。  

- [doc](doc)  
    ビルドガイド等のドキュメントが格納されています。  
    ビルドガイドへのリンクはこちらへ => [『ouija64ビルドガイド』](doc/buildguide.md)  
- [firmware_source](firmware_source)  
    ファームウェアを書き出すためのファイルが格納されています。  
    現時点でQMK_sekigon内にのみファイルがありますが、これはsekigonさんの「[RP2040対応のQMK(非公式)を動かす](https://github.com/sekigon-gonnoc/qmk_firmware/tree/rp2040)」の対応版です。
    QMKの正式対応はおそらく2022年5月末であり、その後公式のリポジトリにファームウェアをPRする予定です。  
    PRKやKMKにつきましては、作者が触れてきていないため学習から入りますので対応時期は不明ですが対応予定です。
- [uf2](uf2)  
    Raspberry Pi Picoに導入できるようにコンパイルされたデータです。  
- [img](img)  
    本ガイドのために撮影した画像です。  
- [plate](plate)  
    スイッチ用プレート及びアクセントプレートのaiファイルが同梱されています。  


### 連絡先 ###
Twitter: [marbySAN](https://twitter.com/marbySAN)  
Discord: marby#2153  
