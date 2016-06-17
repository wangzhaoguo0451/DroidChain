.class public final synthetic Lghd;
.super Ljava/lang/Object;
.source "VideoDownloadAction.java"


# static fields
.field public static final synthetic a:[I

.field public static final synthetic b:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 309
    invoke-static {}, Lcom/wandoujia/p4/video2/local/LocalVideoType;->values()[Lcom/wandoujia/p4/video2/local/LocalVideoType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lghd;->b:[I

    :try_start_0
    sget-object v0, Lghd;->b:[I

    sget-object v1, Lcom/wandoujia/p4/video2/local/LocalVideoType;->COMMON:Lcom/wandoujia/p4/video2/local/LocalVideoType;

    invoke-virtual {v1}, Lcom/wandoujia/p4/video2/local/LocalVideoType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_4

    :goto_0
    :try_start_1
    sget-object v0, Lghd;->b:[I

    sget-object v1, Lcom/wandoujia/p4/video2/local/LocalVideoType;->PRIVATE:Lcom/wandoujia/p4/video2/local/LocalVideoType;

    invoke-virtual {v1}, Lcom/wandoujia/p4/video2/local/LocalVideoType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_3

    :goto_1
    :try_start_2
    sget-object v0, Lghd;->b:[I

    sget-object v1, Lcom/wandoujia/p4/video2/local/LocalVideoType;->PLAY_EXP:Lcom/wandoujia/p4/video2/local/LocalVideoType;

    invoke-virtual {v1}, Lcom/wandoujia/p4/video2/local/LocalVideoType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    .line 87
    :goto_2
    invoke-static {}, Lcom/wandoujia/p4/video2/download/VideoDownloadAction$DownloadContext;->values()[Lcom/wandoujia/p4/video2/download/VideoDownloadAction$DownloadContext;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lghd;->a:[I

    :try_start_3
    sget-object v0, Lghd;->a:[I

    sget-object v1, Lcom/wandoujia/p4/video2/download/VideoDownloadAction$DownloadContext;->NORMAL:Lcom/wandoujia/p4/video2/download/VideoDownloadAction$DownloadContext;

    invoke-virtual {v1}, Lcom/wandoujia/p4/video2/download/VideoDownloadAction$DownloadContext;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_1

    :goto_3
    :try_start_4
    sget-object v0, Lghd;->a:[I

    sget-object v1, Lcom/wandoujia/p4/video2/download/VideoDownloadAction$DownloadContext;->DOWNLOAD_ALL:Lcom/wandoujia/p4/video2/download/VideoDownloadAction$DownloadContext;

    invoke-virtual {v1}, Lcom/wandoujia/p4/video2/download/VideoDownloadAction$DownloadContext;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_0

    :goto_4
    return-void

    :catch_0
    move-exception v0

    goto :goto_4

    :catch_1
    move-exception v0

    goto :goto_3

    :catch_2
    move-exception v0

    goto :goto_2

    :catch_3
    move-exception v0

    goto :goto_1

    :catch_4
    move-exception v0

    goto :goto_0
.end method
