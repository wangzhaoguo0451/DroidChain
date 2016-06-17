.class public Lcom/wandoujia/ripple_framework/download/DownloadManager;
.super Ljava/lang/Object;
.source "DownloadManager.java"


# static fields
.field private static final j:Ljava/lang/String;


# instance fields
.field public a:I

.field public b:Landroid/content/BroadcastReceiver;

.field public final c:Lcsx;

.field public d:Lcta;

.field public final e:Ljava/lang/String;

.field public final f:Landroid/content/Context;

.field public final g:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lhbr;",
            ">;"
        }
    .end annotation
.end field

.field public h:Z

.field public i:Lhcb;

.field private final k:Lhrx;

.field private final l:Lcom/wandoujia/appmanager/AppManager;

.field private final m:Lhbs;

.field private final n:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/wandoujia/ripple_framework/download/DownloadManager$DownloadOperation;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    const-class v0, Lcom/wandoujia/ripple_framework/download/DownloadManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/wandoujia/ripple_framework/download/DownloadManager;->j:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/wandoujia/appmanager/AppManager;Lhrx;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 183
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Lcom/wandoujia/ripple_framework/download/DownloadManager$1;

    invoke-direct {v0, p0}, Lcom/wandoujia/ripple_framework/download/DownloadManager$1;-><init>(Lcom/wandoujia/ripple_framework/download/DownloadManager;)V

    iput-object v0, p0, Lcom/wandoujia/ripple_framework/download/DownloadManager;->b:Landroid/content/BroadcastReceiver;

    .line 117
    new-instance v0, Lhbo;

    invoke-direct {v0, p0}, Lhbo;-><init>(Lcom/wandoujia/ripple_framework/download/DownloadManager;)V

    iput-object v0, p0, Lcom/wandoujia/ripple_framework/download/DownloadManager;->c:Lcsx;

    .line 175
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/wandoujia/ripple_framework/download/DownloadManager;->g:Ljava/util/Set;

    .line 180
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/wandoujia/ripple_framework/download/DownloadManager;->n:Ljava/util/Queue;

    .line 184
    iput-object p1, p0, Lcom/wandoujia/ripple_framework/download/DownloadManager;->f:Landroid/content/Context;

    .line 185
    iput-object p2, p0, Lcom/wandoujia/ripple_framework/download/DownloadManager;->e:Ljava/lang/String;

    .line 186
    new-instance v0, Lhbs;

    invoke-direct {v0, p1, p3}, Lhbs;-><init>(Landroid/content/Context;Lcom/wandoujia/appmanager/AppManager;)V

    iput-object v0, p0, Lcom/wandoujia/ripple_framework/download/DownloadManager;->m:Lhbs;

    .line 188
    new-instance v0, Lhcb;

    invoke-direct {v0, p1, p4}, Lhcb;-><init>(Landroid/content/Context;Lhrx;)V

    iput-object v0, p0, Lcom/wandoujia/ripple_framework/download/DownloadManager;->i:Lhcb;

    .line 189
    iput-object p3, p0, Lcom/wandoujia/ripple_framework/download/DownloadManager;->l:Lcom/wandoujia/appmanager/AppManager;

    .line 190
    iput-object p4, p0, Lcom/wandoujia/ripple_framework/download/DownloadManager;->k:Lhrx;

    .line 191
    return-void
.end method

.method static synthetic a(Lcom/wandoujia/ripple_framework/download/DownloadManager;)I
    .locals 1
    .parameter

    .prologue
    .line 47
    iget v0, p0, Lcom/wandoujia/ripple_framework/download/DownloadManager;->a:I

    return v0
.end method

