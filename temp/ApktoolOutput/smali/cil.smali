.class final Lcil;
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
    .line 203
    iput-object p1, p0, Lcil;->a:Lcii;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 206
    iget-object v0, p0, Lcil;->a:Lcii;

    iget-object v1, v0, Lcii;->i:Ljava/util/List;

    monitor-enter v1

    .line 207
    :try_start_0
    iget-object v0, p0, Lcil;->a:Lcii;

    iget-object v0, v0, Lcii;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/account/listener/IAccountListener;

    .line 209
    if-eqz v0, :cond_0

    .line 210
    invoke-interface {v0}, Lcom/wandoujia/account/listener/IAccountListener;->a()V

    goto :goto_0

    .line 213
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method
