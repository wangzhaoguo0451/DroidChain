.class public final Lgde;
.super Ljava/lang/Object;
.source "FirstDownloadTaskGenerator.java"


# static fields
.field public static final b:[Ljava/lang/String;


# instance fields
.field public final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public c:Z

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field private final f:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 52
    const/16 v0, 0x20

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "/UCDownloads"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "/QQBrowser/Download"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "/LXDOWNLOAD/DOWNLOAD"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "/qihoo_browser/download"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "/AnTutuBrowser/download"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "/Boat_Browser_Cn/downloads"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "/cmsurfclient/downloads"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "/MxBrowser/Downloads"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "/TTDownload/installapk"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "/TDDOWNLOAD"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "/DolphinBrowserCN/download"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "/Dolphin_Browser_Mini/download"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "/ydBrowser/download"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "/360Browser/download"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "/Download/2345\u6d4f\u89c8\u5668\u4e0b\u8f7d/\u5b89\u88c5\u5305"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "/Download/APK"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "/Download/Other"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "/MyFavorite"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "/QQBrowser/\u5b89\u88c5\u5305"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "/apc/ApcBrowser/downloads"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "/baidu/SearchBox/downloads"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "/baidu/flyflow/downloads"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "/cowry/download"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "/data/internal_memory"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "/download"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "/hao123/down/apk"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "/kbrowser/download/App"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "/\u4e0b\u8f7d/Download"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "/\u4e0b\u8f7d/Other"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "/\u6211\u7684\u4e0b\u8f7d"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "/\u6211\u7684\u4e0b\u8f7d/\u6d4f\u89c8\u5668/\u5176\u4ed6"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "/\u8bdd\u673aU\u76d8/Download"

    aput-object v2, v0, v1

    sput-object v0, Lgde;->b:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lgde;->a:Ljava/util/List;

    .line 90
    const/4 v0, 0x0

    iput-boolean v0, p0, Lgde;->c:Z

    .line 94
    const-string v0, ""

    iput-object v0, p0, Lgde;->d:Ljava/lang/String;

    .line 98
    const-string v0, ""

    iput-object v0, p0, Lgde;->e:Ljava/lang/String;

    .line 101
    iput-object p1, p0, Lgde;->f:Landroid/content/Context;

    .line 102
    return-void
.end method

.method static synthetic a(Lgde;)V
    .locals 6
    .parameter

    .prologue
    .line 38
    iget-object v2, p0, Lgde;->d:Ljava/lang/String;

    const-string v0, "http://apps.wandoujia.com/apps/%1$s/download?pos=p3/bind"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v1, 0x0

    new-instance v4, Lfvx;

    invoke-direct {v4}, Lfvx;-><init>()V

    invoke-virtual {v4}, Lfvx;->getRequestBuilder()Lcom/wandoujia/rpc/http/request/HttpRequestBuilder;

    move-result-object v0

    check-cast v0, Lfxg;

    iput-object v2, v0, Lfxg;->a:Ljava/lang/String;

    :try_start_0
    invoke-static {}, Lesb;->b()Lfvu;

    move-result-object v0

    invoke-virtual {v0, v4}, Lfvu;->execute(Lcom/wandoujia/rpc/http/delegate/ApiDelegate;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/entities/app/IAppDetailInfo;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    new-instance v1, Lhby;

    invoke-direct {v1}, Lhby;-><init>()V

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/wandoujia/entities/app/IAppDetailInfo;->getAppDetailTitle()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lhby;->h:Ljava/lang/String;

    invoke-interface {v0}, Lcom/wandoujia/entities/app/IAppDetailInfo;->getAppDetailDownloadUrl()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lhby;->d:Ljava/lang/String;

    invoke-interface {v0}, Lcom/wandoujia/entities/app/IAppDetailInfo;->getAppDetailSize()I

    move-result v3

    int-to-long v4, v3

    iput-wide v4, v1, Lhby;->p:J

    sget-object v3, Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;->APP:Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;

    iput-object v3, v1, Lhby;->l:Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;

    sget-object v3, Lcom/wandoujia/download2/DownloadRequestParam$Type;->APP:Lcom/wandoujia/download2/DownloadRequestParam$Type;

    iput-object v3, v1, Lhby;->a:Lcom/wandoujia/download2/DownloadRequestParam$Type;

    invoke-interface {v0}, Lcom/wandoujia/entities/app/IAppDetailInfo;->getAppDetailIcon()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lhby;->i:Ljava/lang/String;

    iput-object v2, v1, Lhby;->g:Ljava/lang/String;

    iput-object v2, v1, Lhby;->j:Ljava/lang/String;

    :goto_1
    invoke-static {}, Lcom/wandoujia/jupiter/JupiterApplication;->a()Landroid/os/Handler;

    move-result-object v0

    new-instance v2, Lgdg;

    invoke-direct {v2, v1}, Lgdg;-><init>(Lhby;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0

    :cond_0
    iput-object v2, v1, Lhby;->h:Ljava/lang/String;

    sget-object v0, Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;->APP:Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;

    iput-object v0, v1, Lhby;->l:Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;

    sget-object v0, Lcom/wandoujia/download2/DownloadRequestParam$Type;->APP:Lcom/wandoujia/download2/DownloadRequestParam$Type;

    iput-object v0, v1, Lhby;->a:Lcom/wandoujia/download2/DownloadRequestParam$Type;

    iput-object v3, v1, Lhby;->d:Ljava/lang/String;

    iput-object v2, v1, Lhby;->g:Ljava/lang/String;

    iput-object v2, v1, Lhby;->j:Ljava/lang/String;

    goto :goto_1
.end method

.method static synthetic b(Lgde;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Lgde;->f:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic c(Lgde;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Lgde;->d:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 11

    .prologue
    const/4 v2, 0x0

    const/4 v10, 0x1

    .line 122
    iget-object v0, p0, Lgde;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 123
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 124
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    .line 125
    if-eqz v4, :cond_0

    .line 126
    array-length v5, v4

    move v1, v2

    :goto_1
    if-ge v1, v5, :cond_0

    aget-object v6, v4, v1

    .line 127
    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    .line 128
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1

    const-string v8, "wandoujia-(.*?)___bind___[0-9A-Za-z_\\.]+\\.apk"

    invoke-virtual {v7, v8}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 131
    const-string v8, "___bind___"

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 132
    if-eqz v7, :cond_1

    array-length v8, v7

    const/4 v9, 0x2

    if-ne v8, v9, :cond_1

    .line 133
    aget-object v8, v7, v10

    const/16 v9, 0x5f

    invoke-virtual {v8, v9}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v8

    .line 134
    if-lez v8, :cond_1

    .line 135
    aget-object v7, v7, v10

    invoke-virtual {v7, v2, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 139
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 140
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ".apk"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 144
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 147
    iput-boolean v10, p0, Lgde;->c:Z

    .line 148
    iput-object v7, p0, Lgde;->d:Ljava/lang/String;

    .line 149
    iput-object v0, p0, Lgde;->e:Ljava/lang/String;

    goto :goto_0

    .line 126
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 156
    :cond_2
    return-void
.end method
