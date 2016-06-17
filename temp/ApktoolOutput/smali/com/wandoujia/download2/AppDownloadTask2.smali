.class public final Lcom/wandoujia/download2/AppDownloadTask2;
.super Lcsw;
.source "AppDownloadTask2.java"


# static fields
.field private static final h:Ljava/lang/String;

.field private static n:[B


# instance fields
.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:J

.field private o:Lcom/wandoujia/download2/AppDownloadTask2$DownloadStep;

.field private p:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/net/TrackInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const-class v0, Lcsu;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/wandoujia/download2/AppDownloadTask2;->h:Ljava/lang/String;

    .line 52
    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/wandoujia/download2/AppDownloadTask2;->n:[B

    return-void

    :array_0
    .array-data 0x1
        0x2dt
        0x60t
        0x20t
        0x5ct
        0x4et
        0xat
        0xft
        0x5dt
        0x77t
        0x56t
        0x36t
        0x6ft
        0x74t
        0x38t
        0x2at
        0x54t
    .end array-data
.end method

.method public constructor <init>(Lcom/wandoujia/download2/DownloadRequestParam;Ljava/lang/String;Lepb;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 67
    invoke-direct {p0, p1, p2, p3}, Lcsw;-><init>(Lcom/wandoujia/download2/DownloadRequestParam;Ljava/lang/String;Lepb;)V

    .line 61
    sget-object v0, Lcom/wandoujia/download2/AppDownloadTask2$DownloadStep;->ORIGINAL_URL:Lcom/wandoujia/download2/AppDownloadTask2$DownloadStep;

    iput-object v0, p0, Lcom/wandoujia/download2/AppDownloadTask2;->o:Lcom/wandoujia/download2/AppDownloadTask2$DownloadStep;

    .line 62
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/wandoujia/download2/AppDownloadTask2;->p:Ljava/util/List;

    .line 68
    iget-object v0, p1, Lcom/wandoujia/download2/DownloadRequestParam;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/download2/AppDownloadTask2;->i:Ljava/lang/String;

    .line 69
    iget-object v0, p1, Lcom/wandoujia/download2/DownloadRequestParam;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/download2/AppDownloadTask2;->j:Ljava/lang/String;

    .line 70
    iget-object v0, p1, Lcom/wandoujia/download2/DownloadRequestParam;->d:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/download2/AppDownloadTask2;->k:Ljava/lang/String;

    .line 71
    iget-object v0, p1, Lcom/wandoujia/download2/DownloadRequestParam;->g:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/download2/AppDownloadTask2;->l:Ljava/lang/String;

    .line 72
    return-void
.end method

.method public static synthetic a(Lcom/wandoujia/download2/AppDownloadTask2;Lcom/wandoujia/download2/AppDownloadTask2$DownloadStep;)Lcom/wandoujia/download2/AppDownloadTask2$DownloadStep;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 42
    iput-object p1, p0, Lcom/wandoujia/download2/AppDownloadTask2;->o:Lcom/wandoujia/download2/AppDownloadTask2$DownloadStep;

    return-object p1
.end method

.method public static synthetic a(Lcom/wandoujia/download2/AppDownloadTask2;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 42
    iget-object v0, p0, Lcom/wandoujia/download2/AppDownloadTask2;->l:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic b(Lcom/wandoujia/download2/AppDownloadTask2;)Lcom/wandoujia/download2/AppDownloadTask2$DownloadStep;
    .locals 1
    .parameter

    .prologue
    .line 42
    iget-object v0, p0, Lcom/wandoujia/download2/AppDownloadTask2;->o:Lcom/wandoujia/download2/AppDownloadTask2$DownloadStep;

    return-object v0
.end method

.method public static synthetic c(Lcom/wandoujia/download2/AppDownloadTask2;)Lcom/wandoujia/net/AsyncHttpRequest;
    .locals 1
    .parameter

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/wandoujia/download2/AppDownloadTask2;->n()Lcom/wandoujia/net/AsyncHttpRequest;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic d(Lcom/wandoujia/download2/AppDownloadTask2;)V
    .locals 0
    .parameter

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/wandoujia/download2/AppDownloadTask2;->o()V

    return-void
.end method

.method public static synthetic i()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/wandoujia/download2/AppDownloadTask2;->h:Ljava/lang/String;

    return-object v0
.end method

.method private n()Lcom/wandoujia/net/AsyncHttpRequest;
    .locals 3

    .prologue
    .line 265
    iget-object v0, p0, Lcom/wandoujia/download2/AppDownloadTask2;->i:Ljava/lang/String;

    sget-object v1, Lcom/wandoujia/download2/AppDownloadTask2;->n:[B

    invoke-static {v0, v1}, Lcom/wandoujia/base/utils/CipherUtil;->encrypt(Ljava/lang/String;[B)[B

    move-result-object v0

    .line 266
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "http://portal.wandoujia.com/apkserver/apk-download?url="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x2

    invoke-static {v0, v2}, Lcom/wandoujia/base/utils/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    const-string v2, "UTF-8"

    invoke-static {v0, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 270
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&u="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/wandoujia/download2/AppDownloadTask2;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 271
    new-instance v1, Lcom/wandoujia/net/AsyncHttpRequest;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/wandoujia/net/AsyncHttpRequest;-><init>(Landroid/net/Uri;)V

    return-object v1
.end method

.method private o()V
    .locals 6

    .prologue
    .line 300
    sget-object v0, Lcom/wandoujia/download2/AppDownloadTask2$DownloadStep;->ORIGINAL_URL:Lcom/wandoujia/download2/AppDownloadTask2$DownloadStep;

    iput-object v0, p0, Lcom/wandoujia/download2/AppDownloadTask2;->o:Lcom/wandoujia/download2/AppDownloadTask2$DownloadStep;

    .line 301
    new-instance v0, Lcom/wandoujia/net/AsyncHttpRequest;

    iget-object v1, p0, Lcom/wandoujia/download2/AppDownloadTask2;->i:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/wandoujia/net/AsyncHttpRequest$Method;->GET:Lcom/wandoujia/net/AsyncHttpRequest$Method;

    invoke-direct {v0, v1, v2}, Lcom/wandoujia/net/AsyncHttpRequest;-><init>(Landroid/net/Uri;Lcom/wandoujia/net/AsyncHttpRequest$Method;)V

    .line 302
    iget-object v1, p0, Lcom/wandoujia/download2/AppDownloadTask2;->k:Ljava/lang/String;

    const-string v2, "Cookie"

    invoke-virtual {v0, v2, v1}, Lcom/wandoujia/net/AsyncHttpRequest;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    iget-object v1, p0, Lcom/wandoujia/download2/AppDownloadTask2;->j:Ljava/lang/String;

    const-string v2, "Referer"

    invoke-virtual {v0, v2, v1}, Lcom/wandoujia/net/AsyncHttpRequest;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    iget-object v1, p0, Lcom/wandoujia/download2/AppDownloadTask2;->b:Lepb;

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/wandoujia/download2/AppDownloadTask2;->c:Lcom/wandoujia/download2/DownloadInfo2;

    iget-object v3, v3, Lcom/wandoujia/download2/DownloadInfo2;->a:Lcom/wandoujia/download2/DownloadRequestParam;

    iget-object v3, v3, Lcom/wandoujia/download2/DownloadRequestParam;->e:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0, v2}, Lepb;->a(Lcom/wandoujia/net/AsyncHttpRequest;Ljava/io/File;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/wandoujia/download2/AppDownloadTask2;->g:J

    .line 305
    sget-object v0, Lcom/wandoujia/download2/AppDownloadTask2;->h:Ljava/lang/String;

    const-string v1, "task started url = %s, file_path = %s, requestid = %d"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/wandoujia/download2/AppDownloadTask2;->i:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/wandoujia/download2/AppDownloadTask2;->c:Lcom/wandoujia/download2/DownloadInfo2;

    iget-object v4, v4, Lcom/wandoujia/download2/DownloadInfo2;->a:Lcom/wandoujia/download2/DownloadRequestParam;

    iget-object v4, v4, Lcom/wandoujia/download2/DownloadRequestParam;->e:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-wide v4, p0, Lcom/wandoujia/download2/AppDownloadTask2;->g:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/wandoujia/base/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 307
    return-void
.end method


# virtual methods
.method final a()V
    .locals 4

    .prologue
    .line 76
    sget-object v0, Lcss;->a:[I

    iget-object v1, p0, Lcom/wandoujia/download2/AppDownloadTask2;->o:Lcom/wandoujia/download2/AppDownloadTask2$DownloadStep;

    invoke-virtual {v1}, Lcom/wandoujia/download2/AppDownloadTask2$DownloadStep;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 80
    :goto_0
    return-void

    .line 78
    :pswitch_0
    iget-object v0, p0, Lcom/wandoujia/download2/AppDownloadTask2;->b:Lepb;

    iget-wide v2, p0, Lcom/wandoujia/download2/AppDownloadTask2;->g:J

    invoke-virtual {v0, v2, v3}, Lepb;->a(J)Lepj;

    move-result-object v0

    .line 79
    iget-wide v0, v0, Lepj;->f:J

    iput-wide v0, p0, Lcom/wandoujia/download2/AppDownloadTask2;->d:J

    goto :goto_0

    .line 76
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method final b()V
    .locals 10

    .prologue
    const-wide/16 v8, 0x0

    .line 88
    iget-object v0, p0, Lcom/wandoujia/download2/AppDownloadTask2;->b:Lepb;

    iget-wide v2, p0, Lcom/wandoujia/download2/AppDownloadTask2;->g:J

    invoke-virtual {v0, v2, v3}, Lepb;->a(J)Lepj;

    move-result-object v0

    .line 89
    iget-object v1, p0, Lcom/wandoujia/download2/AppDownloadTask2;->o:Lcom/wandoujia/download2/AppDownloadTask2$DownloadStep;

    sget-object v2, Lcom/wandoujia/download2/AppDownloadTask2$DownloadStep;->ORIGINAL_URL:Lcom/wandoujia/download2/AppDownloadTask2$DownloadStep;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/wandoujia/download2/AppDownloadTask2;->o:Lcom/wandoujia/download2/AppDownloadTask2$DownloadStep;

    sget-object v2, Lcom/wandoujia/download2/AppDownloadTask2$DownloadStep;->BACKUP_URL:Lcom/wandoujia/download2/AppDownloadTask2$DownloadStep;

    if-ne v1, v2, :cond_2

    .line 91
    :cond_0
    iget-object v1, p0, Lcom/wandoujia/download2/AppDownloadTask2;->c:Lcom/wandoujia/download2/DownloadInfo2;

    iget-wide v2, v1, Lcom/wandoujia/download2/DownloadInfo2;->e:J

    cmp-long v1, v2, v8

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/wandoujia/download2/AppDownloadTask2;->c:Lcom/wandoujia/download2/DownloadInfo2;

    iget-wide v2, v1, Lcom/wandoujia/download2/DownloadInfo2;->e:J

    iget-wide v4, v0, Lepj;->f:J

    cmp-long v1, v2, v4

    if-lez v1, :cond_3

    .line 92
    :cond_1
    iput-wide v8, p0, Lcom/wandoujia/download2/AppDownloadTask2;->m:J

    .line 96
    :goto_0
    invoke-virtual {v0}, Lepj;->a()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 97
    iget-object v1, p0, Lcom/wandoujia/download2/AppDownloadTask2;->c:Lcom/wandoujia/download2/DownloadInfo2;

    iget-wide v2, v0, Lepj;->f:J

    iput-wide v2, v1, Lcom/wandoujia/download2/DownloadInfo2;->e:J

    .line 106
    :cond_2
    :goto_1
    return-void

    .line 94
    :cond_3
    iget-wide v2, p0, Lcom/wandoujia/download2/AppDownloadTask2;->m:J

    iget-wide v4, v0, Lepj;->f:J

    iget-object v1, p0, Lcom/wandoujia/download2/AppDownloadTask2;->c:Lcom/wandoujia/download2/DownloadInfo2;

    iget-wide v6, v1, Lcom/wandoujia/download2/DownloadInfo2;->e:J

    sub-long/2addr v4, v6

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/wandoujia/download2/AppDownloadTask2;->m:J

    goto :goto_0

    .line 99
    :cond_4
    iget-object v1, p0, Lcom/wandoujia/download2/AppDownloadTask2;->c:Lcom/wandoujia/download2/DownloadInfo2;

    iget-wide v2, v0, Lepj;->g:J

    iput-wide v2, v1, Lcom/wandoujia/download2/DownloadInfo2;->d:J

    .line 100
    iget-object v1, p0, Lcom/wandoujia/download2/AppDownloadTask2;->c:Lcom/wandoujia/download2/DownloadInfo2;

    iget-wide v2, v0, Lepj;->f:J

    iput-wide v2, v1, Lcom/wandoujia/download2/DownloadInfo2;->e:J

    .line 101
    iget-object v0, p0, Lcom/wandoujia/download2/AppDownloadTask2;->c:Lcom/wandoujia/download2/DownloadInfo2;

    iget-wide v0, v0, Lcom/wandoujia/download2/DownloadInfo2;->d:J

    cmp-long v0, v0, v8

    if-lez v0, :cond_2

    .line 102
    iget-object v0, p0, Lcom/wandoujia/download2/AppDownloadTask2;->c:Lcom/wandoujia/download2/DownloadInfo2;

    iget-object v1, p0, Lcom/wandoujia/download2/AppDownloadTask2;->c:Lcom/wandoujia/download2/DownloadInfo2;

    iget-wide v2, v1, Lcom/wandoujia/download2/DownloadInfo2;->e:J

    const-wide/16 v4, 0x64

    mul-long/2addr v2, v4

    iget-object v1, p0, Lcom/wandoujia/download2/AppDownloadTask2;->c:Lcom/wandoujia/download2/DownloadInfo2;

    iget-wide v4, v1, Lcom/wandoujia/download2/DownloadInfo2;->d:J

    div-long/2addr v2, v4

    long-to-int v1, v2

    iput v1, v0, Lcom/wandoujia/download2/DownloadInfo2;->c:I

    goto :goto_1
.end method

.method final c()V
    .locals 8

    .prologue
    const/16 v4, 0x64

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 110
    iget-object v0, p0, Lcom/wandoujia/download2/AppDownloadTask2;->b:Lepb;

    iget-wide v2, p0, Lcom/wandoujia/download2/AppDownloadTask2;->g:J

    invoke-virtual {v0, v2, v3}, Lepb;->a(J)Lepj;

    move-result-object v0

    .line 111
    sget-object v1, Lcss;->a:[I

    iget-object v2, p0, Lcom/wandoujia/download2/AppDownloadTask2;->o:Lcom/wandoujia/download2/AppDownloadTask2$DownloadStep;

    invoke-virtual {v2}, Lcom/wandoujia/download2/AppDownloadTask2$DownloadStep;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 162
    :goto_0
    sget-object v0, Lcom/wandoujia/download2/AppDownloadTask2;->h:Ljava/lang/String;

    const-string v1, "download success url = %s"

    new-array v2, v7, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/wandoujia/download2/AppDownloadTask2;->i:Ljava/lang/String;

    aput-object v3, v2, v6

    invoke-static {v0, v1, v2}, Lcom/wandoujia/base/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 167
    iget-object v0, p0, Lcom/wandoujia/download2/AppDownloadTask2;->c:Lcom/wandoujia/download2/DownloadInfo2;

    sget-object v1, Lcom/wandoujia/download2/DownloadInfo2$State;->SUCCEED:Lcom/wandoujia/download2/DownloadInfo2$State;

    iput-object v1, v0, Lcom/wandoujia/download2/DownloadInfo2;->b:Lcom/wandoujia/download2/DownloadInfo2$State;

    .line 168
    :goto_1
    return-void

    .line 116
    :pswitch_0
    :try_start_0
    iget-object v0, v0, Lepj;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "result is empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 126
    :catch_0
    move-exception v0

    .line 127
    sget-object v1, Lcom/wandoujia/download2/AppDownloadTask2;->h:Ljava/lang/String;

    const-string v2, "apk server result exception errormsg = %s"

    new-array v3, v7, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v1, v2, v3}, Lcom/wandoujia/base/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 128
    iget-object v1, p0, Lcom/wandoujia/download2/AppDownloadTask2;->c:Lcom/wandoujia/download2/DownloadInfo2;

    sget-object v2, Lcom/wandoujia/download2/DownloadInfo2$State;->FAILED:Lcom/wandoujia/download2/DownloadInfo2$State;

    iput-object v2, v1, Lcom/wandoujia/download2/DownloadInfo2;->b:Lcom/wandoujia/download2/DownloadInfo2$State;

    .line 129
    sget-object v1, Lcom/wandoujia/download2/AppDownloadTask2;->h:Ljava/lang/String;

    const-string v2, "request apk server exception requestId = %d"

    new-array v3, v7, [Ljava/lang/Object;

    iget-wide v4, p0, Lcom/wandoujia/download2/AppDownloadTask2;->g:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v1, v2, v3}, Lcom/wandoujia/base/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 130
    new-instance v1, Lcom/wandoujia/logv3/model/packages/TaskEvent$Builder;

    invoke-direct {v1}, Lcom/wandoujia/logv3/model/packages/TaskEvent$Builder;-><init>()V

    sget-object v2, Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;->DOWNLOAD:Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;

    invoke-virtual {v1, v2}, Lcom/wandoujia/logv3/model/packages/TaskEvent$Builder;->action(Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;)Lcom/wandoujia/logv3/model/packages/TaskEvent$Builder;

    move-result-object v1

    sget-object v2, Lcom/wandoujia/logv3/model/packages/TaskEvent$Status;->READY:Lcom/wandoujia/logv3/model/packages/TaskEvent$Status;

    invoke-virtual {v1, v2}, Lcom/wandoujia/logv3/model/packages/TaskEvent$Builder;->status(Lcom/wandoujia/logv3/model/packages/TaskEvent$Status;)Lcom/wandoujia/logv3/model/packages/TaskEvent$Builder;

    move-result-object v1

    sget-object v2, Lcom/wandoujia/logv3/model/packages/TaskEvent$Result;->FAIL:Lcom/wandoujia/logv3/model/packages/TaskEvent$Result;

    invoke-virtual {v1, v2}, Lcom/wandoujia/logv3/model/packages/TaskEvent$Builder;->result(Lcom/wandoujia/logv3/model/packages/TaskEvent$Result;)Lcom/wandoujia/logv3/model/packages/TaskEvent$Builder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/wandoujia/logv3/model/packages/TaskEvent$Builder;->error_detail(Ljava/lang/String;)Lcom/wandoujia/logv3/model/packages/TaskEvent$Builder;

    move-result-object v0

    .line 135
    new-instance v1, Lcom/wandoujia/logv3/model/packages/ExtraPackage$Builder;

    invoke-direct {v1}, Lcom/wandoujia/logv3/model/packages/ExtraPackage$Builder;-><init>()V

    new-instance v2, Lcom/wandoujia/logv3/model/packages/DownloadPackage$Builder;

    invoke-direct {v2}, Lcom/wandoujia/logv3/model/packages/DownloadPackage$Builder;-><init>()V

    iget-object v3, p0, Lcom/wandoujia/download2/AppDownloadTask2;->c:Lcom/wandoujia/download2/DownloadInfo2;

    iget-object v3, v3, Lcom/wandoujia/download2/DownloadInfo2;->a:Lcom/wandoujia/download2/DownloadRequestParam;

    iget-object v3, v3, Lcom/wandoujia/download2/DownloadRequestParam;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/wandoujia/logv3/model/packages/DownloadPackage$Builder;->url(Ljava/lang/String;)Lcom/wandoujia/logv3/model/packages/DownloadPackage$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/wandoujia/logv3/model/packages/DownloadPackage$Builder;->build()Lcom/wandoujia/logv3/model/packages/DownloadPackage;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/wandoujia/logv3/model/packages/ExtraPackage$Builder;->download_package(Lcom/wandoujia/logv3/model/packages/DownloadPackage;)Lcom/wandoujia/logv3/model/packages/ExtraPackage$Builder;

    move-result-object v1

    .line 137
    invoke-static {}, Leny;->b()Leny;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Leny;->a(Lcom/wandoujia/logv3/model/packages/TaskEvent$Builder;Lcom/wandoujia/logv3/model/packages/ExtraPackage$Builder;)V

    goto :goto_1

    .line 116
    :cond_0
    :try_start_1
    const-string v1, "UTF-8"

    invoke-static {v0, v1}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/wandoujia/base/utils/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    sget-object v1, Lcom/wandoujia/download2/AppDownloadTask2;->n:[B

    invoke-static {v0, v1}, Lcom/wandoujia/base/utils/CipherUtil;->decrypt([B[B)[B

    move-result-object v0

    new-instance v1, Lorg/json/JSONObject;

    new-instance v2, Ljava/lang/String;

    const-string v3, "UTF-8"

    invoke-direct {v2, v0, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "downloadURL"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "downloadURL"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/download2/AppDownloadTask2;->i:Ljava/lang/String;

    iget-object v0, p0, Lcom/wandoujia/download2/AppDownloadTask2;->b:Lepb;

    new-instance v1, Lcom/wandoujia/net/AsyncHttpRequest;

    iget-object v2, p0, Lcom/wandoujia/download2/AppDownloadTask2;->i:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/wandoujia/net/AsyncHttpRequest;-><init>(Landroid/net/Uri;)V

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/wandoujia/download2/AppDownloadTask2;->c:Lcom/wandoujia/download2/DownloadInfo2;

    iget-object v3, v3, Lcom/wandoujia/download2/DownloadInfo2;->a:Lcom/wandoujia/download2/DownloadRequestParam;

    iget-object v3, v3, Lcom/wandoujia/download2/DownloadRequestParam;->e:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lepb;->a(Lcom/wandoujia/net/AsyncHttpRequest;Ljava/io/File;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/wandoujia/download2/AppDownloadTask2;->g:J

    sget-object v0, Lcom/wandoujia/download2/AppDownloadTask2$DownloadStep;->BACKUP_URL:Lcom/wandoujia/download2/AppDownloadTask2$DownloadStep;

    iput-object v0, p0, Lcom/wandoujia/download2/AppDownloadTask2;->o:Lcom/wandoujia/download2/AppDownloadTask2$DownloadStep;

    iget-object v0, p0, Lcom/wandoujia/download2/AppDownloadTask2;->f:Lcsz;

    iget-object v1, v0, Lcsz;->a:[J

    const-wide/16 v2, 0x0

    invoke-static {v1, v2, v3}, Ljava/util/Arrays;->fill([JJ)V

    const/4 v1, 0x0

    iput v1, v0, Lcsz;->b:I

    const-wide/16 v2, 0x0

    iput-wide v2, v0, Lcsz;->c:J

    iget-object v0, p0, Lcom/wandoujia/download2/AppDownloadTask2;->c:Lcom/wandoujia/download2/DownloadInfo2;

    const-wide/16 v2, 0x0

    iput-wide v2, v0, Lcom/wandoujia/download2/DownloadInfo2;->f:J

    iget-object v0, p0, Lcom/wandoujia/download2/AppDownloadTask2;->c:Lcom/wandoujia/download2/DownloadInfo2;

    const-wide/16 v2, 0x0

    iput-wide v2, v0, Lcom/wandoujia/download2/DownloadInfo2;->e:J

    iget-object v0, p0, Lcom/wandoujia/download2/AppDownloadTask2;->c:Lcom/wandoujia/download2/DownloadInfo2;

    const/4 v1, 0x0

    iput v1, v0, Lcom/wandoujia/download2/DownloadInfo2;->c:I

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/wandoujia/download2/AppDownloadTask2;->e:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/wandoujia/download2/AppDownloadTask2;->d:J

    .line 117
    sget-object v0, Lcom/wandoujia/download2/AppDownloadTask2;->h:Ljava/lang/String;

    const-string v1, "start download from backup url = %s, requestId = %d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/wandoujia/download2/AppDownloadTask2;->i:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-wide v4, p0, Lcom/wandoujia/download2/AppDownloadTask2;->g:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/wandoujia/base/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 118
    new-instance v0, Lcom/wandoujia/logv3/model/packages/TaskEvent$Builder;

    invoke-direct {v0}, Lcom/wandoujia/logv3/model/packages/TaskEvent$Builder;-><init>()V

    sget-object v1, Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;->DOWNLOAD:Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;

    invoke-virtual {v0, v1}, Lcom/wandoujia/logv3/model/packages/TaskEvent$Builder;->action(Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;)Lcom/wandoujia/logv3/model/packages/TaskEvent$Builder;

    move-result-object v0

    sget-object v1, Lcom/wandoujia/logv3/model/packages/TaskEvent$Status;->READY:Lcom/wandoujia/logv3/model/packages/TaskEvent$Status;

    invoke-virtual {v0, v1}, Lcom/wandoujia/logv3/model/packages/TaskEvent$Builder;->status(Lcom/wandoujia/logv3/model/packages/TaskEvent$Status;)Lcom/wandoujia/logv3/model/packages/TaskEvent$Builder;

    move-result-object v0

    sget-object v1, Lcom/wandoujia/logv3/model/packages/TaskEvent$Result;->SUCCESS:Lcom/wandoujia/logv3/model/packages/TaskEvent$Result;

    invoke-virtual {v0, v1}, Lcom/wandoujia/logv3/model/packages/TaskEvent$Builder;->result(Lcom/wandoujia/logv3/model/packages/TaskEvent$Result;)Lcom/wandoujia/logv3/model/packages/TaskEvent$Builder;

    move-result-object v0

    .line 122
    new-instance v1, Lcom/wandoujia/logv3/model/packages/ExtraPackage$Builder;

    invoke-direct {v1}, Lcom/wandoujia/logv3/model/packages/ExtraPackage$Builder;-><init>()V

    new-instance v2, Lcom/wandoujia/logv3/model/packages/DownloadPackage$Builder;

    invoke-direct {v2}, Lcom/wandoujia/logv3/model/packages/DownloadPackage$Builder;-><init>()V

    iget-object v3, p0, Lcom/wandoujia/download2/AppDownloadTask2;->c:Lcom/wandoujia/download2/DownloadInfo2;

    iget-object v3, v3, Lcom/wandoujia/download2/DownloadInfo2;->a:Lcom/wandoujia/download2/DownloadRequestParam;

    iget-object v3, v3, Lcom/wandoujia/download2/DownloadRequestParam;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/wandoujia/logv3/model/packages/DownloadPackage$Builder;->url(Ljava/lang/String;)Lcom/wandoujia/logv3/model/packages/DownloadPackage$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/wandoujia/logv3/model/packages/DownloadPackage$Builder;->build()Lcom/wandoujia/logv3/model/packages/DownloadPackage;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/wandoujia/logv3/model/packages/ExtraPackage$Builder;->download_package(Lcom/wandoujia/logv3/model/packages/DownloadPackage;)Lcom/wandoujia/logv3/model/packages/ExtraPackage$Builder;

    move-result-object v1

    new-instance v2, Lcom/wandoujia/logv3/model/packages/FeedPackage$Builder;

    invoke-direct {v2}, Lcom/wandoujia/logv3/model/packages/FeedPackage$Builder;-><init>()V

    iget-object v3, p0, Lcom/wandoujia/download2/AppDownloadTask2;->i:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/wandoujia/logv3/model/packages/FeedPackage$Builder;->detail(Ljava/lang/String;)Lcom/wandoujia/logv3/model/packages/FeedPackage$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/wandoujia/logv3/model/packages/FeedPackage$Builder;->build()Lcom/wandoujia/logv3/model/packages/FeedPackage;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/wandoujia/logv3/model/packages/ExtraPackage$Builder;->feed_package(Lcom/wandoujia/logv3/model/packages/FeedPackage;)Lcom/wandoujia/logv3/model/packages/ExtraPackage$Builder;

    move-result-object v1

    .line 125
    invoke-static {}, Leny;->b()Leny;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Leny;->a(Lcom/wandoujia/logv3/model/packages/TaskEvent$Builder;Lcom/wandoujia/logv3/model/packages/ExtraPackage$Builder;)V

    goto/16 :goto_1

    .line 116
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "no backup url"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "parse json failed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 141
    :pswitch_1
    invoke-super {p0}, Lcsw;->h()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/download2/AppDownloadTask2;->p:Ljava/util/List;

    .line 142
    iget-object v0, p0, Lcom/wandoujia/download2/AppDownloadTask2;->c:Lcom/wandoujia/download2/DownloadInfo2;

    iget-object v0, v0, Lcom/wandoujia/download2/DownloadInfo2;->a:Lcom/wandoujia/download2/DownloadRequestParam;

    iget-object v0, v0, Lcom/wandoujia/download2/DownloadRequestParam;->f:Lcom/wandoujia/logv3/model/packages/DownloadPackage$VerifyType;

    sget-object v1, Lcom/wandoujia/logv3/model/packages/DownloadPackage$VerifyType;->MD5:Lcom/wandoujia/logv3/model/packages/DownloadPackage$VerifyType;

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/wandoujia/download2/AppDownloadTask2;->l:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 144
    new-instance v0, Lcst;

    invoke-direct {v0, p0}, Lcst;-><init>(Lcom/wandoujia/download2/AppDownloadTask2;)V

    .line 145
    new-array v1, v6, [Ljava/lang/Void;

    invoke-static {v0, v1}, Lcom/wandoujia/base/utils/AsyncTaskUtils;->runAsyncTask(Landroid/os/AsyncTask;[Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 148
    :cond_3
    iget-object v0, p0, Lcom/wandoujia/download2/AppDownloadTask2;->c:Lcom/wandoujia/download2/DownloadInfo2;

    iput v4, v0, Lcom/wandoujia/download2/DownloadInfo2;->c:I

    goto/16 :goto_0

    .line 152
    :pswitch_2
    invoke-super {p0}, Lcsw;->h()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/download2/AppDownloadTask2;->p:Ljava/util/List;

    .line 153
    iget-object v0, p0, Lcom/wandoujia/download2/AppDownloadTask2;->i:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 154
    const-string v1, "md5"

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/download2/AppDownloadTask2;->l:Ljava/lang/String;

    .line 155
    iget-object v0, p0, Lcom/wandoujia/download2/AppDownloadTask2;->c:Lcom/wandoujia/download2/DownloadInfo2;

    iget-object v0, v0, Lcom/wandoujia/download2/DownloadInfo2;->a:Lcom/wandoujia/download2/DownloadRequestParam;

    iget-object v0, v0, Lcom/wandoujia/download2/DownloadRequestParam;->f:Lcom/wandoujia/logv3/model/packages/DownloadPackage$VerifyType;

    sget-object v1, Lcom/wandoujia/logv3/model/packages/DownloadPackage$VerifyType;->MD5:Lcom/wandoujia/logv3/model/packages/DownloadPackage$VerifyType;

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/wandoujia/download2/AppDownloadTask2;->l:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 157
    new-instance v0, Lcst;

    invoke-direct {v0, p0}, Lcst;-><init>(Lcom/wandoujia/download2/AppDownloadTask2;)V

    .line 158
    new-array v1, v6, [Ljava/lang/Void;

    invoke-static {v0, v1}, Lcom/wandoujia/base/utils/AsyncTaskUtils;->runAsyncTask(Landroid/os/AsyncTask;[Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 161
    :cond_4
    iget-object v0, p0, Lcom/wandoujia/download2/AppDownloadTask2;->c:Lcom/wandoujia/download2/DownloadInfo2;

    iput v4, v0, Lcom/wandoujia/download2/DownloadInfo2;->c:I

    goto/16 :goto_0

    .line 111
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method final d()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 172
    iget-object v0, p0, Lcom/wandoujia/download2/AppDownloadTask2;->b:Lepb;

    iget-wide v2, p0, Lcom/wandoujia/download2/AppDownloadTask2;->g:J

    invoke-virtual {v0, v2, v3}, Lepb;->a(J)Lepj;

    move-result-object v0

    .line 173
    iget-object v1, p0, Lcom/wandoujia/download2/AppDownloadTask2;->c:Lcom/wandoujia/download2/DownloadInfo2;

    sget-object v2, Lcom/wandoujia/download2/DownloadInfo2$State;->FAILED:Lcom/wandoujia/download2/DownloadInfo2$State;

    iput-object v2, v1, Lcom/wandoujia/download2/DownloadInfo2;->b:Lcom/wandoujia/download2/DownloadInfo2$State;

    .line 174
    invoke-super {p0}, Lcsw;->h()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/wandoujia/download2/AppDownloadTask2;->p:Ljava/util/List;

    .line 175
    sget-object v1, Lcom/wandoujia/download2/AppDownloadTask2;->h:Ljava/lang/String;

    const-string v2, "download app failed step = %d requestId = %d url = %s errormsg = %s"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/wandoujia/download2/AppDownloadTask2;->o:Lcom/wandoujia/download2/AppDownloadTask2$DownloadStep;

    invoke-virtual {v4}, Lcom/wandoujia/download2/AppDownloadTask2$DownloadStep;->ordinal()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    iget-wide v4, p0, Lcom/wandoujia/download2/AppDownloadTask2;->g:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v7

    const/4 v4, 0x2

    iget-object v5, p0, Lcom/wandoujia/download2/AppDownloadTask2;->i:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x3

    iget-object v5, v0, Lepj;->e:Lcom/wandoujia/net/HttpException;

    invoke-virtual {v5}, Lcom/wandoujia/net/HttpException;->getMessage()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/wandoujia/base/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 177
    sget-object v1, Lcss;->a:[I

    iget-object v2, p0, Lcom/wandoujia/download2/AppDownloadTask2;->o:Lcom/wandoujia/download2/AppDownloadTask2$DownloadStep;

    invoke-virtual {v2}, Lcom/wandoujia/download2/AppDownloadTask2$DownloadStep;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 204
    :goto_0
    return-void

    .line 179
    :pswitch_0
    iget-object v1, p0, Lcom/wandoujia/download2/AppDownloadTask2;->c:Lcom/wandoujia/download2/DownloadInfo2;

    iget-object v0, v0, Lepj;->e:Lcom/wandoujia/net/HttpException;

    iput-object v0, v1, Lcom/wandoujia/download2/DownloadInfo2;->g:Ljava/lang/Exception;

    .line 181
    :try_start_0
    invoke-direct {p0}, Lcom/wandoujia/download2/AppDownloadTask2;->n()Lcom/wandoujia/net/AsyncHttpRequest;

    move-result-object v0

    .line 185
    iget-object v1, p0, Lcom/wandoujia/download2/AppDownloadTask2;->b:Lepb;

    invoke-virtual {v1, v0}, Lepb;->a(Lcom/wandoujia/net/AsyncHttpRequest;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/wandoujia/download2/AppDownloadTask2;->g:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 191
    sget-object v0, Lcom/wandoujia/download2/AppDownloadTask2$DownloadStep;->GET_URL:Lcom/wandoujia/download2/AppDownloadTask2$DownloadStep;

    iput-object v0, p0, Lcom/wandoujia/download2/AppDownloadTask2;->o:Lcom/wandoujia/download2/AppDownloadTask2$DownloadStep;

    .line 192
    iget-object v0, p0, Lcom/wandoujia/download2/AppDownloadTask2;->c:Lcom/wandoujia/download2/DownloadInfo2;

    sget-object v1, Lcom/wandoujia/download2/DownloadInfo2$State;->RUNNING:Lcom/wandoujia/download2/DownloadInfo2$State;

    iput-object v1, v0, Lcom/wandoujia/download2/DownloadInfo2;->b:Lcom/wandoujia/download2/DownloadInfo2$State;

    .line 193
    sget-object v0, Lcom/wandoujia/download2/AppDownloadTask2;->h:Ljava/lang/String;

    const-string v1, "request apk server requestId = %d"

    new-array v2, v7, [Ljava/lang/Object;

    iget-wide v4, p0, Lcom/wandoujia/download2/AppDownloadTask2;->g:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v0, v1, v2}, Lcom/wandoujia/base/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 186
    :catch_0
    move-exception v0

    .line 187
    sget-object v1, Lcom/wandoujia/download2/AppDownloadTask2;->h:Ljava/lang/String;

    const-string v2, "request apk server exception errormsg = %s"

    new-array v3, v7, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v6

    invoke-static {v1, v2, v3}, Lcom/wandoujia/base/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 196
    :pswitch_1
    new-instance v1, Lcom/wandoujia/logv3/model/packages/TaskEvent$Builder;

    invoke-direct {v1}, Lcom/wandoujia/logv3/model/packages/TaskEvent$Builder;-><init>()V

    sget-object v2, Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;->DOWNLOAD:Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;

    invoke-virtual {v1, v2}, Lcom/wandoujia/logv3/model/packages/TaskEvent$Builder;->action(Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;)Lcom/wandoujia/logv3/model/packages/TaskEvent$Builder;

    move-result-object v1

    sget-object v2, Lcom/wandoujia/logv3/model/packages/TaskEvent$Status;->READY:Lcom/wandoujia/logv3/model/packages/TaskEvent$Status;

    invoke-virtual {v1, v2}, Lcom/wandoujia/logv3/model/packages/TaskEvent$Builder;->status(Lcom/wandoujia/logv3/model/packages/TaskEvent$Status;)Lcom/wandoujia/logv3/model/packages/TaskEvent$Builder;

    move-result-object v1

    sget-object v2, Lcom/wandoujia/logv3/model/packages/TaskEvent$Result;->FAIL:Lcom/wandoujia/logv3/model/packages/TaskEvent$Result;

    invoke-virtual {v1, v2}, Lcom/wandoujia/logv3/model/packages/TaskEvent$Builder;->result(Lcom/wandoujia/logv3/model/packages/TaskEvent$Result;)Lcom/wandoujia/logv3/model/packages/TaskEvent$Builder;

    move-result-object v1

    iget-object v0, v0, Lepj;->e:Lcom/wandoujia/net/HttpException;

    invoke-virtual {v0}, Lcom/wandoujia/net/HttpException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/wandoujia/logv3/model/packages/TaskEvent$Builder;->error_detail(Ljava/lang/String;)Lcom/wandoujia/logv3/model/packages/TaskEvent$Builder;

    move-result-object v0

    .line 201
    new-instance v1, Lcom/wandoujia/logv3/model/packages/ExtraPackage$Builder;

    invoke-direct {v1}, Lcom/wandoujia/logv3/model/packages/ExtraPackage$Builder;-><init>()V

    new-instance v2, Lcom/wandoujia/logv3/model/packages/DownloadPackage$Builder;

    invoke-direct {v2}, Lcom/wandoujia/logv3/model/packages/DownloadPackage$Builder;-><init>()V

    iget-object v3, p0, Lcom/wandoujia/download2/AppDownloadTask2;->i:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/wandoujia/logv3/model/packages/DownloadPackage$Builder;->url(Ljava/lang/String;)Lcom/wandoujia/logv3/model/packages/DownloadPackage$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/wandoujia/logv3/model/packages/DownloadPackage$Builder;->build()Lcom/wandoujia/logv3/model/packages/DownloadPackage;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/wandoujia/logv3/model/packages/ExtraPackage$Builder;->download_package(Lcom/wandoujia/logv3/model/packages/DownloadPackage;)Lcom/wandoujia/logv3/model/packages/ExtraPackage$Builder;

    move-result-object v1

    .line 203
    invoke-static {}, Leny;->b()Leny;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Leny;->a(Lcom/wandoujia/logv3/model/packages/TaskEvent$Builder;Lcom/wandoujia/logv3/model/packages/ExtraPackage$Builder;)V

    goto :goto_0

    .line 177
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method final e()V
    .locals 2

    .prologue
    .line 212
    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 213
    iget-object v0, p0, Lcsw;->c:Lcom/wandoujia/download2/DownloadInfo2;

    invoke-virtual {v0}, Lcom/wandoujia/download2/DownloadInfo2;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 214
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "InnerDownloadInfo state exception"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 217
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/wandoujia/download2/AppDownloadTask2;->e:J

    .line 218
    iget-object v0, p0, Lcom/wandoujia/download2/AppDownloadTask2;->c:Lcom/wandoujia/download2/DownloadInfo2;

    sget-object v1, Lcom/wandoujia/download2/DownloadInfo2$State;->RUNNING:Lcom/wandoujia/download2/DownloadInfo2$State;

    iput-object v1, v0, Lcom/wandoujia/download2/DownloadInfo2;->b:Lcom/wandoujia/download2/DownloadInfo2$State;

    .line 219
    iget-object v0, p0, Lcom/wandoujia/download2/AppDownloadTask2;->c:Lcom/wandoujia/download2/DownloadInfo2;

    iget-object v0, v0, Lcom/wandoujia/download2/DownloadInfo2;->a:Lcom/wandoujia/download2/DownloadRequestParam;

    iget-object v0, v0, Lcom/wandoujia/download2/DownloadRequestParam;->e:Ljava/lang/String;

    invoke-static {v0}, Lcom/wandoujia/base/utils/FileUtil;->exists(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/wandoujia/download2/AppDownloadTask2;->c:Lcom/wandoujia/download2/DownloadInfo2;

    iget-object v0, v0, Lcom/wandoujia/download2/DownloadInfo2;->a:Lcom/wandoujia/download2/DownloadRequestParam;

    iget-object v0, v0, Lcom/wandoujia/download2/DownloadRequestParam;->f:Lcom/wandoujia/logv3/model/packages/DownloadPackage$VerifyType;

    sget-object v1, Lcom/wandoujia/logv3/model/packages/DownloadPackage$VerifyType;->MD5:Lcom/wandoujia/logv3/model/packages/DownloadPackage$VerifyType;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/wandoujia/download2/AppDownloadTask2;->c:Lcom/wandoujia/download2/DownloadInfo2;

    iget-object v0, v0, Lcom/wandoujia/download2/DownloadInfo2;->a:Lcom/wandoujia/download2/DownloadRequestParam;

    iget-object v0, v0, Lcom/wandoujia/download2/DownloadRequestParam;->g:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 222
    sget-object v0, Lcom/wandoujia/download2/AppDownloadTask2$DownloadStep;->VERIFY:Lcom/wandoujia/download2/AppDownloadTask2$DownloadStep;

    iput-object v0, p0, Lcom/wandoujia/download2/AppDownloadTask2;->o:Lcom/wandoujia/download2/AppDownloadTask2$DownloadStep;

    .line 223
    new-instance v0, Lcst;

    invoke-direct {v0, p0}, Lcst;-><init>(Lcom/wandoujia/download2/AppDownloadTask2;)V

    .line 224
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-static {v0, v1}, Lcom/wandoujia/base/utils/AsyncTaskUtils;->runAsyncTask(Landroid/os/AsyncTask;[Ljava/lang/Object;)V

    .line 228
    :goto_0
    return-void

    .line 226
    :cond_1
    invoke-direct {p0}, Lcom/wandoujia/download2/AppDownloadTask2;->o()V

    goto :goto_0
.end method

.method final f()V
    .locals 6

    .prologue
    .line 232
    iget-object v0, p0, Lcom/wandoujia/download2/AppDownloadTask2;->b:Lepb;

    iget-wide v2, p0, Lcom/wandoujia/download2/AppDownloadTask2;->g:J

    invoke-virtual {v0, v2, v3}, Lepb;->b(J)V

    .line 233
    iget-object v0, p0, Lcom/wandoujia/download2/AppDownloadTask2;->c:Lcom/wandoujia/download2/DownloadInfo2;

    sget-object v1, Lcom/wandoujia/download2/DownloadInfo2$State;->CANCELED:Lcom/wandoujia/download2/DownloadInfo2$State;

    iput-object v1, v0, Lcom/wandoujia/download2/DownloadInfo2;->b:Lcom/wandoujia/download2/DownloadInfo2$State;

    .line 234
    sget-object v0, Lcom/wandoujia/download2/AppDownloadTask2;->h:Ljava/lang/String;

    const-string v1, "task started url = %s, requestid = %d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/wandoujia/download2/AppDownloadTask2;->i:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-wide v4, p0, Lcom/wandoujia/download2/AppDownloadTask2;->g:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/wandoujia/base/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 235
    return-void
.end method

.method final g()V
    .locals 4

    .prologue
    .line 240
    iget-object v0, p0, Lcom/wandoujia/download2/AppDownloadTask2;->o:Lcom/wandoujia/download2/AppDownloadTask2$DownloadStep;

    sget-object v1, Lcom/wandoujia/download2/AppDownloadTask2$DownloadStep;->ORIGINAL_URL:Lcom/wandoujia/download2/AppDownloadTask2$DownloadStep;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/wandoujia/download2/AppDownloadTask2;->o:Lcom/wandoujia/download2/AppDownloadTask2$DownloadStep;

    sget-object v1, Lcom/wandoujia/download2/AppDownloadTask2$DownloadStep;->BACKUP_URL:Lcom/wandoujia/download2/AppDownloadTask2$DownloadStep;

    if-ne v0, v1, :cond_1

    .line 242
    :cond_0
    iget-object v0, p0, Lcom/wandoujia/download2/AppDownloadTask2;->c:Lcom/wandoujia/download2/DownloadInfo2;

    iget-object v1, p0, Lcom/wandoujia/download2/AppDownloadTask2;->f:Lcsz;

    iget-wide v2, p0, Lcom/wandoujia/download2/AppDownloadTask2;->m:J

    invoke-virtual {v1, v2, v3}, Lcsz;->a(J)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/wandoujia/download2/DownloadInfo2;->f:J

    .line 243
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/wandoujia/download2/AppDownloadTask2;->m:J

    .line 245
    :cond_1
    return-void
.end method

.method final h()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/net/TrackInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 249
    iget-object v0, p0, Lcom/wandoujia/download2/AppDownloadTask2;->o:Lcom/wandoujia/download2/AppDownloadTask2$DownloadStep;

    sget-object v1, Lcom/wandoujia/download2/AppDownloadTask2$DownloadStep;->ORIGINAL_URL:Lcom/wandoujia/download2/AppDownloadTask2$DownloadStep;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/wandoujia/download2/AppDownloadTask2;->o:Lcom/wandoujia/download2/AppDownloadTask2$DownloadStep;

    sget-object v1, Lcom/wandoujia/download2/AppDownloadTask2$DownloadStep;->BACKUP_URL:Lcom/wandoujia/download2/AppDownloadTask2$DownloadStep;

    if-ne v0, v1, :cond_2

    .line 251
    :cond_0
    iget-object v0, p0, Lcom/wandoujia/download2/AppDownloadTask2;->p:Ljava/util/List;

    if-nez v0, :cond_1

    .line 252
    invoke-super {p0}, Lcsw;->h()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/download2/AppDownloadTask2;->p:Ljava/util/List;

    .line 254
    :cond_1
    iget-object v0, p0, Lcom/wandoujia/download2/AppDownloadTask2;->p:Ljava/util/List;

    .line 256
    :goto_0
    return-object v0

    :cond_2
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method
