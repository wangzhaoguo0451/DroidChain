.class public Lcom/wandoujia/p4/app_launcher/activity/CleanPopupActivity;
.super Lcom/wandoujia/jupiter/activity/JupiterDialogActivity;
.source "CleanPopupActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/wandoujia/jupiter/activity/JupiterDialogActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected createBackIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x0

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 21
    invoke-super {p0, p1}, Lcom/wandoujia/jupiter/activity/JupiterDialogActivity;->onCreate(Landroid/os/Bundle;)V

    .line 23
    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getAppContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0e0175

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/app_launcher/activity/CleanPopupActivity;->a(Ljava/lang/String;)V

    .line 24
    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getAppContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0e016f

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/app_launcher/activity/CleanPopupActivity;->b(Ljava/lang/String;)V

    .line 26
    const v0, 0x7f0e016e

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/app_launcher/activity/CleanPopupActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lexs;

    invoke-direct {v1, p0}, Lexs;-><init>(Lcom/wandoujia/p4/app_launcher/activity/CleanPopupActivity;)V

    invoke-virtual {p0, v0, v1}, Lcom/wandoujia/p4/app_launcher/activity/CleanPopupActivity;->b(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 34
    return-void
.end method
