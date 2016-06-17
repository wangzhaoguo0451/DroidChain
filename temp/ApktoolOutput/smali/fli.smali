.class final Lfli;
.super Ljava/lang/Object;
.source "AbsCommunityPoster.java"

# interfaces
.implements Lfmz;


# instance fields
.field final synthetic a:Lflh;


# direct methods
.method constructor <init>(Lflh;)V
    .locals 0
    .parameter

    .prologue
    .line 47
    iput-object p1, p0, Lfli;->a:Lflh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 62
    const-string v0, "ugc"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "load picture finish "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " failed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/wandoujia/base/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 63
    if-lez p1, :cond_1

    .line 64
    iget-object v0, p0, Lfli;->a:Lflh;

    iget-object v0, v0, Lflh;->d:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lfli;->a:Lflh;

    iget-object v0, v0, Lflh;->d:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->cancel()V

    .line 66
    iget-object v0, p0, Lfli;->a:Lflh;

    const/4 v1, 0x0

    iput-object v1, v0, Lflh;->d:Landroid/app/ProgressDialog;

    .line 68
    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lflj;

    invoke-direct {v1, p0, p1}, Lflj;-><init>(Lfli;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 80
    :goto_0
    return-void

    .line 77
    :cond_1
    iget-object v0, p0, Lfli;->a:Lflh;

    invoke-virtual {v0, v3, v3}, Lflh;->a(ZZ)V

    .line 78
    iget-object v0, p0, Lfli;->a:Lflh;

    invoke-virtual {v0}, Lflh;->a()V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 57
    const-string v0, "ugc"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "load picture failed errorMsg "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/wandoujia/base/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 58
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 51
    const-string v0, "ugc"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "load picture success path "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " storeKey "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/wandoujia/base/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 52
    iget-object v0, p0, Lfli;->a:Lflh;

    iget-object v0, v0, Lflh;->f:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    return-void
.end method
