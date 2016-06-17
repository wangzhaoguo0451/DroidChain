.class public Lcom/wandoujia/jupiter/activity/AppAutoInstallHintDialogActivity;
.super Landroid/app/Activity;
.source "AppAutoInstallHintDialogActivity.java"


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

    .line 18
    const v0, 0x7f03008c

    invoke-virtual {p0, v0}, Lcom/wandoujia/jupiter/activity/AppAutoInstallHintDialogActivity;->setContentView(I)V

    .line 20
    const v0, 0x7f0c023b

    invoke-virtual {p0, v0}, Lcom/wandoujia/jupiter/activity/AppAutoInstallHintDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/jupiter/view/AutoInstallCardView;

    .line 22
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/wandoujia/jupiter/view/AutoInstallCardView;->setIsFromCard(Z)V

    .line 23
    new-instance v1, Ldce;

    invoke-direct {v1, p0}, Ldce;-><init>(Lcom/wandoujia/jupiter/activity/AppAutoInstallHintDialogActivity;)V

    invoke-virtual {v0, v1}, Lcom/wandoujia/jupiter/view/AutoInstallCardView;->setListener(Ldww;)V

    .line 29
    return-void
.end method
