.class public Lcom/wandoujia/p4/account/authenticator/AccountSyncService;
.super Landroid/app/Service;
.source "AccountSyncService.java"


# instance fields
.field private a:Letg;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/wandoujia/p4/account/authenticator/AccountSyncService;->a:Letg;

    .line 31
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2
    .parameter

    .prologue
    .line 25
    iget-object v0, p0, Lcom/wandoujia/p4/account/authenticator/AccountSyncService;->a:Letg;

    if-nez v0, :cond_0

    .line 26
    new-instance v0, Letg;

    invoke-virtual {p0}, Lcom/wandoujia/p4/account/authenticator/AccountSyncService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Letg;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/wandoujia/p4/account/authenticator/AccountSyncService;->a:Letg;

    .line 28
    :cond_0
    iget-object v0, p0, Lcom/wandoujia/p4/account/authenticator/AccountSyncService;->a:Letg;

    invoke-virtual {v0}, Letg;->getSyncAdapterBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method
