.class public Lcom/wandoujia/download2/PlayExpDownloadTask2;
.super Lcsw;
.source "PlayExpDownloadTask2.java"


# static fields
.field private static final h:Ljava/lang/String;


# instance fields
.field private final i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Leg",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private j:J

.field private k:I

.field private l:J

.field private m:J

.field private n:J

.field private o:Lcom/wandoujia/download2/PlayExpDownloadTask2$DownloadStep;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-class v0, Lcom/wandoujia/download2/PlayExpDownloadTask2;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/wandoujia/download2/PlayExpDownloadTask2;->h:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/wandoujia/download2/DownloadRequestParam;Ljava/lang/String;Lepb;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 43
    invoke-direct {p0, p1, p2, p3}, Lcsw;-><init>(Lcom/wandoujia/download2/DownloadRequestParam;Ljava/lang/String;Lepb;)V

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/wandoujia/download2/PlayExpDownloadTask2;->i:Ljava/util/List;

    .line 38
    sget-object v0, Lcom/wandoujia/download2/PlayExpDownloadTask2$DownloadStep;->GET_URLS:Lcom/wandoujia/download2/PlayExpDownloadTask2$DownloadStep;

    iput-object v0, p0, Lcom/wandoujia/download2/PlayExpDownloadTask2;->o:Lcom/wandoujia/download2/PlayExpDownloadTask2$DownloadStep;

    .line 44
    return-void
.end method

.method public static synthetic a(Lcom/wandoujia/download2/PlayExpDownloadTask2;Lcom/wandoujia/download2/PlayExpDownloadTask2$DownloadStep;)Lcom/wandoujia/download2/PlayExpDownloadTask2$DownloadStep;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 25
    iput-object p1, p0, Lcom/wandoujia/download2/PlayExpDownloadTask2;->o:Lcom/wandoujia/download2/PlayExpDownloadTask2$DownloadStep;

    return-object p1
.end method

