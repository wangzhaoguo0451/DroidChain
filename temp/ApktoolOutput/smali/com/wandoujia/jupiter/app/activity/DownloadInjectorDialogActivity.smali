.class public Lcom/wandoujia/jupiter/app/activity/DownloadInjectorDialogActivity;
.super Lcom/wandoujia/jupiter/activity/JupiterDialogActivity;
.source "DownloadInjectorDialogActivity.java"


# instance fields
.field private a:Lcom/wandoujia/ripple_framework/model/Model;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/wandoujia/jupiter/activity/JupiterDialogActivity;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/wandoujia/jupiter/app/activity/DownloadInjectorDialogActivity;)Lcom/wandoujia/ripple_framework/model/Model;
    .locals 1
    .parameter

    .prologue
    .line 25
    iget-object v0, p0, Lcom/wandoujia/jupiter/app/activity/DownloadInjectorDialogActivity;->a:Lcom/wandoujia/ripple_framework/model/Model;

    return-object v0
.end method

.method public static a(Landroid/content/Context;Lcom/wandoujia/ripple_framework/model/Model;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 32
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/wandoujia/jupiter/app/activity/DownloadInjectorDialogActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 33
    const-string v1, "EXTRA_DOWNLOAD_INFO"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 34
    instance-of v1, p0, Landroid/app/Activity;

    if-nez v1, :cond_0

    .line 35
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 37
    :cond_0
    const/high16 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 38
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 39
    return-void
.end method


# virtual methods
.method protected createBackIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 83
    const/4 v0, 0x0

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 43
    invoke-super {p0, p1}, Lcom/wandoujia/jupiter/activity/JupiterDialogActivity;->onCreate(Landroid/os/Bundle;)V

    .line 45
    invoke-virtual {p0}, Lcom/wandoujia/jupiter/app/activity/DownloadInjectorDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "EXTRA_DOWNLOAD_INFO"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/ripple_framework/model/Model;

    iput-object v0, p0, Lcom/wandoujia/jupiter/app/activity/DownloadInjectorDialogActivity;->a:Lcom/wandoujia/ripple_framework/model/Model;

    .line 47
    const v0, 0x7f0e028c

    invoke-virtual {p0, v0}, Lcom/wandoujia/jupiter/app/activity/DownloadInjectorDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/wandoujia/jupiter/app/activity/DownloadInjectorDialogActivity;->a(Ljava/lang/String;)V

    .line 48
    const v0, 0x7f0e028b

    invoke-virtual {p0, v0}, Lcom/wandoujia/jupiter/app/activity/DownloadInjectorDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/wandoujia/jupiter/app/activity/DownloadInjectorDialogActivity;->b(Ljava/lang/String;)V

    .line 49
    const v0, 0x7f0e028d

    invoke-virtual {p0, v0}, Lcom/wandoujia/jupiter/app/activity/DownloadInjectorDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lddd;

    invoke-direct {v1, p0}, Lddd;-><init>(Lcom/wandoujia/jupiter/app/activity/DownloadInjectorDialogActivity;)V

    invoke-virtual {p0, v0, v1}, Lcom/wandoujia/jupiter/app/activity/DownloadInjectorDialogActivity;->a(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 59
    const v0, 0x7f0e028e

    invoke-virtual {p0, v0}, Lcom/wandoujia/jupiter/app/activity/DownloadInjectorDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ldde;

    invoke-direct {v1, p0}, Ldde;-><init>(Lcom/wandoujia/jupiter/app/activity/DownloadInjectorDialogActivity;)V

    invoke-virtual {p0, v0, v1}, Lcom/wandoujia/jupiter/app/activity/DownloadInjectorDialogActivity;->b(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 69
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 73
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 74
    sget-object v0, Lham;->f:Lham;

    const-string v1, "event_bus"

    invoke-virtual {v0, v1}, Lham;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhrx;

    new-instance v1, Lddt;

    iget-object v2, p0, Lcom/wandoujia/jupiter/app/activity/DownloadInjectorDialogActivity;->a:Lcom/wandoujia/ripple_framework/model/Model;

    sget-object v3, Lcom/wandoujia/ripple_framework/installer/AppTaskManager$Status;->CANCEL:Lcom/wandoujia/ripple_framework/installer/AppTaskManager$Status;

    invoke-direct {v1, v2, v3}, Lddt;-><init>(Lcom/wandoujia/ripple_framework/model/Model;Lcom/wandoujia/ripple_framework/installer/AppTaskManager$Status;)V

    invoke-virtual {v0, v1}, Lhrx;->d(Ljava/lang/Object;)V

    .line 78
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/wandoujia/jupiter/activity/JupiterDialogActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method
