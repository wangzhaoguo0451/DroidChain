.class public final synthetic Lcsy;
.super Ljava/lang/Object;
.source "PlayExpDownloadTask2.java"


# static fields
.field public static final synthetic a:[I

.field public static final synthetic b:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 156
    invoke-static {}, Lcom/wandoujia/download2/PlayExpDownloadTask2$DownloadStep;->values()[Lcom/wandoujia/download2/PlayExpDownloadTask2$DownloadStep;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcsy;->b:[I

    :try_start_0
    sget-object v0, Lcsy;->b:[I

    sget-object v1, Lcom/wandoujia/download2/PlayExpDownloadTask2$DownloadStep;->GET_URLS:Lcom/wandoujia/download2/PlayExpDownloadTask2$DownloadStep;

    invoke-virtual {v1}, Lcom/wandoujia/download2/PlayExpDownloadTask2$DownloadStep;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_7

    :goto_0
    :try_start_1
    sget-object v0, Lcsy;->b:[I

    sget-object v1, Lcom/wandoujia/download2/PlayExpDownloadTask2$DownloadStep;->DOWNLOAD:Lcom/wandoujia/download2/PlayExpDownloadTask2$DownloadStep;

    invoke-virtual {v1}, Lcom/wandoujia/download2/PlayExpDownloadTask2$DownloadStep;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_6

    .line 117
    :goto_1
    invoke-static {}, Lcom/wandoujia/p4/webdownload/download/bridge/IVideoWebDownloadManager$StatusCode;->values()[Lcom/wandoujia/p4/webdownload/download/bridge/IVideoWebDownloadManager$StatusCode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcsy;->a:[I

    :try_start_2
    sget-object v0, Lcsy;->a:[I

    sget-object v1, Lcom/wandoujia/p4/webdownload/download/bridge/IVideoWebDownloadManager$StatusCode;->PAGE_LOAD_TIMEOUT:Lcom/wandoujia/p4/webdownload/download/bridge/IVideoWebDownloadManager$StatusCode;

    invoke-virtual {v1}, Lcom/wandoujia/p4/webdownload/download/bridge/IVideoWebDownloadManager$StatusCode;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_5

    :goto_2
    :try_start_3
    sget-object v0, Lcsy;->a:[I

    sget-object v1, Lcom/wandoujia/p4/webdownload/download/bridge/IVideoWebDownloadManager$StatusCode;->SRC_FOUND_TIMEOUT:Lcom/wandoujia/p4/webdownload/download/bridge/IVideoWebDownloadManager$StatusCode;

    invoke-virtual {v1}, Lcom/wandoujia/p4/webdownload/download/bridge/IVideoWebDownloadManager$StatusCode;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_4

    :goto_3
    :try_start_4
    sget-object v0, Lcsy;->a:[I

    sget-object v1, Lcom/wandoujia/p4/webdownload/download/bridge/IVideoWebDownloadManager$StatusCode;->SRC_NOT_FOUND:Lcom/wandoujia/p4/webdownload/download/bridge/IVideoWebDownloadManager$StatusCode;

    invoke-virtual {v1}, Lcom/wandoujia/p4/webdownload/download/bridge/IVideoWebDownloadManager$StatusCode;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_3

    :goto_4
    :try_start_5
    sget-object v0, Lcsy;->a:[I

    sget-object v1, Lcom/wandoujia/p4/webdownload/download/bridge/IVideoWebDownloadManager$StatusCode;->PAGE_DOWNLOAD_ERROR:Lcom/wandoujia/p4/webdownload/download/bridge/IVideoWebDownloadManager$StatusCode;

    invoke-virtual {v1}, Lcom/wandoujia/p4/webdownload/download/bridge/IVideoWebDownloadManager$StatusCode;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_2

    :goto_5
    :try_start_6
    sget-object v0, Lcsy;->a:[I

    sget-object v1, Lcom/wandoujia/p4/webdownload/download/bridge/IVideoWebDownloadManager$StatusCode;->OK:Lcom/wandoujia/p4/webdownload/download/bridge/IVideoWebDownloadManager$StatusCode;

    invoke-virtual {v1}, Lcom/wandoujia/p4/webdownload/download/bridge/IVideoWebDownloadManager$StatusCode;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_1

    :goto_6
    :try_start_7
    sget-object v0, Lcsy;->a:[I

    sget-object v1, Lcom/wandoujia/p4/webdownload/download/bridge/IVideoWebDownloadManager$StatusCode;->CANCELLED:Lcom/wandoujia/p4/webdownload/download/bridge/IVideoWebDownloadManager$StatusCode;

    invoke-virtual {v1}, Lcom/wandoujia/p4/webdownload/download/bridge/IVideoWebDownloadManager$StatusCode;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_0

    :goto_7
    return-void

    :catch_0
    move-exception v0

    goto :goto_7

    :catch_1
    move-exception v0

    goto :goto_6

    :catch_2
    move-exception v0

    goto :goto_5

    :catch_3
    move-exception v0

    goto :goto_4

    :catch_4
    move-exception v0

    goto :goto_3

    :catch_5
    move-exception v0

    goto :goto_2

    :catch_6
    move-exception v0

    goto :goto_1

    :catch_7
    move-exception v0

    goto :goto_0
.end method
