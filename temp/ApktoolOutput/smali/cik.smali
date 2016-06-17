.class final Lcik;
.super Ljava/lang/Object;
.source "AccountCore.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/wandoujia/account/listener/IAccountListener$LoginType;

.field private synthetic b:Lcii;


# direct methods
.method constructor <init>(Lcii;Lcom/wandoujia/account/listener/IAccountListener$LoginType;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 187
    iput-object p1, p0, Lcik;->b:Lcii;

    iput-object p2, p0, Lcik;->a:Lcom/wandoujia/account/listener/IAccountListener$LoginType;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 190
    iget-object v0, p0, Lcik;->b:Lcii;

    iget-object v1, v0, Lcii;->i:Ljava/util/List;

    monitor-enter v1

    .line 191
    :try_start_0
    iget-object v0, p0, Lcik;->b:Lcii;

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

    .line 193
    if-eqz v0, :cond_0

    .line 194
    iget-object v3, p0, Lcik;->a:Lcom/wandoujia/account/listener/IAccountListener$LoginType;

    invoke-interface {v0, v3}, Lcom/wandoujia/account/listener/IAccountListener;->a(Lcom/wandoujia/account/listener/IAccountListener$LoginType;)V

    goto :goto_0

    .line 197
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
