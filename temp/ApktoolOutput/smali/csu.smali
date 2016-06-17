.class public Lcsu;
.super Lcsw;
.source "CommonDownloadTask2.java"


# static fields
.field private static final h:Ljava/lang/String;


# instance fields
.field private i:J

.field private j:Ljava/util/List;
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
    .line 34
    const-class v0, Lcsu;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcsu;->h:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/wandoujia/download2/DownloadRequestParam;Ljava/lang/String;Lepb;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 41
    invoke-direct {p0, p1, p2, p3}, Lcsw;-><init>(Lcom/wandoujia/download2/DownloadRequestParam;Ljava/lang/String;Lepb;)V

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lcsu;->j:Ljava/util/List;

    .line 42
    return-void
.end method

.method static synthetic i()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcsu;->h:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method final a()V
    .locals 4

    .prologue
    .line 46
    iget-object v0, p0, Lcsu;->b:Lepb;

    iget-wide v2, p0, Lcsu;->g:J

    invoke-virtual {v0, v2, v3}, Lepb;->a(J)Lepj;

    move-result-object v0

    .line 47
    iget-wide v0, v0, Lepj;->f:J

    iput-wide v0, p0, Lcsu;->d:J

    .line 48
    return-void
.end method

.method final b()V
    .locals 10

    .prologue
    const-wide/16 v8, 0x0

    .line 52
    iget-object v0, p0, Lcsu;->b:Lepb;

    iget-wide v2, p0, Lcsu;->g:J

    invoke-virtual {v0, v2, v3}, Lepb;->a(J)Lepj;

    move-result-object v0

    .line 53
    iget-object v1, p0, Lcsu;->c:Lcom/wandoujia/download2/DownloadInfo2;

    iget-wide v2, v1, Lcom/wandoujia/download2/DownloadInfo2;->e:J

    cmp-long v1, v2, v8

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcsu;->c:Lcom/wandoujia/download2/DownloadInfo2;

    iget-wide v2, v1, Lcom/wandoujia/download2/DownloadInfo2;->e:J

    iget-wide v4, v0, Lepj;->f:J

    cmp-long v1, v2, v4

    if-lez v1, :cond_2

    .line 54
    :cond_0
    iput-wide v8, p0, Lcsu;->i:J

    .line 58
    :goto_0
    invoke-virtual {v0}, Lepj;->a()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 59
    iget-object v1, p0, Lcsu;->c:Lcom/wandoujia/download2/DownloadInfo2;

    iget-wide v2, v0, Lepj;->f:J

    iput-wide v2, v1, Lcom/wandoujia/download2/DownloadInfo2;->e:J

    .line 67
    :cond_1
    :goto_1
    return-void

    .line 56
    :cond_2
    iget-wide v2, p0, Lcsu;->i:J

    iget-wide v4, v0, Lepj;->f:J

    iget-object v1, p0, Lcsu;->c:Lcom/wandoujia/download2/DownloadInfo2;

    iget-wide v6, v1, Lcom/wandoujia/download2/DownloadInfo2;->e:J

    sub-long/2addr v4, v6

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcsu;->i:J

    goto :goto_0

    .line 61
    :cond_3
    iget-object v1, p0, Lcsu;->c:Lcom/wandoujia/download2/DownloadInfo2;

    iget-wide v2, v0, Lepj;->g:J

    iput-wide v2, v1, Lcom/wandoujia/download2/DownloadInfo2;->d:J

    .line 62
    iget-object v1, p0, Lcsu;->c:Lcom/wandoujia/download2/DownloadInfo2;

    iget-wide v2, v0, Lepj;->f:J

    iput-wide v2, v1, Lcom/wandoujia/download2/DownloadInfo2;->e:J

    .line 63
    iget-object v0, p0, Lcsu;->c:Lcom/wandoujia/download2/DownloadInfo2;

    iget-wide v0, v0, Lcom/wandoujia/download2/DownloadInfo2;->d:J

    cmp-long v0, v0, v8

    if-lez v0, :cond_1

    .line 64
    iget-object v0, p0, Lcsu;->c:Lcom/wandoujia/download2/DownloadInfo2;

    iget-object v1, p0, Lcsu;->c:Lcom/wandoujia/download2/DownloadInfo2;

    iget-wide v2, v1, Lcom/wandoujia/download2/DownloadInfo2;->e:J

    const-wide/16 v4, 0x64

    mul-long/2addr v2, v4

    iget-object v1, p0, Lcsu;->c:Lcom/wandoujia/download2/DownloadInfo2;

    iget-wide v4, v1, Lcom/wandoujia/download2/DownloadInfo2;->d:J

    div-long/2addr v2, v4

    long-to-int v1, v2

    iput v1, v0, Lcom/wandoujia/download2/DownloadInfo2;->c:I

    goto :goto_1
