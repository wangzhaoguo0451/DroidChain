.class public Lcom/wandoujia/jupiter/app/activity/IncompatibleDialogActivity;
.super Lcom/wandoujia/jupiter/activity/JupiterDialogActivity;
.source "IncompatibleDialogActivity.java"


# instance fields
.field private a:Lcom/wandoujia/ripple_framework/installer/model/IncompatibleAppInfo;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/wandoujia/jupiter/activity/JupiterDialogActivity;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/wandoujia/jupiter/app/activity/IncompatibleDialogActivity;)Lcom/wandoujia/ripple_framework/installer/model/IncompatibleAppInfo;
    .locals 1
    .parameter

    .prologue
    .line 24
    iget-object v0, p0, Lcom/wandoujia/jupiter/app/activity/IncompatibleDialogActivity;->a:Lcom/wandoujia/ripple_framework/installer/model/IncompatibleAppInfo;

    return-object v0
.end method

.method public static a(Landroid/content/Context;Lcom/wandoujia/ripple_framework/installer/model/IncompatibleAppInfo;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 31
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/wandoujia/jupiter/app/activity/IncompatibleDialogActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 32
    const-string v1, "EXTRA_INCOMPATIBLE_APP_INFO"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 33
    instance-of v1, p0, Landroid/app/Activity;

    if-nez v1, :cond_0

    .line 34
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 36
    :cond_0
    const/high16 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 37
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 38
    return-void
.end method


# virtual methods
.method protected createBackIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 95
    const/4 v0, 0x0

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    .line 42
    invoke-super {p0, p1}, Lcom/wandoujia/jupiter/activity/JupiterDialogActivity;->onCreate(Landroid/os/Bundle;)V

    .line 44
    invoke-virtual {p0}, Lcom/wandoujia/jupiter/app/activity/IncompatibleDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_0

    .line 45
    invoke-virtual {p0}, Lcom/wandoujia/jupiter/app/activity/IncompatibleDialogActivity;->finish()V

    .line 81
    :goto_0
    return-void

    .line 48
    :cond_0
    invoke-virtual {p0}, Lcom/wandoujia/jupiter/app/activity/IncompatibleDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "EXTRA_INCOMPATIBLE_APP_INFO"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/ripple_framework/installer/model/IncompatibleAppInfo;

    iput-object v0, p0, Lcom/wandoujia/jupiter/app/activity/IncompatibleDialogActivity;->a:Lcom/wandoujia/ripple_framework/installer/model/IncompatibleAppInfo;

    .line 49
    iget-object v0, p0, Lcom/wandoujia/jupiter/app/activity/IncompatibleDialogActivity;->a:Lcom/wandoujia/ripple_framework/installer/model/IncompatibleAppInfo;

    if-nez v0, :cond_1

    .line 50
    invoke-virtual {p0}, Lcom/wandoujia/jupiter/app/activity/IncompatibleDialogActivity;->finish()V

    goto :goto_0

    .line 54
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 55
    iget-object v0, p0, Lcom/wandoujia/jupiter/app/activity/IncompatibleDialogActivity;->a:Lcom/wandoujia/ripple_framework/installer/model/IncompatibleAppInfo;

    iget-object v0, v0, Lcom/wandoujia/ripple_framework/installer/model/IncompatibleAppInfo;->incompatibleDetail:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 56
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    const/16 v0, 0xa

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 59
    :cond_2
    const v0, 0x7f0e0130

    invoke-virtual {p0, v0}, Lcom/wandoujia/jupiter/app/activity/IncompatibleDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    const v0, 0x7f0e0131

    invoke-virtual {p0, v0}, Lcom/wandoujia/jupiter/app/activity/IncompatibleDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/wandoujia/jupiter/app/activity/IncompatibleDialogActivity;->a(Ljava/lang/String;)V

    .line 62
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/wandoujia/jupiter/app/activity/IncompatibleDialogActivity;->b(Ljava/lang/String;)V

    .line 63
    const v0, 0x7f0e0162

    invoke-virtual {p0, v0}, Lcom/wandoujia/jupiter/app/activity/IncompatibleDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lddf;

    invoke-direct {v1, p0}, Lddf;-><init>(Lcom/wandoujia/jupiter/app/activity/IncompatibleDialogActivity;)V

    invoke-virtual {p0, v0, v1}, Lcom/wandoujia/jupiter/app/activity/IncompatibleDialogActivity;->a(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 72
    const v0, 0x7f0e0386

    invoke-virtual {p0, v0}, Lcom/wandoujia/jupiter/app/activity/IncompatibleDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lddg;

    invoke-direct {v1, p0}, Lddg;-><init>(Lcom/wandoujia/jupiter/app/activity/IncompatibleDialogActivity;)V

    invoke-virtual {p0, v0, v1}, Lcom/wandoujia/jupiter/app/activity/IncompatibleDialogActivity;->b(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 85
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 86
    sget-object v0, Lham;->f:Lham;

    const-string v1, "event_bus"

    invoke-virtual {v0, v1}, Lham;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhrx;

    new-instance v1, Lddu;

    iget-object v2, p0, Lcom/wandoujia/jupiter/app/activity/IncompatibleDialogActivity;->a:Lcom/wandoujia/ripple_framework/installer/model/IncompatibleAppInfo;

    iget-object v2, v2, Lcom/wandoujia/ripple_framework/installer/model/IncompatibleAppInfo;->packageName:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lddu;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Lhrx;->d(Ljava/lang/Object;)V

    .line 90
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/wandoujia/jupiter/activity/JupiterDialogActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method
