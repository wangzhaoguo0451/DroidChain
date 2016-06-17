.class public final Lety;
.super Ljava/lang/Object;
.source "AccountStatusListener.java"

# interfaces
.implements Lcom/wandoujia/account/listener/IAccountListener;


# instance fields
.field private final a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lety;->a:Landroid/content/Context;

    .line 20
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    .line 33
    iget-object v0, p0, Lety;->a:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "pheonix.intent.action.REGISTER_SUCCESS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 35
    return-void
.end method

.method public final a(Lcom/wandoujia/account/listener/IAccountListener$LoginType;)V
    .locals 2
    .parameter

    .prologue
    .line 24
    new-instance v0, Landroid/content/Intent;

    const-string v1, "pheonix.intent.action.LOGIN_SUCCESS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 25
    const-string v1, "pheonix.intent.action.ACCOUNT_LOGIN_TYPE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 26
    iget-object v1, p0, Lety;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 28
    return-void
.end method

.method public final a(Z)V
    .locals 1
    .parameter

    .prologue
    .line 40
    invoke-static {}, Letz;->a()Letz;

    move-result-object v0

    invoke-virtual {v0, p1}, Letz;->a(Z)V

    .line 44
    :try_start_0
    invoke-static {}, Lesb;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    .line 45
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieManager;->removeAllCookie()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