.end method

.method final c()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 71
    invoke-super {p0}, Lcsw;->h()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcsu;->j:Ljava/util/List;

    .line 72
    iget-object v0, p0, Lcsu;->b:Lepb;

    iget-wide v2, p0, Lcsu;->g:J

    invoke-virtual {v0, v2, v3}, Lepb;->a(J)Lepj;

    .line 73
    iget-object v0, p0, Lcsu;->c:Lcom/wandoujia/download2/DownloadInfo2;

    iget-object v0, v0, Lcom/wandoujia/download2/DownloadInfo2;->a:Lcom/wandoujia/download2/DownloadRequestParam;

    iget-object v0, v0, Lcom/wandoujia/download2/DownloadRequestParam;->f:Lcom/wandoujia/logv3/model/packages/DownloadPackage$VerifyType;

    sget-object v1, Lcom/wandoujia/logv3/model/packages/DownloadPackage$VerifyType;->MD5:Lcom/wandoujia/logv3/model/packages/DownloadPackage$VerifyType;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcsu;->c:Lcom/wandoujia/download2/DownloadInfo2;

    iget-object v0, v0, Lcom/wandoujia/download2/DownloadInfo2;->a:Lcom/wandoujia/download2/DownloadRequestParam;

    iget-object v0, v0, Lcom/wandoujia/download2/DownloadRequestParam;->g:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 75
    new-instance v0, Lcsv;

    invoke-direct {v0, p0}, Lcsv;-><init>(Lcsu;)V

    .line 76
    new-array v1, v6, [Ljava/lang/Void;

    invoke-static {v0, v1}, Lcom/wandoujia/base/utils/AsyncTaskUtils;->runAsyncTask(Landroid/os/AsyncTask;[Ljava/lang/Object;)V

    .line 82
    :goto_0
    return-void

    .line 79
    :cond_0
    iget-object v0, p0, Lcsu;->c:Lcom/wandoujia/download2/DownloadInfo2;

    sget-object v1, Lcom/wandoujia/download2/DownloadInfo2$State;->SUCCEED:Lcom/wandoujia/download2/DownloadInfo2$State;

    iput-object v1, v0, Lcom/wandoujia/download2/DownloadInfo2;->b:Lcom/wandoujia/download2/DownloadInfo2$State;

    .line 80
    iget-object v0, p0, Lcsu;->c:Lcom/wandoujia/download2/DownloadInfo2;

    const/16 v1, 0x64

    iput v1, v0, Lcom/wandoujia/download2/DownloadInfo2;->c:I

    .line 81
    sget-object v0, Lcsu;->h:Ljava/lang/String;

    const-string v1, "onRequestComplete requestid= %d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-wide v4, p0, Lcsu;->g:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v0, v1, v2}, Lcom/wandoujia/base/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method final d()V
    .locals 6

    .prologue
    .line 86
    invoke-super {p0}, Lcsw;->h()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcsu;->j:Ljava/util/List;

    .line 87
    iget-object v0, p0, Lcsu;->b:Lepb;

    iget-wide v2, p0, Lcsu;->g:J

    invoke-virtual {v0, v2, v3}, Lepb;->a(J)Lepj;

    move-result-object v0

    .line 88
    iget-object v1, p0, Lcsu;->c:Lcom/wandoujia/download2/DownloadInfo2;

    iget-object v0, v0, Lepj;->e:Lcom/wandoujia/net/HttpException;

    iput-object v0, v1, Lcom/wandoujia/download2/DownloadInfo2;->g:Ljava/lang/Exception;

    .line 89
    iget-object v0, p0, Lcsu;->c:Lcom/wandoujia/download2/DownloadInfo2;

    sget-object v1, Lcom/wandoujia/download2/DownloadInfo2$State;->FAILED:Lcom/wandoujia/download2/DownloadInfo2$State;

    iput-object v1, v0, Lcom/wandoujia/download2/DownloadInfo2;->b:Lcom/wandoujia/download2/DownloadInfo2$State;

    .line 90
    sget-object v0, Lcsu;->h:Ljava/lang/String;

    const-string v1, "onRequestError requestid = %d, errormsg = %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-wide v4, p0, Lcsu;->g:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcsu;->c:Lcom/wandoujia/download2/DownloadInfo2;

    iget-object v4, v4, Lcom/wandoujia/download2/DownloadInfo2;->g:Ljava/lang/Exception;

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/wandoujia/base/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 91
    return-void
.end method

.method final e()V
    .locals 6

    .prologue
    .line 95
    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcsw;->c:Lcom/wandoujia/download2/DownloadInfo2;

    invoke-virtual {v0}, Lcom/wandoujia/download2/DownloadInfo2;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "InnerDownloadInfo state exception"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 100
    :cond_0
    iget-object v0, p0, Lcsu;->c:Lcom/wandoujia/download2/DownloadInfo2;

    sget-object v1, Lcom/wandoujia/download2/DownloadInfo2$State;->RUNNING:Lcom/wandoujia/download2/DownloadInfo2$State;

    iput-object v1, v0, Lcom/wandoujia/download2/DownloadInfo2;->b:Lcom/wandoujia/download2/DownloadInfo2$State;

    .line 101
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcsu;->e:J

    .line 102
    new-instance v0, Lcom/wandoujia/net/AsyncHttpRequest;

    iget-object v1, p0, Lcsu;->c:Lcom/wandoujia/download2/DownloadInfo2;

    iget-object v1, v1, Lcom/wandoujia/download2/DownloadInfo2;->a:Lcom/wandoujia/download2/DownloadRequestParam;

    iget-object v1, v1, Lcom/wandoujia/download2/DownloadRequestParam;->b:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/wandoujia/net/AsyncHttpRequest$Method;->GET:Lcom/wandoujia/net/AsyncHttpRequest$Method;

    invoke-direct {v0, v1, v2}, Lcom/wandoujia/net/AsyncHttpRequest;-><init>(Landroid/net/Uri;Lcom/wandoujia/net/AsyncHttpRequest$Method;)V

    .line 104
    iget-object v1, p0, Lcsu;->c:Lcom/wandoujia/download2/DownloadInfo2;

    iget-object v1, v1, Lcom/wandoujia/download2/DownloadInfo2;->a:Lcom/wandoujia/download2/DownloadRequestParam;

    iget-object v1, v1, Lcom/wandoujia/download2/DownloadRequestParam;->d:Ljava/lang/String;

    const-string v2, "Cookie"

    invoke-virtual {v0, v2, v1}, Lcom/wandoujia/net/AsyncHttpRequest;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    iget-object v1, p0, Lcsu;->c:Lcom/wandoujia/download2/DownloadInfo2;

    iget-object v1, v1, Lcom/wandoujia/download2/DownloadInfo2;->a:Lcom/wandoujia/download2/DownloadRequestParam;

    iget-object v1, v1, Lcom/wandoujia/download2/DownloadRequestParam;->c:Ljava/lang/String;

    const-string v2, "Referer"

    invoke-virtual {v0, v2, v1}, Lcom/wandoujia/net/AsyncHttpRequest;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    iget-object v1, p0, Lcsu;->b:Lepb;

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcsu;->c:Lcom/wandoujia/download2/DownloadInfo2;

    iget-object v3, v3, Lcom/wandoujia/download2/DownloadInfo2;->a:Lcom/wandoujia/download2/DownloadRequestParam;

    iget-object v3, v3, Lcom/wandoujia/download2/DownloadRequestParam;->e:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0, v2}, Lepb;->a(Lcom/wandoujia/net/AsyncHttpRequest;Ljava/io/File;)J

    move-result-wide v0

    iput-wide v0, p0, Lcsu;->g:J

    .line 107
    sget-object v0, Lcsu;->h:Ljava/lang/String;

    const-string v1, "task started url = %s, file_path = %s, requestid = %d"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcsu;->c:Lcom/wandoujia/download2/DownloadInfo2;

    iget-object v4, v4, Lcom/wandoujia/download2/DownloadInfo2;->a:Lcom/wandoujia/download2/DownloadRequestParam;

    iget-object v4, v4, Lcom/wandoujia/download2/DownloadRequestParam;->b:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcsu;->c:Lcom/wandoujia/download2/DownloadInfo2;

    iget-object v4, v4, Lcom/wandoujia/download2/DownloadInfo2;->a:Lcom/wandoujia/download2/DownloadRequestParam;

    iget-object v4, v4, Lcom/wandoujia/download2/DownloadRequestParam;->e:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-wide v4, p0, Lcsu;->g:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/wandoujia/base/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 109
    return-void
.end method

.method final f()V
    .locals 6

    .prologue
    .line 113
    iget-object v0, p0, Lcsu;->b:Lepb;

    iget-wide v2, p0, Lcsu;->g:J

    invoke-virtual {v0, v2, v3}, Lepb;->b(J)V

    .line 114
    iget-object v0, p0, Lcsu;->c:Lcom/wandoujia/download2/DownloadInfo2;

    sget-object v1, Lcom/wandoujia/download2/DownloadInfo2$State;->CANCELED:Lcom/wandoujia/download2/DownloadInfo2$State;

    iput-object v1, v0, Lcom/wandoujia/download2/DownloadInfo2;->b:Lcom/wandoujia/download2/DownloadInfo2$State;

    .line 115
    sget-object v0, Lcsu;->h:Ljava/lang/String;

    const-string v1, "task stoped url = %s, requestid = %d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcsu;->c:Lcom/wandoujia/download2/DownloadInfo2;

    iget-object v4, v4, Lcom/wandoujia/download2/DownloadInfo2;->a:Lcom/wandoujia/download2/DownloadRequestParam;

    iget-object v4, v4, Lcom/wandoujia/download2/DownloadRequestParam;->b:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-wide v4, p0, Lcsu;->g:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/wandoujia/base/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 116
    return-void
.end method

.method final g()V
    .locals 4

    .prologue
    .line 120
    iget-object v0, p0, Lcsu;->c:Lcom/wandoujia/download2/DownloadInfo2;

    iget-object v1, p0, Lcsu;->f:Lcsz;

    iget-wide v2, p0, Lcsu;->i:J

    invoke-virtual {v1, v2, v3}, Lcsz;->a(J)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/wandoujia/download2/DownloadInfo2;->f:J

    .line 121
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcsu;->i:J

    .line 122
    return-void
.end method

.method final h()Ljava/util/List;
    .locals 1
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
    .line 126
    iget-object v0, p0, Lcsu;->j:Ljava/util/List;

    if-nez v0, :cond_0

    .line 127
    invoke-super {p0}, Lcsw;->h()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcsu;->j:Ljava/util/List;

    .line 129
    :cond_0
    iget-object v0, p0, Lcsu;->j:Ljava/util/List;

    return-object v0
.end method
