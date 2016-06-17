.class public final Lhqy;
.super Ljava/lang/Object;
.source "Update.java"


# instance fields
.field synthetic a:Lcom/wandoujia/update/RemoteUpdateService;


# direct methods
.method public constructor <init>(Lcom/wandoujia/update/RemoteUpdateService;)V
    .locals 0
    .parameter

    .prologue
    .line 116
    iput-object p1, p0, Lhqy;->a:Lcom/wandoujia/update/RemoteUpdateService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    .line 137
    invoke-static {}, Lcom/wandoujia/update/RemoteUpdateService;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onCheckUpdateFailed()"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/wandoujia/base/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 138
    iget-object v0, p0, Lhqy;->a:Lcom/wandoujia/update/RemoteUpdateService;

    invoke-static {v0}, Lcom/wandoujia/update/RemoteUpdateService;->i(Lcom/wandoujia/update/RemoteUpdateService;)Lcom/wandoujia/update/aidl/IUpdateCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 140
    :try_start_0
    iget-object v0, p0, Lhqy;->a:Lcom/wandoujia/update/RemoteUpdateService;

    invoke-static {v0}, Lcom/wandoujia/update/RemoteUpdateService;->i(Lcom/wandoujia/update/RemoteUpdateService;)Lcom/wandoujia/update/aidl/IUpdateCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/wandoujia/update/aidl/IUpdateCallback;->a()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 142
    :cond_0
    :goto_0
    iget-object v0, p0, Lhqy;->a:Lcom/wandoujia/update/RemoteUpdateService;

    invoke-static {v0}, Lcom/wandoujia/update/RemoteUpdateService;->k(Lcom/wandoujia/update/RemoteUpdateService;)V

    .line 146
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
