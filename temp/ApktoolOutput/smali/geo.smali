.class public final Lgeo;
.super Ljava/lang/Object;
.source "VideoProviderManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Landroid/content/Context;

.field private synthetic b:Lcom/wandoujia/p4/video/manager/VideoProviderManager;


# direct methods
.method public constructor <init>(Lcom/wandoujia/p4/video/manager/VideoProviderManager;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 566
    iput-object p1, p0, Lgeo;->b:Lcom/wandoujia/p4/video/manager/VideoProviderManager;

    iput-object p2, p0, Lgeo;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 569
    iget-object v0, p0, Lgeo;->b:Lcom/wandoujia/p4/video/manager/VideoProviderManager;

    iget-object v1, p0, Lgeo;->a:Landroid/content/Context;

    iget-object v2, v0, Lcom/wandoujia/p4/video/manager/VideoProviderManager;->e:Lcom/wandoujia/update/toolkit/UpdateClient;

    if-nez v2, :cond_0

    new-instance v2, Lcom/wandoujia/update/toolkit/UpdateClient;

    invoke-direct {v2}, Lcom/wandoujia/update/toolkit/UpdateClient;-><init>()V

    iput-object v2, v0, Lcom/wandoujia/p4/video/manager/VideoProviderManager;->e:Lcom/wandoujia/update/toolkit/UpdateClient;

    :cond_0
    iget-object v0, v0, Lcom/wandoujia/p4/video/manager/VideoProviderManager;->e:Lcom/wandoujia/update/toolkit/UpdateClient;

    invoke-static {}, Lcom/wandoujia/jupiter/JupiterApplication;->d()Lcom/wandoujia/jupiter/JupiterApplication;

    move-result-object v2

    iget-object v2, v2, Lcom/wandoujia/update/UpdateApplication;->c:Lcom/wandoujia/update/LocalUpdateService$UpdateParams;

    invoke-virtual {v0, v1, v2}, Lcom/wandoujia/update/toolkit/UpdateClient;->a(Landroid/content/Context;Lcom/wandoujia/update/LocalUpdateService$UpdateParams;)V

    .line 570
    return-void
.end method
