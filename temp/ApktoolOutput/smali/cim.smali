.class final Lcim;
.super Ljava/lang/Object;
.source "AccountCore.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcii;


# direct methods
.method constructor <init>(Lcii;)V
    .locals 0
    .parameter

    .prologue
    .line 219
    iput-object p1, p0, Lcim;->a:Lcii;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 222
    iget-object v0, p0, Lcim;->a:Lcii;

    iget-object v1, v0, Lcii;->i:Ljava/util/List;

    monitor-enter v1

    .line 223
    :try_start_0
    iget-object v0, p0, Lcim;->a:Lcii;

    iget-object v0, v0, Lcii;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_0

    .line 229
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method
