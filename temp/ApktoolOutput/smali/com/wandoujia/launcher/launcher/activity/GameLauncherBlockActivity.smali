.class public Lcom/wandoujia/launcher/launcher/activity/GameLauncherBlockActivity;
.super Lcom/wandoujia/launcher_base/activity/LauncherBaseActivity;
.source "GameLauncherBlockActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/wandoujia/launcher_base/activity/LauncherBaseActivity;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/wandoujia/launcher/launcher/models/GiftMessageModel;Lcom/wandoujia/launcher/launcher/models/SimpleAppInfo;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 24
    if-nez p0, :cond_0

    .line 35
    :goto_0
    return-void

    .line 28
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/wandoujia/launcher/launcher/activity/GameLauncherBlockActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 29
    const-string v1, "extra_arg_app"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 30
    const-string v1, "extra_arg_gift"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 31
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    if-ne p0, v1, :cond_1

    .line 32
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 34
    :cond_1
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter

    .prologue
    const/high16 v2, 0x800

    const/high16 v1, 0x400

    .line 39
    invoke-super {p0, p1}, Lcom/wandoujia/launcher_base/activity/LauncherBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 40
    const/16 v0, 0x13

    invoke-static {v0}, Lcom/wandoujia/base/utils/SystemUtil;->aboveApiLevel(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41
    invoke-virtual {p0}, Lcom/wandoujia/launcher/launcher/activity/GameLauncherBlockActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 45
    invoke-virtual {p0}, Lcom/wandoujia/launcher/launcher/activity/GameLauncherBlockActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Landroid/view/Window;->setFlags(II)V

    .line 49
    :cond_0
    sget v0, Lcom/wandoujia/game_launcher/lib/R$layout;->content_frame:I

    invoke-virtual {p0, v0}, Lcom/wandoujia/launcher/launcher/activity/GameLauncherBlockActivity;->setContentView(I)V

    .line 51
    new-instance v0, Lcom/wandoujia/launcher/launcher/fragments/GameLauncherBlockFragment;

    invoke-direct {v0}, Lcom/wandoujia/launcher/launcher/fragments/GameLauncherBlockFragment;-><init>()V

    .line 52
    invoke-virtual {p0}, Lcom/wandoujia/launcher/launcher/activity/GameLauncherBlockActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 53
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 54
    const-string v2, "extra_arg_app"

    invoke-virtual {p0}, Lcom/wandoujia/launcher/launcher/activity/GameLauncherBlockActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "extra_arg_app"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 56
    const-string v2, "extra_arg_gift"

    invoke-virtual {p0}, Lcom/wandoujia/launcher/launcher/activity/GameLauncherBlockActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "extra_arg_gift"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 58
    invoke-virtual {v0, v1}, Lcom/wandoujia/launcher/launcher/fragments/GameLauncherBlockFragment;->setArguments(Landroid/os/Bundle;)V

    .line 60
    :cond_1
    invoke-virtual {p0}, Lcom/wandoujia/launcher/launcher/activity/GameLauncherBlockActivity;->getSupportFragmentManager()Ls;

    move-result-object v1

    invoke-virtual {v1}, Ls;->a()Lag;

    move-result-object v1

    sget v2, Lcom/wandoujia/game_launcher/lib/R$id;->content_frame:I

    invoke-virtual {v1, v2, v0}, Lag;->b(ILandroid/support/v4/app/Fragment;)Lag;

    move-result-object v0

    invoke-virtual {v0}, Lag;->a()I

    .line 63
    return-void
.end method
