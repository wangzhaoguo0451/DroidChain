.class public Lcom/wandoujia/p4/app/detail/activity/AppCommentCaptchaActivity;
.super Landroid/app/Activity;
.source "AppCommentCaptchaActivity.java"

# interfaces
.implements Levg;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Landroid/widget/ImageView;

.field private c:Lhoj;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/wandoujia/p4/app/detail/activity/AppCommentCaptchaActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 20
    iget-object v0, p0, Lcom/wandoujia/p4/app/detail/activity/AppCommentCaptchaActivity;->a:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic b(Lcom/wandoujia/p4/app/detail/activity/AppCommentCaptchaActivity;)Landroid/widget/ImageView;
    .locals 1
    .parameter

    .prologue
    .line 20
    iget-object v0, p0, Lcom/wandoujia/p4/app/detail/activity/AppCommentCaptchaActivity;->b:Landroid/widget/ImageView;

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter

    .prologue
    .line 90
    new-instance v0, Levq;

    invoke-direct {v0, p0, p1}, Levq;-><init>(Lcom/wandoujia/p4/app/detail/activity/AppCommentCaptchaActivity;Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/app/detail/activity/AppCommentCaptchaActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 99
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter

    .prologue
    .line 28
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 29
    invoke-virtual {p0}, Lcom/wandoujia/p4/app/detail/activity/AppCommentCaptchaActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 30
    if-eqz v0, :cond_0

    .line 31
    const-string v1, "pn"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/p4/app/detail/activity/AppCommentCaptchaActivity;->a:Ljava/lang/String;

    .line 32
    iget-object v0, p0, Lcom/wandoujia/p4/app/detail/activity/AppCommentCaptchaActivity;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 33
    const v0, 0x7f030236

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/app/detail/activity/AppCommentCaptchaActivity;->setContentView(I)V

    .line 34
    new-instance v1, Lhoq;

    invoke-direct {v1, p0}, Lhoq;-><init>(Landroid/content/Context;)V

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f030239

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    const v0, 0x7f0c0495

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/wandoujia/p4/app/detail/activity/AppCommentCaptchaActivity;->b:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/wandoujia/p4/app/detail/activity/AppCommentCaptchaActivity;->b:Landroid/widget/ImageView;

    new-instance v3, Levm;

    invoke-direct {v3, p0}, Levm;-><init>(Lcom/wandoujia/p4/app/detail/activity/AppCommentCaptchaActivity;)V

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0c0496

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    const v3, 0x7f0e05e8

    invoke-virtual {v1, v3}, Lhoq;->a(I)Lhoq;

    invoke-virtual {v1, v2}, Lhoq;->a(Landroid/view/View;)Lhoq;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lhoq;->a(Z)Lhoq;

    const v2, 0x7f0e026a

    new-instance v3, Levn;

    invoke-direct {v3, p0, v0}, Levn;-><init>(Lcom/wandoujia/p4/app/detail/activity/AppCommentCaptchaActivity;Landroid/widget/EditText;)V

    invoke-virtual {v1, v2, v3}, Lhoq;->a(ILandroid/content/DialogInterface$OnClickListener;)Lhoq;

    const v0, 0x7f0e0162

    new-instance v2, Levo;

    invoke-direct {v2, p0}, Levo;-><init>(Lcom/wandoujia/p4/app/detail/activity/AppCommentCaptchaActivity;)V

    invoke-virtual {v1, v0, v2}, Lhoq;->b(ILandroid/content/DialogInterface$OnClickListener;)Lhoq;

    invoke-virtual {v1}, Lhoq;->b()Lhoj;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/p4/app/detail/activity/AppCommentCaptchaActivity;->c:Lhoj;

    iget-object v0, p0, Lcom/wandoujia/p4/app/detail/activity/AppCommentCaptchaActivity;->c:Lhoj;

    new-instance v1, Levp;

    invoke-direct {v1, p0}, Levp;-><init>(Lcom/wandoujia/p4/app/detail/activity/AppCommentCaptchaActivity;)V

    invoke-virtual {v0, v1}, Lhoj;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-static {}, Leve;->a()Leve;

    invoke-static {p0}, Leve;->a(Levg;)V

    .line 37
    :cond_0
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 103
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 104
    iget-object v0, p0, Lcom/wandoujia/p4/app/detail/activity/AppCommentCaptchaActivity;->c:Lhoj;

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/wandoujia/p4/app/detail/activity/AppCommentCaptchaActivity;->c:Lhoj;

    invoke-virtual {v0}, Lhoj;->dismiss()V

    .line 106
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/wandoujia/p4/app/detail/activity/AppCommentCaptchaActivity;->c:Lhoj;

    .line 108
    :cond_0
    return-void
.end method
