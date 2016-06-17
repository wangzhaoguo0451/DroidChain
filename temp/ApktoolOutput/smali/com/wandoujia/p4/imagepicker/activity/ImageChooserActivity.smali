.class public Lcom/wandoujia/p4/imagepicker/activity/ImageChooserActivity;
.super Lcom/wandoujia/ripple_framework/activity/BaseActivity;
.source "ImageChooserActivity.java"


# instance fields
.field private a:Lcom/wandoujia/p4/imagepicker/activity/ImageChooserActivity$ImageManagerTabHostFragment;

.field private b:I

.field private c:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/wandoujia/ripple_framework/activity/BaseActivity;-><init>()V

    .line 54
    const/4 v0, 0x0

    iput v0, p0, Lcom/wandoujia/p4/imagepicker/activity/ImageChooserActivity;->b:I

    .line 56
    new-instance v0, Lfxy;

    invoke-direct {v0, p0}, Lfxy;-><init>(Lcom/wandoujia/p4/imagepicker/activity/ImageChooserActivity;)V

    iput-object v0, p0, Lcom/wandoujia/p4/imagepicker/activity/ImageChooserActivity;->c:Landroid/os/Handler;

    .line 127
    return-void
.end method

.method public static synthetic a(Lcom/wandoujia/p4/imagepicker/activity/ImageChooserActivity;)Lcom/wandoujia/p4/imagepicker/activity/ImageChooserActivity$ImageManagerTabHostFragment;
    .locals 1
    .parameter

    .prologue
    .line 28
    iget-object v0, p0, Lcom/wandoujia/p4/imagepicker/activity/ImageChooserActivity;->a:Lcom/wandoujia/p4/imagepicker/activity/ImageChooserActivity$ImageManagerTabHostFragment;

    return-object v0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, -0x1

    .line 121
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    if-ne p2, v1, :cond_0

    .line 122
    invoke-virtual {p0, v1, p3}, Lcom/wandoujia/p4/imagepicker/activity/ImageChooserActivity;->setResult(ILandroid/content/Intent;)V

    .line 123
    invoke-virtual {p0}, Lcom/wandoujia/p4/imagepicker/activity/ImageChooserActivity;->finish()V

    .line 125
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    .line 76
    invoke-super {p0, p1}, Lcom/wandoujia/ripple_framework/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 78
    invoke-virtual {p0}, Lcom/wandoujia/p4/imagepicker/activity/ImageChooserActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "default_tab_pos"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/wandoujia/p4/imagepicker/activity/ImageChooserActivity;->b:I

    .line 79
    :cond_0
    iget-object v0, p0, Lcom/wandoujia/p4/imagepicker/activity/ImageChooserActivity;->a:Lcom/wandoujia/p4/imagepicker/activity/ImageChooserActivity$ImageManagerTabHostFragment;

    if-nez v0, :cond_1

    new-instance v0, Lcom/wandoujia/p4/imagepicker/activity/ImageChooserActivity$ImageManagerTabHostFragment;

    invoke-direct {v0}, Lcom/wandoujia/p4/imagepicker/activity/ImageChooserActivity$ImageManagerTabHostFragment;-><init>()V

    iput-object v0, p0, Lcom/wandoujia/p4/imagepicker/activity/ImageChooserActivity;->a:Lcom/wandoujia/p4/imagepicker/activity/ImageChooserActivity$ImageManagerTabHostFragment;

    iget-object v0, p0, Lcom/wandoujia/p4/imagepicker/activity/ImageChooserActivity;->a:Lcom/wandoujia/p4/imagepicker/activity/ImageChooserActivity$ImageManagerTabHostFragment;

    iget v1, p0, Lcom/wandoujia/p4/imagepicker/activity/ImageChooserActivity;->b:I

    iput v1, v0, Lcom/wandoujia/p4/imagepicker/activity/ImageChooserActivity$ImageManagerTabHostFragment;->a:I

    iget-object v0, p0, Lcom/wandoujia/p4/imagepicker/activity/ImageChooserActivity;->a:Lcom/wandoujia/p4/imagepicker/activity/ImageChooserActivity$ImageManagerTabHostFragment;

    new-instance v1, Lfxz;

    invoke-direct {v1, p0}, Lfxz;-><init>(Lcom/wandoujia/p4/imagepicker/activity/ImageChooserActivity;)V

    iput-object v1, v0, Lcom/wandoujia/p4/fragment/TabHostFragment;->c:Lhw;

    invoke-virtual {p0}, Lcom/wandoujia/p4/imagepicker/activity/ImageChooserActivity;->getSupportFragmentManager()Ls;

    move-result-object v0

    invoke-virtual {v0}, Ls;->a()Lag;

    move-result-object v0

    const v1, 0x1020002

    iget-object v2, p0, Lcom/wandoujia/p4/imagepicker/activity/ImageChooserActivity;->a:Lcom/wandoujia/p4/imagepicker/activity/ImageChooserActivity$ImageManagerTabHostFragment;

    invoke-virtual {v0, v1, v2}, Lag;->b(ILandroid/support/v4/app/Fragment;)Lag;

    move-result-object v0

    invoke-virtual {v0}, Lag;->a()I

    .line 80
    :cond_1
    const v0, 0x7f0e037a

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/imagepicker/activity/ImageChooserActivity;->setTitle(I)V

    .line 81
    sget-object v0, Ldca;->a:Ldca;

    iget-object v0, v0, Ldca;->c:Lfpk;

    iget-object v1, p0, Lcom/wandoujia/p4/imagepicker/activity/ImageChooserActivity;->c:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lfpk;->a(Landroid/os/Handler;)V

    .line 82
    sget-object v0, Ldca;->a:Ldca;

    iget-object v0, v0, Ldca;->c:Lfpk;

    invoke-virtual {v0}, Lfpk;->c()V

    .line 83
    return-void
.end method
