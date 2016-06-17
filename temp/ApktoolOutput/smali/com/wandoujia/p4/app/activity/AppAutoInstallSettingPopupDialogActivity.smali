.class public Lcom/wandoujia/p4/app/activity/AppAutoInstallSettingPopupDialogActivity;
.super Landroid/app/Activity;
.source "AppAutoInstallSettingPopupDialogActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 16
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 17
    const v0, 0x7f03008e

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/app/activity/AppAutoInstallSettingPopupDialogActivity;->setContentView(I)V

    .line 18
    const v0, 0x7f0c0002

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/app/activity/AppAutoInstallSettingPopupDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Levb;

    invoke-direct {v1, p0}, Levb;-><init>(Lcom/wandoujia/p4/app/activity/AppAutoInstallSettingPopupDialogActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 24
    return-void
.end method
