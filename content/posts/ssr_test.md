+++
title = "中華の怪しいコーヒーヒーターとNucleo32F303で低温調理器を作る（２）"
tags = [""]
date = "2020-04-16"
+++

ヒーターのオンオフで温度を調整したいので、SSRを用いることにした。

Nucleo32F303K8T6を注文した際に一緒に頼んだものだ。

SSR : http://akizukidenshi.com/catalog/g/gK-00203/

タップはDAISOで買ったのを剥いた。最近は100均でもPSEマーク付いてるんだなぁと思った。

GPIOを5秒ごとにトグルするコードを例によってCubeMXとSW4STM32を用いて書きテストした。

![ssr_test](/ssr_test/ssr_test.gif)

また、前回の記事でDS18B20をADCにぶち込んでいたが、デジタル温度計をADCに入力するのは何がしたいんだろう。

Arduinoではライブラリがあり、NucleoもF4xx/F7xx系のものがあったが、F3xxに互換があるのか......?（RTOS使ってたので多分ない）
