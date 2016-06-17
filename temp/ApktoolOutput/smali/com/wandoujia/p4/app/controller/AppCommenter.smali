.class public final Lcom/wandoujia/p4/app/controller/AppCommenter;
.super Ljava/lang/Object;
.source "AppCommenter.java"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:J

.field public d:Ljava/lang/String;

.field public e:Lcom/wandoujia/p4/app/controller/AppCommenter$Enjoy;

.field public f:Lcom/wandoujia/entities/app/comment/Comment;

.field public final g:Landroid/content/Context;

.field public h:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Levl;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2
    .parameter

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/wandoujia/p4/app/controller/AppCommenter;->c:J

    .line 46
    iget-object v0, p0, Lcom/wandoujia/p4/app/controller/AppCommenter;->f:Lcom/wandoujia/entities/app/comment/Comment;

    if-nez v0, :cond_0

    new-instance v0, Levk;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Levk;-><init>(Lcom/wandoujia/p4/app/controller/AppCommenter;B)V

    sget-object v1, Lcom/wandoujia/base/utils/ThreadPool$Priority;->LOW:Lcom/wandoujia/base/utils/ThreadPool$Priority;

    invoke-static {v0, v1}, Lcom/wandoujia/base/utils/ThreadPool;->execute(Ljava/lang/Runnable;Lcom/wandoujia/base/utils/ThreadPool$Priority;)V

    .line 47
    :cond_0
    iput-object p1, p0, Lcom/wandoujia/p4/app/controller/AppCommenter;->g:Landroid/content/Context;

    .line 48
    return-void
.end method


# virtual methods
.method public final declared-synchronized a()V
    .locals 4

    .prologue
    .line 95
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/wandoujia/p4/app/controller/AppCommenter;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "commentContent cannot be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/wandoujia/p4/app/controller/AppCommenter;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "packageName cannot be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-wide v0, p0, Lcom/wandoujia/p4/app/controller/AppCommenter;->c:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "versionCode must be assigned"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 96
    :cond_2
    new-instance v0, Levj;

    invoke-direct {v0, p0}, Levj;-><init>(Lcom/wandoujia/p4/app/controller/AppCommenter;)V

    sget-object v1, Lcom/wandoujia/base/utils/ThreadPool$Priority;->LOW:Lcom/wandoujia/base/utils/ThreadPool$Priority;

    invoke-static {v0, v1}, Lcom/wandoujia/base/utils/ThreadPool;->execute(Ljava/lang/Runnable;Lcom/wandoujia/base/utils/ThreadPool$Priority;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 97
    monitor-exit p0

    return-void
.end method
