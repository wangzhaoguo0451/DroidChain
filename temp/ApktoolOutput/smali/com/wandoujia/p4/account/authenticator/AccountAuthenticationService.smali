.class public Lcom/wandoujia/p4/account/authenticator/AccountAuthenticationService;
.super Landroid/app/Service;
.source "AccountAuthenticationService.java"


# instance fields
.field private a:Landroid/accounts/AbstractAccountAuthenticator;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter

    .prologue
    .line 20
    iget-object v0, p0, Lcom/wandoujia/p4/account/authenticator/AccountAuthenticationService;->a:Landroid/accounts/AbstractAccountAuthenticator;

    invoke-virtual {v0}, Landroid/accounts/AbstractAccountAuthenticator;->getIBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public onCreate()V
    .locals 1

    .prologue
    .line 14
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 15
    new-instance v0, Lete;

    invoke-direct {v0, p0}, Lete;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/wandoujia/p4/account/authenticator/AccountAuthenticationService;->a:Landroid/accounts/AbstractAccountAuthenticator;

    .line 16
    return-void
.end method
