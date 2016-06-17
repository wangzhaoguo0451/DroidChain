.class public Lcom/wandoujia/p4/netcheck/fragment/NetCheckCheckingFragment$DefaultNetCheckConfig;
.super Lcom/wandoujia/p4/netcheck/model/Configs;
.source "NetCheckCheckingFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 207
    invoke-direct {p0}, Lcom/wandoujia/p4/netcheck/model/Configs;-><init>()V

    .line 208
    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "2G"

    aput-object v1, v0, v4

    const-string v1, "3G"

    aput-object v1, v0, v5

    const-string v1, "wifi"

    aput-object v1, v0, v6

    .line 209
    const/16 v1, 0xe

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "apps.wandoujia.com"

    aput-object v2, v1, v4

    const-string v2, "apk.wandoujia.com"

    aput-object v2, v1, v5

    const-string v2, "m.wdjcdn.com"

    aput-object v2, v1, v6

    const-string v2, "oscar.wandoujia.com"

    aput-object v2, v1, v7

    const/4 v2, 0x4

    const-string v3, "account.wandoujia.com"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "shouji.360tpcdn.com"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "gdown.baidu.com"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "www.baidu.com"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "pay.wandoujia.com"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "innerpay.wandoujia.com"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "www.360.cn"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string v3, "soft.sj.91.com"

    aput-object v3, v1, v2

    const/16 v2, 0xc

    const-string v3, "img.wdjimg.com"

    aput-object v3, v1, v2

    const/16 v2, 0xd

    const-string v3, "startpage.wandoujia.com"

    aput-object v3, v1, v2

    .line 214
    new-instance v2, Lcom/wandoujia/p4/netcheck/model/Configs$TestDomain;

    invoke-direct {v2}, Lcom/wandoujia/p4/netcheck/model/Configs$TestDomain;-><init>()V

    iput-object v2, p0, Lcom/wandoujia/p4/netcheck/fragment/NetCheckCheckingFragment$DefaultNetCheckConfig;->testdomain:Lcom/wandoujia/p4/netcheck/model/Configs$TestDomain;

    .line 215
    iget-object v2, p0, Lcom/wandoujia/p4/netcheck/fragment/NetCheckCheckingFragment$DefaultNetCheckConfig;->testdomain:Lcom/wandoujia/p4/netcheck/model/Configs$TestDomain;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/wandoujia/p4/netcheck/model/Configs$TestDomain;->setDomains(Ljava/util/List;)V

    .line 216
    iget-object v1, p0, Lcom/wandoujia/p4/netcheck/fragment/NetCheckCheckingFragment$DefaultNetCheckConfig;->testdomain:Lcom/wandoujia/p4/netcheck/model/Configs$TestDomain;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/wandoujia/p4/netcheck/model/Configs$TestDomain;->setNetwork(Ljava/util/List;)V

    .line 218
    const-string v1, "Mozilla/5.0 (Linux; Android 4.1.1; HTC One X Build/JRO03C) AppleWebKit/535.19 (KHTML, like Gecko) Chrome/18.0.1025.166 Mobile Safari/535.19"

    iput-object v1, p0, Lcom/wandoujia/p4/netcheck/fragment/NetCheckCheckingFragment$DefaultNetCheckConfig;->ua:Ljava/lang/String;

    .line 221
    new-instance v1, Lcom/wandoujia/p4/netcheck/model/Configs$Publics;

    invoke-direct {v1}, Lcom/wandoujia/p4/netcheck/model/Configs$Publics;-><init>()V

    iput-object v1, p0, Lcom/wandoujia/p4/netcheck/fragment/NetCheckCheckingFragment$DefaultNetCheckConfig;->publics:Lcom/wandoujia/p4/netcheck/model/Configs$Publics;

    .line 222
    iget-object v1, p0, Lcom/wandoujia/p4/netcheck/fragment/NetCheckCheckingFragment$DefaultNetCheckConfig;->publics:Lcom/wandoujia/p4/netcheck/model/Configs$Publics;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/wandoujia/p4/netcheck/model/Configs$Publics;->setNetwork(Ljava/util/List;)V

    .line 223
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 224
    new-array v1, v7, [Ljava/lang/String;

    const-string v2, "http://www.baidu.com"

    aput-object v2, v1, v4

    const-string v2, "utf-8"

    aput-object v2, v1, v5

    const-string v2, "\u767e\u5ea6\u4e00\u4e0b\uff0c\u4f60\u5c31\u77e5\u9053"

    aput-object v2, v1, v6

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 225
    new-array v1, v7, [Ljava/lang/String;

    const-string v2, "http://www.qq.com"

    aput-object v2, v1, v4

    const-string v2, "gb2312"

    aput-object v2, v1, v5

    const-string v2, "\u817e\u8baf\u9996\u9875"

    aput-object v2, v1, v6

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 226
    new-array v1, v7, [Ljava/lang/String;

    const-string v2, "https://account.wandoujia.com/web/login"

    aput-object v2, v1, v4

    const-string v2, "utf-8"

    aput-object v2, v1, v5

    const-string v2, "\u7528\u6237\u767b\u5f55"

    aput-object v2, v1, v6

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 227
    new-array v1, v7, [Ljava/lang/String;

    const-string v2, "http://apps.wandoujia.com"

    aput-object v2, v1, v4

    const-string v2, "utf-8"

    aput-object v2, v1, v5

    const-string v2, "\u88c5\u673a\u5fc5\u5907"

    aput-object v2, v1, v6

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 228
    iget-object v1, p0, Lcom/wandoujia/p4/netcheck/fragment/NetCheckCheckingFragment$DefaultNetCheckConfig;->publics:Lcom/wandoujia/p4/netcheck/model/Configs$Publics;

    invoke-virtual {v1, v0}, Lcom/wandoujia/p4/netcheck/model/Configs$Publics;->setUrls(Ljava/util/List;)V

    .line 230
    new-instance v0, Lcom/wandoujia/p4/netcheck/model/Configs$DownloadUrls;

    invoke-direct {v0}, Lcom/wandoujia/p4/netcheck/model/Configs$DownloadUrls;-><init>()V

    iput-object v0, p0, Lcom/wandoujia/p4/netcheck/fragment/NetCheckCheckingFragment$DefaultNetCheckConfig;->downloadurls:Lcom/wandoujia/p4/netcheck/model/Configs$DownloadUrls;

    .line 231
    iget-object v0, p0, Lcom/wandoujia/p4/netcheck/fragment/NetCheckCheckingFragment$DefaultNetCheckConfig;->downloadurls:Lcom/wandoujia/p4/netcheck/model/Configs$DownloadUrls;

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "wifi"

    aput-object v2, v1, v4

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wandoujia/p4/netcheck/model/Configs$DownloadUrls;->setNetwork(Ljava/util/List;)V

    .line 232
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 233
    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "http://apps.wandoujia.com/redirect?url=http%3A%2F%2Fapk.wdjcdn.com%2F9%2F1c%2F239c36d8e7c07788cd8f27f37d8ad1c9.apk&content-type=application"

    aput-object v2, v1, v4

    const-string v2, "\u5b89\u5353\u624b\u7535\u7b52"

    aput-object v2, v1, v5

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 238
    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "http://m.wdjcdn.com/apk.wdjcdn.com/9/1c/239c36d8e7c07788cd8f27f37d8ad1c9.apk"

    aput-object v2, v1, v4

    const-string v2, "\u5b89\u5353\u624b\u7535\u7b52"

    aput-object v2, v1, v5

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 243
    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "http://gdown.baidu.com/data/wisegame/197da44d40fa7521/zhongjishoudiantong.apk"

    aput-object v2, v1, v4

    const-string v2, "\u7ec8\u6781\u624b\u7535\u7b52"

    aput-object v2, v1, v5

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 248
    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "http://img.wdjimg.com/mms/icon/v1/3/bd/5295ac6a9c6d51e8285690bdbe1b1bd3_256_256.png"

    aput-object v2, v1, v4

    const-string v2, "\u5fae\u4fe1LOGO"

    aput-object v2, v1, v5

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 253
    iget-object v1, p0, Lcom/wandoujia/p4/netcheck/fragment/NetCheckCheckingFragment$DefaultNetCheckConfig;->downloadurls:Lcom/wandoujia/p4/netcheck/model/Configs$DownloadUrls;

    invoke-virtual {v1, v0}, Lcom/wandoujia/p4/netcheck/model/Configs$DownloadUrls;->setUrls(Ljava/util/List;)V

    .line 254
    return-void
.end method