.method public static synthetic a(Lcom/wandoujia/download2/PlayExpDownloadTask2;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 25
    iget-object v0, p0, Lcom/wandoujia/download2/PlayExpDownloadTask2;->i:Ljava/util/List;

    return-object v0
.end method

.method private a(I)V
    .locals 6
    .parameter

    .prologue
    const-wide/16 v0, 0x0

    .line 181
    iput-wide v0, p0, Lcom/wandoujia/download2/PlayExpDownloadTask2;->m:J

    .line 182
    iput-wide v0, p0, Lcom/wandoujia/download2/PlayExpDownloadTask2;->l:J

    .line 183
    new-instance v1, Lcom/wandoujia/net/AsyncHttpRequest;

    iget-object v0, p0, Lcom/wandoujia/download2/PlayExpDownloadTask2;->i:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Leg;

    iget-object v0, v0, Leg;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sget-object v2, Lcom/wandoujia/net/AsyncHttpRequest$Method;->GET:Lcom/wandoujia/net/AsyncHttpRequest$Method;

    invoke-direct {v1, v0, v2}, Lcom/wandoujia/net/AsyncHttpRequest;-><init>(Landroid/net/Uri;Lcom/wandoujia/net/AsyncHttpRequest$Method;)V

    .line 185
    iget-object v0, p0, Lcom/wandoujia/download2/PlayExpDownloadTask2;->c:Lcom/wandoujia/download2/DownloadInfo2;

    iget-object v0, v0, Lcom/wandoujia/download2/DownloadInfo2;->a:Lcom/wandoujia/download2/DownloadRequestParam;

    iget-object v0, v0, Lcom/wandoujia/download2/DownloadRequestParam;->d:Ljava/lang/String;

    const-string v2, "Cookie"

    invoke-virtual {v1, v2, v0}, Lcom/wandoujia/net/AsyncHttpRequest;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    iget-object v0, p0, Lcom/wandoujia/download2/PlayExpDownloadTask2;->c:Lcom/wandoujia/download2/DownloadInfo2;

    iget-object v0, v0, Lcom/wandoujia/download2/DownloadInfo2;->a:Lcom/wandoujia/download2/DownloadRequestParam;

    iget-object v0, v0, Lcom/wandoujia/download2/DownloadRequestParam;->c:Ljava/lang/String;

    const-string v2, "Referer"

    invoke-virtual {v1, v2, v0}, Lcom/wandoujia/net/AsyncHttpRequest;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    iget-object v2, p0, Lcom/wandoujia/download2/PlayExpDownloadTask2;->b:Lepb;

    new-instance v3, Ljava/io/File;

    iget-object v0, p0, Lcom/wandoujia/download2/PlayExpDownloadTask2;->i:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Leg;

    iget-object v0, v0, Leg;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1, v3}, Lepb;->a(Lcom/wandoujia/net/AsyncHttpRequest;Ljava/io/File;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/wandoujia/download2/PlayExpDownloadTask2;->g:J

    .line 188
    sget-object v1, Lcom/wandoujia/download2/PlayExpDownloadTask2;->h:Ljava/lang/String;

    const-string v2, "task started segemnt_url = %s, file_path = %s, requestid = %d"

    const/4 v0, 0x3

    new-array v3, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    iget-object v4, p0, Lcom/wandoujia/download2/PlayExpDownloadTask2;->c:Lcom/wandoujia/download2/DownloadInfo2;

    iget-object v4, v4, Lcom/wandoujia/download2/DownloadInfo2;->a:Lcom/wandoujia/download2/DownloadRequestParam;

    iget-object v4, v4, Lcom/wandoujia/download2/DownloadRequestParam;->b:Ljava/lang/String;

    aput-object v4, v3, v0

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/wandoujia/download2/PlayExpDownloadTask2;->i:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Leg;

    iget-object v0, v0, Leg;->b:Ljava/lang/Object;

    aput-object v0, v3, v4

    const/4 v0, 0x2

    iget-wide v4, p0, Lcom/wandoujia/download2/PlayExpDownloadTask2;->g:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-static {v1, v2, v3}, Lcom/wandoujia/base/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 190
    return-void
.end method

.method public static synthetic a(Lcom/wandoujia/download2/PlayExpDownloadTask2;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/wandoujia/download2/PlayExpDownloadTask2;->a(I)V

    return-void
.end method

.method public static synthetic b(Lcom/wandoujia/download2/PlayExpDownloadTask2;)I
    .locals 1
    .parameter

    .prologue
    .line 25
    iget v0, p0, Lcom/wandoujia/download2/PlayExpDownloadTask2;->k:I

    return v0
.end method


# virtual methods
.method final a()V
    .locals 4

    .prologue
    .line 48
    iget-object v0, p0, Lcom/wandoujia/download2/PlayExpDownloadTask2;->b:Lepb;

    iget-wide v2, p0, Lcom/wandoujia/download2/PlayExpDownloadTask2;->g:J

    invoke-virtual {v0, v2, v3}, Lepb;->a(J)Lepj;

    move-result-object v0

    .line 49
    iget-wide v0, v0, Lepj;->g:J

    iput-wide v0, p0, Lcom/wandoujia/download2/PlayExpDownloadTask2;->l:J

    .line 50
    return-void
.end method

.method final b()V
    .locals 8

    .prologue
    .line 54
    iget-object v0, p0, Lcom/wandoujia/download2/PlayExpDownloadTask2;->b:Lepb;

    iget-wide v2, p0, Lcom/wandoujia/download2/PlayExpDownloadTask2;->g:J

    invoke-virtual {v0, v2, v3}, Lepb;->a(J)Lepj;

    move-result-object v0

    .line 55
    iget-wide v2, p0, Lcom/wandoujia/download2/PlayExpDownloadTask2;->j:J

    iget-wide v4, v0, Lepj;->f:J

    iget-wide v6, p0, Lcom/wandoujia/download2/PlayExpDownloadTask2;->m:J

    sub-long/2addr v4, v6

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/wandoujia/download2/PlayExpDownloadTask2;->j:J

    .line 56
    iget-wide v0, v0, Lepj;->f:J

    iput-wide v0, p0, Lcom/wandoujia/download2/PlayExpDownloadTask2;->m:J

    .line 57
    iget-object v0, p0, Lcom/wandoujia/download2/PlayExpDownloadTask2;->c:Lcom/wandoujia/download2/DownloadInfo2;

    iget-wide v2, p0, Lcom/wandoujia/download2/PlayExpDownloadTask2;->n:J

    iget-wide v4, p0, Lcom/wandoujia/download2/PlayExpDownloadTask2;->m:J

    add-long/2addr v2, v4

    iput-wide v2, v0, Lcom/wandoujia/download2/DownloadInfo2;->e:J

    .line 64
    iget-wide v0, p0, Lcom/wandoujia/download2/PlayExpDownloadTask2;->l:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/wandoujia/download2/PlayExpDownloadTask2;->c:Lcom/wandoujia/download2/DownloadInfo2;

    iget v1, p0, Lcom/wandoujia/download2/PlayExpDownloadTask2;->k:I

    mul-int/lit8 v1, v1, 0x64

    iget-object v2, p0, Lcom/wandoujia/download2/PlayExpDownloadTask2;->i:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    div-int/2addr v1, v2

    int-to-long v2, v1

    iget-wide v4, p0, Lcom/wandoujia/download2/PlayExpDownloadTask2;->m:J

    const-wide/16 v6, 0x64

    mul-long/2addr v4, v6

    iget-wide v6, p0, Lcom/wandoujia/download2/PlayExpDownloadTask2;->l:J

    div-long/2addr v4, v6

    iget-object v1, p0, Lcom/wandoujia/download2/PlayExpDownloadTask2;->i:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    int-to-long v6, v1

    div-long/2addr v4, v6

    add-long/2addr v2, v4

    long-to-int v1, v2

    iput v1, v0, Lcom/wandoujia/download2/DownloadInfo2;->c:I

    .line 71
    :goto_0
    return-void

    .line 69
    :cond_0
    iget-object v0, p0, Lcom/wandoujia/download2/PlayExpDownloadTask2;->c:Lcom/wandoujia/download2/DownloadInfo2;

    iget v1, p0, Lcom/wandoujia/download2/PlayExpDownloadTask2;->k:I

    mul-int/lit8 v1, v1, 0x64

    iget-object v2, p0, Lcom/wandoujia/download2/PlayExpDownloadTask2;->i:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    div-int/2addr v1, v2

    iput v1, v0, Lcom/wandoujia/download2/DownloadInfo2;->c:I

    goto :goto_0
.end method

.method final c()V
    .locals 6

    .prologue
    .line 75
    iget v0, p0, Lcom/wandoujia/download2/PlayExpDownloadTask2;->k:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/wandoujia/download2/PlayExpDownloadTask2;->k:I

    .line 76
    iget-wide v0, p0, Lcom/wandoujia/download2/PlayExpDownloadTask2;->m:J

    iput-wide v0, p0, Lcom/wandoujia/download2/PlayExpDownloadTask2;->n:J

    .line 77
    iget v0, p0, Lcom/wandoujia/download2/PlayExpDownloadTask2;->k:I

    iget-object v1, p0, Lcom/wandoujia/download2/PlayExpDownloadTask2;->i:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 78
    iget v0, p0, Lcom/wandoujia/download2/PlayExpDownloadTask2;->k:I

    invoke-direct {p0, v0}, Lcom/wandoujia/download2/PlayExpDownloadTask2;->a(I)V

    .line 83
    :goto_0
    return-void

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/wandoujia/download2/PlayExpDownloadTask2;->c:Lcom/wandoujia/download2/DownloadInfo2;

    sget-object v1, Lcom/wandoujia/download2/DownloadInfo2$State;->SUCCEED:Lcom/wandoujia/download2/DownloadInfo2$State;

    iput-object v1, v0, Lcom/wandoujia/download2/DownloadInfo2;->b:Lcom/wandoujia/download2/DownloadInfo2$State;

    .line 81
    sget-object v0, Lcom/wandoujia/download2/PlayExpDownloadTask2;->h:Ljava/lang/String;

    const-string v1, "onRequestComplete requestid= %d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-wide v4, p0, Lcom/wandoujia/download2/PlayExpDownloadTask2;->g:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/wandoujia/base/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method final d()V
    .locals 6

    .prologue
    .line 87
    iget-object v0, p0, Lcom/wandoujia/download2/PlayExpDownloadTask2;->b:Lepb;

    iget-wide v2, p0, Lcom/wandoujia/download2/PlayExpDownloadTask2;->g:J

    invoke-virtual {v0, v2, v3}, Lepb;->a(J)Lepj;

    move-result-object v0

    .line 88
    iget-object v1, p0, Lcom/wandoujia/download2/PlayExpDownloadTask2;->c:Lcom/wandoujia/download2/DownloadInfo2;

    iget-object v0, v0, Lepj;->e:Lcom/wandoujia/net/HttpException;

    iput-object v0, v1, Lcom/wandoujia/download2/DownloadInfo2;->g:Ljava/lang/Exception;

    .line 89
    iget-object v0, p0, Lcom/wandoujia/download2/PlayExpDownloadTask2;->c:Lcom/wandoujia/download2/DownloadInfo2;

    sget-object v1, Lcom/wandoujia/download2/DownloadInfo2$State;->FAILED:Lcom/wandoujia/download2/DownloadInfo2$State;

    iput-object v1, v0, Lcom/wandoujia/download2/DownloadInfo2;->b:Lcom/wandoujia/download2/DownloadInfo2$State;

    .line 90
    iget-object v0, p0, Lcom/wandoujia/download2/PlayExpDownloadTask2;->c:Lcom/wandoujia/download2/DownloadInfo2;

    iget-object v0, v0, Lcom/wandoujia/download2/DownloadInfo2;->a:Lcom/wandoujia/download2/DownloadRequestParam;

    iget-object v0, v0, Lcom/wandoujia/download2/DownloadRequestParam;->e:Ljava/lang/String;

    invoke-static {v0}, Lepb;->b(Ljava/lang/String;)V

    .line 91
    sget-object v0, Lcom/wandoujia/download2/PlayExpDownloadTask2;->h:Ljava/lang/String;

    const-string v1, "onRequestError requestid = %d, errormsg = %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-wide v4, p0, Lcom/wandoujia/download2/PlayExpDownloadTask2;->g:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/wandoujia/download2/PlayExpDownloadTask2;->c:Lcom/wandoujia/download2/DownloadInfo2;

    iget-object v4, v4, Lcom/wandoujia/download2/DownloadInfo2;->g:Ljava/lang/Exception;

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/wandoujia/base/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 93
    return-void
.end method

.method final e()V
    .locals 4

    .prologue
    .line 102
    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lgtj;->a(Landroid/content/Context;)Lgtj;

    move-result-object v0

    iget-object v1, p0, Lcom/wandoujia/download2/PlayExpDownloadTask2;->c:Lcom/wandoujia/download2/DownloadInfo2;

    iget-object v1, v1, Lcom/wandoujia/download2/DownloadInfo2;->a:Lcom/wandoujia/download2/DownloadRequestParam;

    iget-object v1, v1, Lcom/wandoujia/download2/DownloadRequestParam;->b:Ljava/lang/String;

    new-instance v2, Lgth;

    invoke-direct {v2, p0}, Lgth;-><init>(Lcom/wandoujia/download2/PlayExpDownloadTask2;)V

    new-instance v3, Lgtk;

    invoke-direct {v3, v1}, Lgtk;-><init>(Ljava/lang/String;)V

    iput-object v2, v3, Lgtk;->f:Lgth;

    invoke-virtual {v0, v3}, Lgtj;->a(Lgtk;)V

    .line 150
    iget-object v0, p0, Lcom/wandoujia/download2/PlayExpDownloadTask2;->c:Lcom/wandoujia/download2/DownloadInfo2;

    sget-object v1, Lcom/wandoujia/download2/DownloadInfo2$State;->RUNNING:Lcom/wandoujia/download2/DownloadInfo2$State;

    iput-object v1, v0, Lcom/wandoujia/download2/DownloadInfo2;->b:Lcom/wandoujia/download2/DownloadInfo2$State;

    .line 151
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/wandoujia/download2/PlayExpDownloadTask2;->e:J

    .line 152
    return-void
.end method

.method final f()V
    .locals 6

    .prologue
    .line 156
    sget-object v0, Lcsy;->b:[I

    iget-object v1, p0, Lcom/wandoujia/download2/PlayExpDownloadTask2;->o:Lcom/wandoujia/download2/PlayExpDownloadTask2$DownloadStep;

    invoke-virtual {v1}, Lcom/wandoujia/download2/PlayExpDownloadTask2$DownloadStep;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 170
    :goto_0
    iget-object v0, p0, Lcom/wandoujia/download2/PlayExpDownloadTask2;->c:Lcom/wandoujia/download2/DownloadInfo2;

    sget-object v1, Lcom/wandoujia/download2/DownloadInfo2$State;->CANCELED:Lcom/wandoujia/download2/DownloadInfo2$State;

    iput-object v1, v0, Lcom/wandoujia/download2/DownloadInfo2;->b:Lcom/wandoujia/download2/DownloadInfo2$State;

    .line 171
    sget-object v0, Lcom/wandoujia/download2/PlayExpDownloadTask2;->h:Ljava/lang/String;

    const-string v1, "task stoped url = %s, requestid = %d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/wandoujia/download2/PlayExpDownloadTask2;->c:Lcom/wandoujia/download2/DownloadInfo2;

    iget-object v4, v4, Lcom/wandoujia/download2/DownloadInfo2;->a:Lcom/wandoujia/download2/DownloadRequestParam;

    iget-object v4, v4, Lcom/wandoujia/download2/DownloadRequestParam;->b:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-wide v4, p0, Lcom/wandoujia/download2/PlayExpDownloadTask2;->g:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/wandoujia/base/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 172
    return-void

    .line 158
    :pswitch_0
    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lgtj;->a(Landroid/content/Context;)Lgtj;

    move-result-object v0

    iget-object v1, p0, Lcom/wandoujia/download2/PlayExpDownloadTask2;->c:Lcom/wandoujia/download2/DownloadInfo2;

    iget-object v1, v1, Lcom/wandoujia/download2/DownloadInfo2;->a:Lcom/wandoujia/download2/DownloadRequestParam;

    iget-object v1, v1, Lcom/wandoujia/download2/DownloadRequestParam;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lgtj;->c(Ljava/lang/String;)Z

    goto :goto_0

    .line 162
    :pswitch_1
    iget-object v0, p0, Lcom/wandoujia/download2/PlayExpDownloadTask2;->b:Lepb;

    iget-wide v2, p0, Lcom/wandoujia/download2/PlayExpDownloadTask2;->g:J

    invoke-virtual {v0, v2, v3}, Lepb;->b(J)V

    .line 164
    iget-object v1, p0, Lcom/wandoujia/download2/PlayExpDownloadTask2;->b:Lepb;

    iget-object v0, p0, Lcom/wandoujia/download2/PlayExpDownloadTask2;->i:Ljava/util/List;

    iget v2, p0, Lcom/wandoujia/download2/PlayExpDownloadTask2;->k:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Leg;

    iget-object v0, v0, Leg;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lepb;->a(Ljava/lang/String;)V

    .line 166
    iget-object v0, p0, Lcom/wandoujia/download2/PlayExpDownloadTask2;->c:Lcom/wandoujia/download2/DownloadInfo2;

    iget-object v0, v0, Lcom/wandoujia/download2/DownloadInfo2;->a:Lcom/wandoujia/download2/DownloadRequestParam;

    iget-object v0, v0, Lcom/wandoujia/download2/DownloadRequestParam;->e:Ljava/lang/String;

    invoke-static {v0}, Lepb;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 156
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method final g()V
    .locals 4

    .prologue
    .line 176
    iget-object v0, p0, Lcom/wandoujia/download2/PlayExpDownloadTask2;->c:Lcom/wandoujia/download2/DownloadInfo2;

    iget-object v1, p0, Lcom/wandoujia/download2/PlayExpDownloadTask2;->f:Lcsz;

    iget-wide v2, p0, Lcom/wandoujia/download2/PlayExpDownloadTask2;->j:J

    invoke-virtual {v1, v2, v3}, Lcsz;->a(J)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/wandoujia/download2/DownloadInfo2;->f:J

    .line 177
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/wandoujia/download2/PlayExpDownloadTask2;->j:J

    .line 178
    return-void
.end method
