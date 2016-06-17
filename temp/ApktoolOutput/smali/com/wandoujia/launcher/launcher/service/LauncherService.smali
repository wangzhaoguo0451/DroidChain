.class public Lcom/wandoujia/launcher/launcher/service/LauncherService;
.super Landroid/app/Service;
.source "LauncherService.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter

    .prologue
    .line 21
    const/4 v0, 0x0

    return-object v0
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 26
    if-nez p1, :cond_1

    .line 30
    :cond_0
    :goto_0
    return v3

    .line 29
    :cond_1
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "launcher.intent.action.CREATE_SHORTCUT"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "launcher.intent.extra.CREATE_ALWARYS"

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {v2}, Lg;->d(Z)V

    :cond_2
    new-instance v0, Lebq;

    invoke-direct {v0, p0}, Lebq;-><init>(Lcom/wandoujia/launcher/launcher/service/LauncherService;)V

    invoke-static {v0}, Ledn;->a(Leds;)V

    goto :goto_0

    :cond_3
    const-string v0, "launcher.intent.action.LAUNCH_GL"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    goto :goto_0
.end method