.method static synthetic a(Lcom/wandoujia/ripple_framework/download/DownloadManager;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 47
    iput p1, p0, Lcom/wandoujia/ripple_framework/download/DownloadManager;->a:I

    return p1
.end method

.method public static a()V
    .locals 2

    .prologue
    .line 419
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 420
    new-instance v0, Ljava/lang/IllegalThreadStateException;

    const-string v1, "MUST call in UI thread."

    invoke-direct {v0, v1}, Ljava/lang/IllegalThreadStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 422
    :cond_0
    return-void
.end method

.method public static synthetic a(Lcom/wandoujia/ripple_framework/download/DownloadManager;Lcom/wandoujia/ripple_framework/download/DownloadInfo;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/wandoujia/ripple_framework/download/DownloadManager;->c(Lcom/wandoujia/ripple_framework/download/DownloadInfo;)V

    return-void
.end method

.method public static synthetic a(Lcom/wandoujia/ripple_framework/download/DownloadManager;Lcom/wandoujia/ripple_framework/event/DownloadEvent$Type;Lcom/wandoujia/ripple_framework/download/DownloadInfo;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Lcom/wandoujia/ripple_framework/download/DownloadManager;->a(Lcom/wandoujia/ripple_framework/event/DownloadEvent$Type;Lcom/wandoujia/ripple_framework/download/DownloadInfo;)V

    return-void
.end method

.method private a(Lcom/wandoujia/ripple_framework/event/DownloadEvent$Type;Lcom/wandoujia/ripple_framework/download/DownloadInfo;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 259
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/wandoujia/ripple_framework/download/DownloadInfo;->a()Lcom/wandoujia/ripple_framework/download/DownloadInfo;

    move-result-object v0

    move-object v1, v0

    .line 260
    :goto_0
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/download/DownloadManager;->k:Lhrx;

    new-instance v2, Lcom/wandoujia/ripple_framework/event/DownloadEvent;

    invoke-direct {v2, p1, v1}, Lcom/wandoujia/ripple_framework/event/DownloadEvent;-><init>(Lcom/wandoujia/ripple_framework/event/DownloadEvent$Type;Lcom/wandoujia/ripple_framework/download/DownloadInfo;)V

    invoke-virtual {v0, v2}, Lhrx;->d(Ljava/lang/Object;)V

    .line 261
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/download/DownloadManager;->g:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhbr;

    .line 262
    sget-object v3, Lcom/wandoujia/ripple_framework/event/DownloadEvent$Type;->DOWNLOAD_STATE_CHANGE:Lcom/wandoujia/ripple_framework/event/DownloadEvent$Type;

    if-ne p1, v3, :cond_2

    .line 263
    invoke-interface {v0, v1}, Lhbr;->a(Lcom/wandoujia/ripple_framework/download/DownloadInfo;)V

    goto :goto_1

    .line 259
    :cond_1
    const/4 v0, 0x0

    move-object v1, v0

    goto :goto_0

    .line 264
    :cond_2
    sget-object v3, Lcom/wandoujia/ripple_framework/event/DownloadEvent$Type;->DOWNLOAD_PROGRESS_CHANGE:Lcom/wandoujia/ripple_framework/event/DownloadEvent$Type;

    if-ne p1, v3, :cond_0

    .line 265
    invoke-interface {v0, v1}, Lhbr;->b(Lcom/wandoujia/ripple_framework/download/DownloadInfo;)V

    goto :goto_1

    .line 268
    :cond_3
    return-void
.end method

.method private a(Lcom/wandoujia/ripple_framework/download/DownloadManager$DownloadOperation$OpType;Lcom/wandoujia/ripple_framework/download/DownloadInfo;Lcom/wandoujia/ripple_framework/download/DownloadManager$PauseReason;)Z
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 534
    iget-object v1, p0, Lcom/wandoujia/ripple_framework/download/DownloadManager;->i:Lhcb;

    iget-boolean v1, v1, Lhcb;->b:Z

    if-eqz v1, :cond_0

    .line 540
    :goto_0
    return v0

    .line 537
    :cond_0
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 538
    iget-object v1, p0, Lcom/wandoujia/ripple_framework/download/DownloadManager;->n:Ljava/util/Queue;

    new-instance v2, Lcom/wandoujia/ripple_framework/download/DownloadManager$DownloadOperation;

    invoke-direct {v2, p1, p2, p3, v0}, Lcom/wandoujia/ripple_framework/download/DownloadManager$DownloadOperation;-><init>(Lcom/wandoujia/ripple_framework/download/DownloadManager$DownloadOperation$OpType;Lcom/wandoujia/ripple_framework/download/DownloadInfo;Lcom/wandoujia/ripple_framework/download/DownloadManager$PauseReason;B)V

    invoke-interface {v1, v2}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 540
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static synthetic b(Lcom/wandoujia/ripple_framework/download/DownloadManager;)Lhcb;
    .locals 1
    .parameter

    .prologue
    .line 47
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/download/DownloadManager;->i:Lhcb;

    return-object v0
.end method

.method private b(Lcom/wandoujia/ripple_framework/download/DownloadInfo;Z)Z
    .locals 8
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 407
    iget-object v2, p1, Lcom/wandoujia/ripple_framework/download/DownloadInfo;->d:Lcom/wandoujia/download2/DownloadInfo2;

    iget-object v2, v2, Lcom/wandoujia/download2/DownloadInfo2;->a:Lcom/wandoujia/download2/DownloadRequestParam;

    iget-object v2, v2, Lcom/wandoujia/download2/DownloadRequestParam;->e:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p1, Lcom/wandoujia/ripple_framework/download/DownloadInfo;->d:Lcom/wandoujia/download2/DownloadInfo2;

    iget-object v2, v2, Lcom/wandoujia/download2/DownloadInfo2;->a:Lcom/wandoujia/download2/DownloadRequestParam;

    iget-object v3, v2, Lcom/wandoujia/download2/DownloadRequestParam;->e:Ljava/lang/String;

    iget-object v2, p1, Lcom/wandoujia/ripple_framework/download/DownloadInfo;->d:Lcom/wandoujia/download2/DownloadInfo2;

    iget-wide v4, v2, Lcom/wandoujia/download2/DownloadInfo2;->d:J

    const-wide/16 v6, 0x0

    cmp-long v2, v4, v6

    if-gez v2, :cond_3

    move v2, v0

    :goto_0
    if-nez v2, :cond_2

    .line 410
    :cond_0
    if-eqz p2, :cond_1

    .line 411
    iget-object v2, p0, Lcom/wandoujia/ripple_framework/download/DownloadManager;->f:Landroid/content/Context;

    sget v3, Lcom/wandoujia/ripple_framework/R$string;->no_enough_storage_tips:I

    invoke-static {v2, v3, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_1
    move v0, v1

    .line 415
    :cond_2
    return v0

    .line 407
    :cond_3
    invoke-static {}, Landroid/os/Environment;->getDownloadCacheDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    :cond_4
    :goto_1
    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/wandoujia/base/utils/FileUtil;->getAvailableBytes(Ljava/lang/String;)J

    move-result-wide v2

    cmp-long v2, v2, v4

    if-ltz v2, :cond_6

    move v2, v0

    goto :goto_0

    :cond_5
    new-instance v2, Ljava/io/File;

    invoke-static {v3}, Lcom/wandoujia/base/utils/FileNameUtil;->getFullPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    move-result v3

    if-nez v3, :cond_4

    const/4 v2, 0x0

    goto :goto_1

    :cond_6
    move v2, v1

    goto :goto_0
.end method

.method public static synthetic c(Lcom/wandoujia/ripple_framework/download/DownloadManager;)Lhbs;
    .locals 1
    .parameter

    .prologue
    .line 47
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/download/DownloadManager;->m:Lhbs;

    return-object v0
.end method

.method private c(Lcom/wandoujia/ripple_framework/download/DownloadInfo;)V
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 291
    sget-object v2, Lcom/wandoujia/ripple_framework/download/DownloadManager$DownloadOperation$OpType;->START:Lcom/wandoujia/ripple_framework/download/DownloadManager$DownloadOperation$OpType;

    invoke-direct {p0, v2, p1, v6}, Lcom/wandoujia/ripple_framework/download/DownloadManager;->a(Lcom/wandoujia/ripple_framework/download/DownloadManager$DownloadOperation$OpType;Lcom/wandoujia/ripple_framework/download/DownloadInfo;Lcom/wandoujia/ripple_framework/download/DownloadManager$PauseReason;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 317
    :cond_0
    :goto_0
    return-void

    .line 294
    :cond_1
    iget-object v2, p0, Lcom/wandoujia/ripple_framework/download/DownloadManager;->i:Lhcb;

    iget-object v3, p1, Lcom/wandoujia/ripple_framework/download/DownloadInfo;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lhcb;->c(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 296
    iget-object v2, p0, Lcom/wandoujia/ripple_framework/download/DownloadManager;->i:Lhcb;

    iget-object v3, p1, Lcom/wandoujia/ripple_framework/download/DownloadInfo;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lhcb;->a(Ljava/lang/String;)Lcom/wandoujia/ripple_framework/download/DownloadInfo;

    move-result-object v2

    .line 298
    invoke-static {p1}, Ld;->b(Lcom/wandoujia/ripple_framework/download/DownloadInfo;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget v3, v2, Lcom/wandoujia/ripple_framework/download/DownloadInfo;->m:I

    iget v4, p1, Lcom/wandoujia/ripple_framework/download/DownloadInfo;->m:I

    if-ne v3, v4, :cond_4

    .line 300
    :cond_2
    iget-object v3, v2, Lcom/wandoujia/ripple_framework/download/DownloadInfo;->c:Lcom/wandoujia/ripple_framework/download/DownloadInfo$Status;

    invoke-virtual {v3}, Lcom/wandoujia/ripple_framework/download/DownloadInfo$Status;->isPaused()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 301
    invoke-direct {p0, p1}, Lcom/wandoujia/ripple_framework/download/DownloadManager;->d(Lcom/wandoujia/ripple_framework/download/DownloadInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 302
    sget-object v0, Lcom/wandoujia/ripple_framework/download/DownloadManager;->j:Ljava/lang/String;

    const-string v2, "An existing download is paused, resume it."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lcom/wandoujia/base/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 303
    invoke-virtual {p0, p1}, Lcom/wandoujia/ripple_framework/download/DownloadManager;->b(Lcom/wandoujia/ripple_framework/download/DownloadInfo;)V

    goto :goto_0

    .line 306
    :cond_3
    iget-object v3, v2, Lcom/wandoujia/ripple_framework/download/DownloadInfo;->c:Lcom/wandoujia/ripple_framework/download/DownloadInfo$Status;

    invoke-virtual {v3}, Lcom/wandoujia/ripple_framework/download/DownloadInfo$Status;->isComplete()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 307
    sget-object v3, Lcom/wandoujia/ripple_framework/download/DownloadManager;->j:Ljava/lang/String;

    const-string v4, "An existing download is complete, retry downloading it."

    new-array v5, v1, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/wandoujia/base/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 308
    invoke-direct {p0, p1}, Lcom/wandoujia/ripple_framework/download/DownloadManager;->d(Lcom/wandoujia/ripple_framework/download/DownloadInfo;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 309
    invoke-virtual {p0, v2, v0}, Lcom/wandoujia/ripple_framework/download/DownloadManager;->a(Lcom/wandoujia/ripple_framework/download/DownloadInfo;Z)V

    goto :goto_0

    .line 314
    :cond_4
    invoke-virtual {p0, v2}, Lcom/wandoujia/ripple_framework/download/DownloadManager;->a(Lcom/wandoujia/ripple_framework/download/DownloadInfo;)V

    .line 316
    :cond_5
    invoke-direct {p0, p1}, Lcom/wandoujia/ripple_framework/download/DownloadManager;->e(Lcom/wandoujia/ripple_framework/download/DownloadInfo;)Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-direct {p0, p1, v0}, Lcom/wandoujia/ripple_framework/download/DownloadManager;->b(Lcom/wandoujia/ripple_framework/download/DownloadInfo;Z)Z

    move-result v2

    if-eqz v2, :cond_9

    :goto_1
    if-eqz v0, :cond_0

    invoke-static {p1}, Ld;->b(Lcom/wandoujia/ripple_framework/download/DownloadInfo;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v1, p1, Lcom/wandoujia/ripple_framework/download/DownloadInfo;->l:Ljava/lang/String;

    sget-object v0, Lhbq;->b:[I

    iget-object v2, p1, Lcom/wandoujia/ripple_framework/download/DownloadInfo;->e:Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;

    invoke-virtual {v2}, Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    :cond_6
    const-string v0, "common"

    :goto_2
    iget-boolean v2, p1, Lcom/wandoujia/ripple_framework/download/DownloadInfo;->k:Z

    invoke-static {v1, v0, v2}, Lhhg;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_7
    invoke-direct {p0, p1}, Lcom/wandoujia/ripple_framework/download/DownloadManager;->d(Lcom/wandoujia/ripple_framework/download/DownloadInfo;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/wandoujia/ripple_framework/download/DownloadManager;->d:Lcta;

    iget-object v1, p1, Lcom/wandoujia/ripple_framework/download/DownloadInfo;->d:Lcom/wandoujia/download2/DownloadInfo2;

    iget-object v1, v1, Lcom/wandoujia/download2/DownloadInfo2;->a:Lcom/wandoujia/download2/DownloadRequestParam;

    invoke-virtual {v0, v1}, Lcta;->a(Lcom/wandoujia/download2/DownloadRequestParam;)V

    :cond_8
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/download/DownloadManager;->i:Lhcb;

    iget-object v1, p1, Lcom/wandoujia/ripple_framework/download/DownloadInfo;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v6}, Lhcb;->a(Ljava/lang/String;Lcom/wandoujia/ripple_framework/download/DownloadInfo;)V

    invoke-virtual {v0, p1}, Lhcb;->a(Lcom/wandoujia/ripple_framework/download/DownloadInfo;)V

    iget-object v1, v0, Lhcb;->f:Lhcp;

    new-instance v2, Lhcd;

    invoke-direct {v2, v0, p1}, Lhcd;-><init>(Lhcb;Lcom/wandoujia/ripple_framework/download/DownloadInfo;)V

    iget-object v0, v1, Lhcp;->a:Landroid/os/Handler;

    new-instance v3, Lhcu;

    invoke-direct {v3, v1, p1, v2}, Lhcu;-><init>(Lhcp;Lcom/wandoujia/ripple_framework/download/DownloadInfo;Lhdd;)V

    invoke-virtual {v0, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    sget-object v0, Lcom/wandoujia/ripple_framework/event/DownloadEvent$Type;->DOWNLOAD_STATE_CHANGE:Lcom/wandoujia/ripple_framework/event/DownloadEvent$Type;

    invoke-direct {p0, v0, p1}, Lcom/wandoujia/ripple_framework/download/DownloadManager;->a(Lcom/wandoujia/ripple_framework/event/DownloadEvent$Type;Lcom/wandoujia/ripple_framework/download/DownloadInfo;)V

    iget-object v0, p0, Lcom/wandoujia/ripple_framework/download/DownloadManager;->m:Lhbs;

    invoke-virtual {v0, p1}, Lhbs;->a(Lcom/wandoujia/ripple_framework/download/DownloadInfo;)V

    iget-object v0, p0, Lcom/wandoujia/ripple_framework/download/DownloadManager;->i:Lhcb;

    invoke-virtual {v0}, Lhcb;->a()I

    move-result v0

    const/16 v1, 0x3e8

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/wandoujia/ripple_framework/download/DownloadManager;->i:Lhcb;

    iget-object v0, v0, Lhcb;->f:Lhcp;

    iget-object v1, p0, Lcom/wandoujia/ripple_framework/download/DownloadManager;->i:Lhcb;

    invoke-virtual {v1}, Lhcb;->a()I

    move-result v1

    add-int/lit16 v1, v1, -0x3e8

    new-instance v2, Lhbp;

    invoke-direct {v2, p0}, Lhbp;-><init>(Lcom/wandoujia/ripple_framework/download/DownloadManager;)V

    iget-object v3, v0, Lhcp;->a:Landroid/os/Handler;

    new-instance v4, Lhcr;

    invoke-direct {v4, v0, v1, v2}, Lhcr;-><init>(Lhcp;ILhde;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    :cond_9
    move v0, v1

    goto :goto_1

    :pswitch_0
    const-string v0, "app_upgrade_patch"

    goto :goto_2

    :pswitch_1
    iget-object v0, p1, Lcom/wandoujia/ripple_framework/download/DownloadInfo;->d:Lcom/wandoujia/download2/DownloadInfo2;

    iget-object v0, v0, Lcom/wandoujia/download2/DownloadInfo2;->a:Lcom/wandoujia/download2/DownloadRequestParam;

    iget-object v0, v0, Lcom/wandoujia/download2/DownloadRequestParam;->a:Lcom/wandoujia/download2/DownloadRequestParam$Type;

    sget-object v2, Lcom/wandoujia/download2/DownloadRequestParam$Type;->GAME_PACKET:Lcom/wandoujia/download2/DownloadRequestParam$Type;

    if-ne v0, v2, :cond_a

    const-string v0, "game_packet"

    goto :goto_2

    :cond_a
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/download/DownloadManager;->l:Lcom/wandoujia/appmanager/AppManager;

    invoke-virtual {v0, v1}, Lcom/wandoujia/appmanager/AppManager;->d(Ljava/lang/String;)Lcom/wandoujia/appmanager/LocalAppInfo;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/wandoujia/appmanager/LocalAppInfo;->isUpgradable()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {v0}, Lcom/wandoujia/appmanager/LocalAppInfo;->getUpgradeInfo()Lcom/wandoujia/appmanager/LocalAppInfo$UpgradeInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wandoujia/appmanager/LocalAppInfo$UpgradeInfo;->getVersionCode()I

    move-result v0

    iget v2, p1, Lcom/wandoujia/ripple_framework/download/DownloadInfo;->m:I

    if-ne v0, v2, :cond_6

    const-string v0, "app_upgrade"

    goto/16 :goto_2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private c()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 398
    invoke-static {}, Lcom/wandoujia/base/utils/NetworkUtil;->getNetworkType()I

    move-result v1

    iput v1, p0, Lcom/wandoujia/ripple_framework/download/DownloadManager;->a:I

    .line 399
    iget v1, p0, Lcom/wandoujia/ripple_framework/download/DownloadManager;->a:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 400
    iget-object v1, p0, Lcom/wandoujia/ripple_framework/download/DownloadManager;->f:Landroid/content/Context;

    sget v2, Lcom/wandoujia/ripple_framework/R$string;->network_connection_error:I

    invoke-static {v1, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 401
    const/4 v0, 0x0

    .line 403
    :cond_0
    return v0
.end method

.method public static synthetic d(Lcom/wandoujia/ripple_framework/download/DownloadManager;)Lcta;
    .locals 1
    .parameter

    .prologue
    .line 47
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/download/DownloadManager;->d:Lcta;

    return-object v0
.end method

.method private d(Lcom/wandoujia/ripple_framework/download/DownloadInfo;)Z
    .locals 1
    .parameter

    .prologue
    .line 320
    iget-boolean v0, p1, Lcom/wandoujia/ripple_framework/download/DownloadInfo;->j:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/wandoujia/ripple_framework/download/DownloadManager;->f:Landroid/content/Context;

    invoke-static {v0}, Lcom/wandoujia/base/utils/NetworkUtil;->isWifiConnected(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static synthetic e(Lcom/wandoujia/ripple_framework/download/DownloadManager;)Ljava/util/Queue;
    .locals 1
    .parameter

    .prologue
    .line 47
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/download/DownloadManager;->n:Ljava/util/Queue;

    return-object v0
.end method

.method private e(Lcom/wandoujia/ripple_framework/download/DownloadInfo;)Z
    .locals 5
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 385
    iget-object v2, p1, Lcom/wandoujia/ripple_framework/download/DownloadInfo;->d:Lcom/wandoujia/download2/DownloadInfo2;

    iget-object v2, v2, Lcom/wandoujia/download2/DownloadInfo2;->a:Lcom/wandoujia/download2/DownloadRequestParam;

    .line 386
    if-nez v2, :cond_1

    .line 388
    sget-object v2, Lcom/wandoujia/ripple_framework/download/DownloadManager;->j:Ljava/lang/String;

    const-string v3, "Download Request is null, pls check if lack of params when build this request"

    new-array v4, v0, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/wandoujia/base/log/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 389
    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->isDebug()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 390
    iget-object v2, p0, Lcom/wandoujia/ripple_framework/download/DownloadManager;->f:Landroid/content/Context;

    sget v3, Lcom/wandoujia/ripple_framework/R$string;->illegal_download_params:I

    invoke-static {v2, v3, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 394
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public final a(Lhbx;)Lcom/wandoujia/ripple_framework/download/DownloadInfo;
    .locals 14
    .parameter

    .prologue
    const/4 v13, 0x0

    const/4 v9, 0x0

    .line 271
    if-nez p1, :cond_0

    .line 272
    sget-object v0, Lcom/wandoujia/ripple_framework/download/DownloadManager;->j:Ljava/lang/String;

    const-string v1, "DownloadRequest null, quit."

    new-array v2, v13, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/wandoujia/base/log/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 287
    :goto_0
    return-object v9

    .line 277
    :cond_0
    :try_start_0
    iget-object v10, p0, Lcom/wandoujia/ripple_framework/download/DownloadManager;->f:Landroid/content/Context;

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p1, Lhbx;->a:Lcom/wandoujia/download2/DownloadRequestParam$Type;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lhbx;->d:Ljava/lang/String;
    :try_end_0
    .catch Lcom/wandoujia/ripple_framework/download/StorageUtil$GenerateSaveFileException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_3

    :cond_1
    move-object v0, v9

    .line 282
    :goto_1
    if-nez v0, :cond_a

    .line 283
    sget-object v0, Lcom/wandoujia/ripple_framework/download/DownloadManager;->j:Ljava/lang/String;

    const-string v1, "DownloadRequest illegal, quit."

    new-array v2, v13, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/wandoujia/base/log/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 277
    :cond_2
    :try_start_1
    iget-object v0, p1, Lhbx;->d:Ljava/lang/String;

    if-nez v0, :cond_3

    move-object v0, v9

    goto :goto_1

    :cond_3
    new-instance v0, Lcom/wandoujia/ripple_framework/download/DownloadInfo;

    invoke-direct {v0}, Lcom/wandoujia/ripple_framework/download/DownloadInfo;-><init>()V

    new-instance v11, Lcom/wandoujia/download2/DownloadInfo2;

    new-instance v12, Lcom/wandoujia/download2/DownloadRequestParam;

    invoke-direct {v12}, Lcom/wandoujia/download2/DownloadRequestParam;-><init>()V

    iget-object v1, p1, Lhbx;->a:Lcom/wandoujia/download2/DownloadRequestParam$Type;

    if-nez v1, :cond_5

    sget-object v1, Lcom/wandoujia/download2/DownloadRequestParam$Type;->COMMON:Lcom/wandoujia/download2/DownloadRequestParam$Type;

    :goto_2
    iput-object v1, v12, Lcom/wandoujia/download2/DownloadRequestParam;->a:Lcom/wandoujia/download2/DownloadRequestParam$Type;

    iget-object v1, p1, Lhbx;->b:Lcom/wandoujia/logv3/model/packages/DownloadPackage$VerifyType;

    iput-object v1, v12, Lcom/wandoujia/download2/DownloadRequestParam;->f:Lcom/wandoujia/logv3/model/packages/DownloadPackage$VerifyType;

    iget-object v1, p1, Lhbx;->c:Ljava/lang/String;

    iput-object v1, v12, Lcom/wandoujia/download2/DownloadRequestParam;->g:Ljava/lang/String;

    iget-object v1, p1, Lhbx;->d:Ljava/lang/String;

    iput-object v1, v12, Lcom/wandoujia/download2/DownloadRequestParam;->b:Ljava/lang/String;

    iget-object v1, p1, Lhbx;->e:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p1, Lhbx;->j:Ljava/lang/String;

    const/16 v2, 0xb

    invoke-static {v2}, Lcom/wandoujia/base/utils/SystemUtil;->aboveApiLevel(I)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v1, p1, Lhbx;->h:Ljava/lang/String;

    :cond_4
    iget-object v2, p1, Lhbx;->d:Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, p1, Lhbx;->l:Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;

    iget-object v5, p1, Lhbx;->n:Ljava/lang/String;

    iget-wide v6, p1, Lhbx;->p:J

    invoke-static {}, Lcom/wandoujia/ripple_framework/Config;->s()Ljava/lang/String;

    move-result-object v8

    invoke-static/range {v1 .. v8}, Lg;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;Ljava/lang/String;JLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_3
    iput-object v1, v12, Lcom/wandoujia/download2/DownloadRequestParam;->e:Ljava/lang/String;

    invoke-direct {v11, v12}, Lcom/wandoujia/download2/DownloadInfo2;-><init>(Lcom/wandoujia/download2/DownloadRequestParam;)V

    iget-wide v2, p1, Lhbx;->p:J

    iput-wide v2, v11, Lcom/wandoujia/download2/DownloadInfo2;->d:J

    invoke-virtual {v0, v11}, Lcom/wandoujia/ripple_framework/download/DownloadInfo;->a(Lcom/wandoujia/download2/DownloadInfo2;)V

    iget-boolean v1, p1, Lhbx;->f:Z

    iput-boolean v1, v0, Lcom/wandoujia/ripple_framework/download/DownloadInfo;->h:Z

    iget-object v1, p1, Lhbx;->g:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p1, Lhbx;->d:Ljava/lang/String;

    :goto_4
    iput-object v1, v0, Lcom/wandoujia/ripple_framework/download/DownloadInfo;->b:Ljava/lang/String;

    iget-object v1, v0, Lcom/wandoujia/ripple_framework/download/DownloadInfo;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/wandoujia/ripple_framework/download/DownloadInfo;->a:Ljava/lang/String;

    iget-boolean v1, p1, Lhbx;->q:Z

    if-nez v1, :cond_8

    invoke-static {v10}, Lcom/wandoujia/base/utils/NetworkUtil;->isWifiConnected(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_8

    sget-object v1, Lcom/wandoujia/ripple_framework/download/DownloadInfo$Status;->PAUSED_BY_NETWORK:Lcom/wandoujia/ripple_framework/download/DownloadInfo$Status;

    iput-object v1, v0, Lcom/wandoujia/ripple_framework/download/DownloadInfo;->c:Lcom/wandoujia/ripple_framework/download/DownloadInfo$Status;

    :goto_5
    iget-object v1, p1, Lhbx;->h:Ljava/lang/String;

    iput-object v1, v0, Lcom/wandoujia/ripple_framework/download/DownloadInfo;->f:Ljava/lang/String;

    iget-object v1, p1, Lhbx;->i:Ljava/lang/String;

    iput-object v1, v0, Lcom/wandoujia/ripple_framework/download/DownloadInfo;->g:Ljava/lang/String;

    iget-object v1, p1, Lhbx;->l:Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;

    if-nez v1, :cond_9

    sget-object v1, Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;->NOT_SUPPORT:Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;

    :goto_6
    iput-object v1, v0, Lcom/wandoujia/ripple_framework/download/DownloadInfo;->e:Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/wandoujia/ripple_framework/download/DownloadInfo;->i:J

    iget-object v1, p1, Lhbx;->j:Ljava/lang/String;

    iput-object v1, v0, Lcom/wandoujia/ripple_framework/download/DownloadInfo;->l:Ljava/lang/String;

    iget v1, p1, Lhbx;->k:I

    iput v1, v0, Lcom/wandoujia/ripple_framework/download/DownloadInfo;->m:I

    iget-object v1, p1, Lhbx;->m:Ljava/lang/String;

    iput-object v1, v0, Lcom/wandoujia/ripple_framework/download/DownloadInfo;->n:Ljava/lang/String;

    iget-object v1, p1, Lhbx;->n:Ljava/lang/String;

    iput-object v1, v0, Lcom/wandoujia/ripple_framework/download/DownloadInfo;->o:Ljava/lang/String;

    iget-object v1, p1, Lhbx;->o:Ljava/lang/String;

    iput-object v1, v0, Lcom/wandoujia/ripple_framework/download/DownloadInfo;->p:Ljava/lang/String;

    iget-boolean v1, p1, Lhbx;->q:Z

    iput-boolean v1, v0, Lcom/wandoujia/ripple_framework/download/DownloadInfo;->j:Z

    iget-boolean v1, p1, Lhbx;->r:Z

    iput-boolean v1, v0, Lcom/wandoujia/ripple_framework/download/DownloadInfo;->k:Z
    :try_end_1
    .catch Lcom/wandoujia/ripple_framework/download/StorageUtil$GenerateSaveFileException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 279
    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/wandoujia/ripple_framework/download/DownloadManager;->f:Landroid/content/Context;

    sget v1, Lcom/wandoujia/ripple_framework/R$string;->media_or_file_error:I

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    move-object v0, v9

    goto/16 :goto_1

    .line 277
    :cond_5
    :try_start_2
    iget-object v1, p1, Lhbx;->a:Lcom/wandoujia/download2/DownloadRequestParam$Type;

    goto/16 :goto_2

    :cond_6
    iget-object v1, p1, Lhbx;->e:Ljava/lang/String;

    goto/16 :goto_3

    :cond_7
    iget-object v1, p1, Lhbx;->g:Ljava/lang/String;

    goto :goto_4

    :cond_8
    sget-object v1, Lcom/wandoujia/ripple_framework/download/DownloadInfo$Status;->CREATED:Lcom/wandoujia/ripple_framework/download/DownloadInfo$Status;

    iput-object v1, v0, Lcom/wandoujia/ripple_framework/download/DownloadInfo;->c:Lcom/wandoujia/ripple_framework/download/DownloadInfo$Status;

    goto :goto_5

    :cond_9
    iget-object v1, p1, Lhbx;->l:Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;
    :try_end_2
    .catch Lcom/wandoujia/ripple_framework/download/StorageUtil$GenerateSaveFileException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_6

    .line 286
    :cond_a
    invoke-direct {p0, v0}, Lcom/wandoujia/ripple_framework/download/DownloadManager;->c(Lcom/wandoujia/ripple_framework/download/DownloadInfo;)V

    move-object v9, v0

    .line 287
    goto/16 :goto_0
.end method

.method public final a(Ljava/lang/String;)Lcom/wandoujia/ripple_framework/download/DownloadInfo;
    .locals 1
    .parameter

    .prologue
    .line 562
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/download/DownloadManager;->i:Lhcb;

    invoke-virtual {v0, p1}, Lhcb;->a(Ljava/lang/String;)Lcom/wandoujia/ripple_framework/download/DownloadInfo;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lhbm;)Ljava/util/List;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhbm;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/ripple_framework/download/DownloadInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 566
    invoke-static {}, Lcom/wandoujia/ripple_framework/download/DownloadManager;->a()V

    .line 567
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/download/DownloadManager;->i:Lhcb;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, v0, Lhcb;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/ripple_framework/download/DownloadInfo;

    iget-boolean v3, v0, Lcom/wandoujia/ripple_framework/download/DownloadInfo;->h:Z

    iget-object v4, p1, Lhbm;->b:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-ne v3, v4, :cond_0

    iget-object v3, p1, Lhbm;->a:Ljava/util/List;

    if-eqz v3, :cond_1

    iget-object v3, p1, Lhbm;->a:Ljava/util/List;

    iget-object v4, v0, Lcom/wandoujia/ripple_framework/download/DownloadInfo;->c:Lcom/wandoujia/ripple_framework/download/DownloadInfo$Status;

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_1
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method public final a(Lcom/wandoujia/ripple_framework/download/DownloadInfo;)V
    .locals 3
    .parameter

    .prologue
    .line 425
    invoke-static {}, Lcom/wandoujia/ripple_framework/download/DownloadManager;->a()V

    .line 426
    sget-object v0, Lcom/wandoujia/ripple_framework/download/DownloadManager$DownloadOperation$OpType;->CANCEL:Lcom/wandoujia/ripple_framework/download/DownloadManager$DownloadOperation$OpType;

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/wandoujia/ripple_framework/download/DownloadManager;->a(Lcom/wandoujia/ripple_framework/download/DownloadManager$DownloadOperation$OpType;Lcom/wandoujia/ripple_framework/download/DownloadInfo;Lcom/wandoujia/ripple_framework/download/DownloadManager$PauseReason;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 444
    :goto_0
    return-void

    .line 429
    :cond_0
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/download/DownloadManager;->d:Lcta;

    iget-object v1, p1, Lcom/wandoujia/ripple_framework/download/DownloadInfo;->d:Lcom/wandoujia/download2/DownloadInfo2;

    iget-object v1, v1, Lcom/wandoujia/download2/DownloadInfo2;->a:Lcom/wandoujia/download2/DownloadRequestParam;

    iget-object v1, v1, Lcom/wandoujia/download2/DownloadRequestParam;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcta;->a(Ljava/lang/String;)V

    .line 430
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/download/DownloadManager;->d:Lcta;

    iget-object v1, p1, Lcom/wandoujia/ripple_framework/download/DownloadInfo;->d:Lcom/wandoujia/download2/DownloadInfo2;

    iget-object v1, v1, Lcom/wandoujia/download2/DownloadInfo2;->a:Lcom/wandoujia/download2/DownloadRequestParam;

    iget-object v1, v1, Lcom/wandoujia/download2/DownloadRequestParam;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcta;->b(Ljava/lang/String;)V

    .line 431
    iget-object v0, p1, Lcom/wandoujia/ripple_framework/download/DownloadInfo;->d:Lcom/wandoujia/download2/DownloadInfo2;

    iget-object v0, v0, Lcom/wandoujia/download2/DownloadInfo2;->a:Lcom/wandoujia/download2/DownloadRequestParam;

    iget-object v0, v0, Lcom/wandoujia/download2/DownloadRequestParam;->e:Ljava/lang/String;

    invoke-static {v0}, Lcom/wandoujia/base/utils/FileUtil;->deleteFile(Ljava/lang/String;)V

    .line 433
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/download/DownloadManager;->i:Lhcb;

    iget-object v1, p1, Lcom/wandoujia/ripple_framework/download/DownloadInfo;->b:Ljava/lang/String;

    sget-object v2, Lcom/wandoujia/ripple_framework/download/DownloadInfo$Status;->CANCELED:Lcom/wandoujia/ripple_framework/download/DownloadInfo$Status;

    invoke-virtual {v0, v1, v2}, Lhcb;->a(Ljava/lang/String;Lcom/wandoujia/ripple_framework/download/DownloadInfo$Status;)Lcom/wandoujia/ripple_framework/download/DownloadInfo;

    move-result-object v0

    .line 435
    if-nez v0, :cond_1

    .line 437
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/download/DownloadManager;->i:Lhcb;

    invoke-virtual {v0, p1}, Lhcb;->c(Lcom/wandoujia/ripple_framework/download/DownloadInfo;)V

    goto :goto_0

    .line 440
    :cond_1
    iget-object v1, p0, Lcom/wandoujia/ripple_framework/download/DownloadManager;->i:Lhcb;

    invoke-virtual {v1, p1}, Lhcb;->c(Lcom/wandoujia/ripple_framework/download/DownloadInfo;)V

    .line 441
    sget-object v1, Lcom/wandoujia/ripple_framework/event/DownloadEvent$Type;->DOWNLOAD_STATE_CHANGE:Lcom/wandoujia/ripple_framework/event/DownloadEvent$Type;

    invoke-direct {p0, v1, v0}, Lcom/wandoujia/ripple_framework/download/DownloadManager;->a(Lcom/wandoujia/ripple_framework/event/DownloadEvent$Type;Lcom/wandoujia/ripple_framework/download/DownloadInfo;)V

    .line 443
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/download/DownloadManager;->m:Lhbs;

    iget-object v1, p1, Lcom/wandoujia/ripple_framework/download/DownloadInfo;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lhbs;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final a(Lcom/wandoujia/ripple_framework/download/DownloadInfo;Lcom/wandoujia/ripple_framework/download/DownloadManager$PauseReason;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 468
    invoke-static {}, Lcom/wandoujia/ripple_framework/download/DownloadManager;->a()V

    .line 469
    sget-object v0, Lcom/wandoujia/ripple_framework/download/DownloadManager$DownloadOperation$OpType;->PAUSE:Lcom/wandoujia/ripple_framework/download/DownloadManager$DownloadOperation$OpType;

    invoke-direct {p0, v0, p1, p2}, Lcom/wandoujia/ripple_framework/download/DownloadManager;->a(Lcom/wandoujia/ripple_framework/download/DownloadManager$DownloadOperation$OpType;Lcom/wandoujia/ripple_framework/download/DownloadInfo;Lcom/wandoujia/ripple_framework/download/DownloadManager$PauseReason;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 479
    :goto_0
    return-void

    .line 472
    :cond_0
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/download/DownloadManager;->d:Lcta;

    iget-object v1, p1, Lcom/wandoujia/ripple_framework/download/DownloadInfo;->d:Lcom/wandoujia/download2/DownloadInfo2;

    iget-object v1, v1, Lcom/wandoujia/download2/DownloadInfo2;->a:Lcom/wandoujia/download2/DownloadRequestParam;

    iget-object v1, v1, Lcom/wandoujia/download2/DownloadRequestParam;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcta;->a(Ljava/lang/String;)V

    .line 474
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/download/DownloadManager;->i:Lhcb;

    iget-object v1, p1, Lcom/wandoujia/ripple_framework/download/DownloadInfo;->b:Ljava/lang/String;

    #getter for: Lcom/wandoujia/ripple_framework/download/DownloadManager$PauseReason;->pauseStatus:Lcom/wandoujia/ripple_framework/download/DownloadInfo$Status;
    invoke-static {p2}, Lcom/wandoujia/ripple_framework/download/DownloadManager$PauseReason;->access$1000(Lcom/wandoujia/ripple_framework/download/DownloadManager$PauseReason;)Lcom/wandoujia/ripple_framework/download/DownloadInfo$Status;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lhcb;->a(Ljava/lang/String;Lcom/wandoujia/ripple_framework/download/DownloadInfo$Status;)Lcom/wandoujia/ripple_framework/download/DownloadInfo;

    move-result-object v0

    .line 476
    sget-object v1, Lcom/wandoujia/ripple_framework/event/DownloadEvent$Type;->DOWNLOAD_STATE_CHANGE:Lcom/wandoujia/ripple_framework/event/DownloadEvent$Type;

    invoke-direct {p0, v1, v0}, Lcom/wandoujia/ripple_framework/download/DownloadManager;->a(Lcom/wandoujia/ripple_framework/event/DownloadEvent$Type;Lcom/wandoujia/ripple_framework/download/DownloadInfo;)V

    .line 478
    iget-object v1, p0, Lcom/wandoujia/ripple_framework/download/DownloadManager;->m:Lhbs;

    invoke-virtual {v1, v0}, Lhbs;->a(Lcom/wandoujia/ripple_framework/download/DownloadInfo;)V

    goto :goto_0
.end method

.method public final a(Lcom/wandoujia/ripple_framework/download/DownloadInfo;Z)V
    .locals 11
    .parameter
    .parameter

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 501
    invoke-static {}, Lcom/wandoujia/ripple_framework/download/DownloadManager;->a()V

    .line 502
    sget-object v0, Lcom/wandoujia/ripple_framework/download/DownloadManager$DownloadOperation$OpType;->RETRY:Lcom/wandoujia/ripple_framework/download/DownloadManager$DownloadOperation$OpType;

    invoke-direct {p0, v0, p1, v9}, Lcom/wandoujia/ripple_framework/download/DownloadManager;->a(Lcom/wandoujia/ripple_framework/download/DownloadManager$DownloadOperation$OpType;Lcom/wandoujia/ripple_framework/download/DownloadInfo;Lcom/wandoujia/ripple_framework/download/DownloadManager$PauseReason;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 530
    :cond_0
    :goto_0
    return-void

    .line 505
    :cond_1
    invoke-direct {p0, p1}, Lcom/wandoujia/ripple_framework/download/DownloadManager;->e(Lcom/wandoujia/ripple_framework/download/DownloadInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/wandoujia/ripple_framework/download/DownloadManager;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 509
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/wandoujia/ripple_framework/download/DownloadManager;->b(Lcom/wandoujia/ripple_framework/download/DownloadInfo;Z)Z

    move-result v0

    if-nez v0, :cond_5

    .line 510
    invoke-static {}, Lcom/wandoujia/ripple_framework/Config;->s()Ljava/lang/String;

    move-result-object v0

    .line 511
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p1, Lcom/wandoujia/ripple_framework/download/DownloadInfo;->d:Lcom/wandoujia/download2/DownloadInfo2;

    iget-object v1, v1, Lcom/wandoujia/download2/DownloadInfo2;->a:Lcom/wandoujia/download2/DownloadRequestParam;

    iget-object v1, v1, Lcom/wandoujia/download2/DownloadRequestParam;->e:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 513
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/download/DownloadManager;->f:Landroid/content/Context;

    sget v1, Lcom/wandoujia/ripple_framework/R$string;->no_enough_storage_tips:I

    invoke-static {v0, v1, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 517
    :cond_2
    :try_start_0
    iget-object v1, p1, Lcom/wandoujia/ripple_framework/download/DownloadInfo;->l:Ljava/lang/String;

    const/16 v0, 0xb

    invoke-static {v0}, Lcom/wandoujia/base/utils/SystemUtil;->aboveApiLevel(I)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v1, p1, Lcom/wandoujia/ripple_framework/download/DownloadInfo;->f:Ljava/lang/String;

    :cond_3
    iget-object v0, p1, Lcom/wandoujia/ripple_framework/download/DownloadInfo;->d:Lcom/wandoujia/download2/DownloadInfo2;

    iget-object v0, v0, Lcom/wandoujia/download2/DownloadInfo2;->a:Lcom/wandoujia/download2/DownloadRequestParam;

    iget-object v2, v0, Lcom/wandoujia/download2/DownloadRequestParam;->b:Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, p1, Lcom/wandoujia/ripple_framework/download/DownloadInfo;->e:Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;

    iget-object v5, p1, Lcom/wandoujia/ripple_framework/download/DownloadInfo;->o:Ljava/lang/String;

    iget-object v0, p1, Lcom/wandoujia/ripple_framework/download/DownloadInfo;->d:Lcom/wandoujia/download2/DownloadInfo2;

    iget-wide v6, v0, Lcom/wandoujia/download2/DownloadInfo2;->d:J

    invoke-static {}, Lcom/wandoujia/ripple_framework/Config;->s()Ljava/lang/String;

    move-result-object v8

    invoke-static/range {v1 .. v8}, Lg;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;Ljava/lang/String;JLjava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/wandoujia/ripple_framework/download/StorageUtil$GenerateSaveFileException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 524
    :goto_1
    iget-object v1, p0, Lcom/wandoujia/ripple_framework/download/DownloadManager;->d:Lcta;

    iget-object v2, p1, Lcom/wandoujia/ripple_framework/download/DownloadInfo;->d:Lcom/wandoujia/download2/DownloadInfo2;

    iget-object v2, v2, Lcom/wandoujia/download2/DownloadInfo2;->a:Lcom/wandoujia/download2/DownloadRequestParam;

    iget-object v2, v2, Lcom/wandoujia/download2/DownloadRequestParam;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcta;->b(Ljava/lang/String;)V

    .line 525
    iget-object v2, p0, Lcom/wandoujia/ripple_framework/download/DownloadManager;->i:Lhcb;

    iget-object v3, p1, Lcom/wandoujia/ripple_framework/download/DownloadInfo;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lhcb;->c(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v2, v3}, Lhcb;->a(Ljava/lang/String;)Lcom/wandoujia/ripple_framework/download/DownloadInfo;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Lhcb;->a(Ljava/lang/String;Lcom/wandoujia/ripple_framework/download/DownloadInfo;)V

    invoke-static {v1, p2, v0}, Lhcb;->a(Lcom/wandoujia/ripple_framework/download/DownloadInfo;ZLjava/lang/String;)V

    iget-object v0, v2, Lhcb;->f:Lhcp;

    new-instance v4, Lhci;

    invoke-direct {v4, v2, v3}, Lhci;-><init>(Lhcb;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v4}, Lhcp;->a(Lcom/wandoujia/ripple_framework/download/DownloadInfo;Lhdd;)V

    move-object v0, v1

    .line 526
    :goto_2
    iget-object v1, p0, Lcom/wandoujia/ripple_framework/download/DownloadManager;->d:Lcta;

    iget-object v2, v0, Lcom/wandoujia/ripple_framework/download/DownloadInfo;->d:Lcom/wandoujia/download2/DownloadInfo2;

    iget-object v2, v2, Lcom/wandoujia/download2/DownloadInfo2;->a:Lcom/wandoujia/download2/DownloadRequestParam;

    invoke-virtual {v1, v2}, Lcta;->a(Lcom/wandoujia/download2/DownloadRequestParam;)V

    .line 527
    sget-object v1, Lcom/wandoujia/ripple_framework/event/DownloadEvent$Type;->DOWNLOAD_STATE_CHANGE:Lcom/wandoujia/ripple_framework/event/DownloadEvent$Type;

    invoke-direct {p0, v1, v0}, Lcom/wandoujia/ripple_framework/download/DownloadManager;->a(Lcom/wandoujia/ripple_framework/event/DownloadEvent$Type;Lcom/wandoujia/ripple_framework/download/DownloadInfo;)V

    .line 529
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/download/DownloadManager;->m:Lhbs;

    invoke-virtual {v0, p1}, Lhbs;->a(Lcom/wandoujia/ripple_framework/download/DownloadInfo;)V

    goto/16 :goto_0

    .line 519
    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/wandoujia/ripple_framework/download/DownloadManager;->f:Landroid/content/Context;

    sget v1, Lcom/wandoujia/ripple_framework/R$string;->media_or_file_error:I

    invoke-static {v0, v1, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 525
    :cond_4
    iget-object v1, p1, Lcom/wandoujia/ripple_framework/download/DownloadInfo;->b:Ljava/lang/String;

    invoke-virtual {v2, v1, v9}, Lhcb;->a(Ljava/lang/String;Lcom/wandoujia/ripple_framework/download/DownloadInfo;)V

    invoke-static {p1, p2, v0}, Lhcb;->a(Lcom/wandoujia/ripple_framework/download/DownloadInfo;ZLjava/lang/String;)V

    invoke-virtual {v2, p1}, Lhcb;->a(Lcom/wandoujia/ripple_framework/download/DownloadInfo;)V

    iget-object v0, v2, Lhcb;->f:Lhcp;

    new-instance v1, Lhcj;

    invoke-direct {v1, v2, v3}, Lhcj;-><init>(Lhcb;Ljava/lang/String;)V

    invoke-virtual {v0, p1, v1}, Lhcp;->a(Lcom/wandoujia/ripple_framework/download/DownloadInfo;Lhdd;)V

    move-object v0, p1

    goto :goto_2

    :cond_5
    move-object v0, v9

    goto :goto_1
.end method

.method public final a(Ljava/util/List;)V
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/ripple_framework/download/DownloadInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 447
    invoke-static {}, Lcom/wandoujia/ripple_framework/download/DownloadManager;->a()V

    .line 448
    sget-object v2, Lcom/wandoujia/ripple_framework/download/DownloadManager$DownloadOperation$OpType;->CANCEL:Lcom/wandoujia/ripple_framework/download/DownloadManager$DownloadOperation$OpType;

    iget-object v0, p0, Lcom/wandoujia/ripple_framework/download/DownloadManager;->i:Lhcb;

    iget-boolean v0, v0, Lhcb;->b:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    if-eqz v0, :cond_2

    .line 465
    :goto_1
    return-void

    .line 448
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/ripple_framework/download/DownloadInfo;

    iget-object v4, p0, Lcom/wandoujia/ripple_framework/download/DownloadManager;->n:Ljava/util/Queue;

    new-instance v5, Lcom/wandoujia/ripple_framework/download/DownloadManager$DownloadOperation;

    const/4 v6, 0x0

    invoke-direct {v5, v2, v0, v6, v1}, Lcom/wandoujia/ripple_framework/download/DownloadManager$DownloadOperation;-><init>(Lcom/wandoujia/ripple_framework/download/DownloadManager$DownloadOperation$OpType;Lcom/wandoujia/ripple_framework/download/DownloadInfo;Lcom/wandoujia/ripple_framework/download/DownloadManager$PauseReason;B)V

    invoke-interface {v4, v5}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    .line 452
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/ripple_framework/download/DownloadInfo;

    .line 453
    iget-object v2, p0, Lcom/wandoujia/ripple_framework/download/DownloadManager;->d:Lcta;

    iget-object v3, v0, Lcom/wandoujia/ripple_framework/download/DownloadInfo;->d:Lcom/wandoujia/download2/DownloadInfo2;

    iget-object v3, v3, Lcom/wandoujia/download2/DownloadInfo2;->a:Lcom/wandoujia/download2/DownloadRequestParam;

    iget-object v3, v3, Lcom/wandoujia/download2/DownloadRequestParam;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcta;->a(Ljava/lang/String;)V

    .line 454
    iget-object v2, p0, Lcom/wandoujia/ripple_framework/download/DownloadManager;->d:Lcta;

    iget-object v3, v0, Lcom/wandoujia/ripple_framework/download/DownloadInfo;->d:Lcom/wandoujia/download2/DownloadInfo2;

    iget-object v3, v3, Lcom/wandoujia/download2/DownloadInfo2;->a:Lcom/wandoujia/download2/DownloadRequestParam;

    iget-object v3, v3, Lcom/wandoujia/download2/DownloadRequestParam;->e:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcta;->b(Ljava/lang/String;)V

    .line 455
    iget-object v2, v0, Lcom/wandoujia/ripple_framework/download/DownloadInfo;->d:Lcom/wandoujia/download2/DownloadInfo2;

    iget-object v2, v2, Lcom/wandoujia/download2/DownloadInfo2;->a:Lcom/wandoujia/download2/DownloadRequestParam;

    iget-object v2, v2, Lcom/wandoujia/download2/DownloadRequestParam;->e:Ljava/lang/String;

    invoke-static {v2}, Lcom/wandoujia/base/utils/FileUtil;->deleteFile(Ljava/lang/String;)V

    .line 457
    iget-object v2, p0, Lcom/wandoujia/ripple_framework/download/DownloadManager;->i:Lhcb;

    iget-object v3, v0, Lcom/wandoujia/ripple_framework/download/DownloadInfo;->b:Ljava/lang/String;

    sget-object v4, Lcom/wandoujia/ripple_framework/download/DownloadInfo$Status;->CANCELED:Lcom/wandoujia/ripple_framework/download/DownloadInfo$Status;

    invoke-virtual {v2, v3, v4}, Lhcb;->a(Ljava/lang/String;Lcom/wandoujia/ripple_framework/download/DownloadInfo$Status;)Lcom/wandoujia/ripple_framework/download/DownloadInfo;

    move-result-object v2

    .line 459
    if-eqz v2, :cond_3

    .line 460
    sget-object v3, Lcom/wandoujia/ripple_framework/event/DownloadEvent$Type;->DOWNLOAD_STATE_CHANGE:Lcom/wandoujia/ripple_framework/event/DownloadEvent$Type;

    invoke-direct {p0, v3, v2}, Lcom/wandoujia/ripple_framework/download/DownloadManager;->a(Lcom/wandoujia/ripple_framework/event/DownloadEvent$Type;Lcom/wandoujia/ripple_framework/download/DownloadInfo;)V

    .line 461
    iget-object v2, p0, Lcom/wandoujia/ripple_framework/download/DownloadManager;->m:Lhbs;

    iget-object v0, v0, Lcom/wandoujia/ripple_framework/download/DownloadInfo;->a:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lhbs;->a(Ljava/lang/String;)V

    goto :goto_3

    .line 464
    :cond_4
    iget-object v1, p0, Lcom/wandoujia/ripple_framework/download/DownloadManager;->i:Lhcb;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_5
    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/ripple_framework/download/DownloadInfo;

    iget-object v4, v0, Lcom/wandoujia/ripple_framework/download/DownloadInfo;->b:Ljava/lang/String;

    invoke-virtual {v1, v4}, Lhcb;->c(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, v0, Lcom/wandoujia/ripple_framework/download/DownloadInfo;->b:Ljava/lang/String;

    invoke-virtual {v1, v4, v0}, Lhcb;->a(Ljava/lang/String;Lcom/wandoujia/ripple_framework/download/DownloadInfo;)V

    invoke-virtual {v1, v0}, Lhcb;->b(Lcom/wandoujia/ripple_framework/download/DownloadInfo;)V

    iget-object v0, v0, Lcom/wandoujia/ripple_framework/download/DownloadInfo;->b:Ljava/lang/String;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_6
    iget-object v0, v1, Lhcb;->f:Lhcp;

    new-instance v3, Lhcf;

    invoke-direct {v3, v1, v2}, Lhcf;-><init>(Lhcb;Ljava/util/List;)V

    iget-object v1, v0, Lhcp;->a:Landroid/os/Handler;

    new-instance v2, Lhcw;

    invoke-direct {v2, v0, p1, v3}, Lhcw;-><init>(Lhcp;Ljava/util/List;Lhdd;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_1
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 585
    invoke-static {}, Lcom/wandoujia/ripple_framework/download/DownloadManager;->a()V

    .line 586
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/download/DownloadManager;->i:Lhcb;

    iget-object v0, v0, Lhcb;->e:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    return v0
.end method

.method public final b(Ljava/lang/String;)Lcom/wandoujia/ripple_framework/download/DownloadInfo;
    .locals 1
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 580
    invoke-static {}, Lcom/wandoujia/ripple_framework/download/DownloadManager;->a()V

    .line 581
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/download/DownloadManager;->i:Lhcb;

    invoke-virtual {v0, p1}, Lhcb;->b(Ljava/lang/String;)Lcom/wandoujia/ripple_framework/download/DownloadInfo;

    move-result-object v0

    return-object v0
.end method

.method public final b(Lcom/wandoujia/ripple_framework/download/DownloadInfo;)V
    .locals 3
    .parameter

    .prologue
    .line 482
    invoke-static {}, Lcom/wandoujia/ripple_framework/download/DownloadManager;->a()V

    .line 483
    sget-object v0, Lcom/wandoujia/ripple_framework/download/DownloadManager$DownloadOperation$OpType;->RESUME:Lcom/wandoujia/ripple_framework/download/DownloadManager$DownloadOperation$OpType;

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/wandoujia/ripple_framework/download/DownloadManager;->a(Lcom/wandoujia/ripple_framework/download/DownloadManager$DownloadOperation$OpType;Lcom/wandoujia/ripple_framework/download/DownloadInfo;Lcom/wandoujia/ripple_framework/download/DownloadManager$PauseReason;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 494
    :cond_0
    :goto_0
    return-void

    .line 486
    :cond_1
    invoke-direct {p0}, Lcom/wandoujia/ripple_framework/download/DownloadManager;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 489
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/download/DownloadManager;->d:Lcta;

    iget-object v1, p1, Lcom/wandoujia/ripple_framework/download/DownloadInfo;->d:Lcom/wandoujia/download2/DownloadInfo2;

    iget-object v1, v1, Lcom/wandoujia/download2/DownloadInfo2;->a:Lcom/wandoujia/download2/DownloadRequestParam;

    invoke-virtual {v0, v1}, Lcta;->a(Lcom/wandoujia/download2/DownloadRequestParam;)V

    .line 491
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/download/DownloadManager;->i:Lhcb;

    iget-object v1, p1, Lcom/wandoujia/ripple_framework/download/DownloadInfo;->b:Ljava/lang/String;

    sget-object v2, Lcom/wandoujia/ripple_framework/download/DownloadInfo$Status;->PENDING:Lcom/wandoujia/ripple_framework/download/DownloadInfo$Status;

    invoke-virtual {v0, v1, v2}, Lhcb;->a(Ljava/lang/String;Lcom/wandoujia/ripple_framework/download/DownloadInfo$Status;)Lcom/wandoujia/ripple_framework/download/DownloadInfo;

    move-result-object v0

    .line 493
    sget-object v1, Lcom/wandoujia/ripple_framework/event/DownloadEvent$Type;->DOWNLOAD_STATE_CHANGE:Lcom/wandoujia/ripple_framework/event/DownloadEvent$Type;

    invoke-direct {p0, v1, v0}, Lcom/wandoujia/ripple_framework/download/DownloadManager;->a(Lcom/wandoujia/ripple_framework/event/DownloadEvent$Type;Lcom/wandoujia/ripple_framework/download/DownloadInfo;)V

    goto :goto_0
.end method
