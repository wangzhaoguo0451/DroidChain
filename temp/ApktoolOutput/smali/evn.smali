.class public final Levn;
.super Ljava/lang/Object;
.source "AppCommentCaptchaActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Landroid/widget/EditText;

.field private synthetic b:Lcom/wandoujia/p4/app/detail/activity/AppCommentCaptchaActivity;


# direct methods
.method public constructor <init>(Lcom/wandoujia/p4/app/detail/activity/AppCommentCaptchaActivity;Landroid/widget/EditText;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 55
    iput-object p1, p0, Levn;->b:Lcom/wandoujia/p4/app/detail/activity/AppCommentCaptchaActivity;

    iput-object p2, p0, Levn;->a:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 59
    iget-object v0, p0, Levn;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 60
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 61
    invoke-static {}, Leve;->a()Leve;

    move-result-object v0

    iget-object v2, p0, Levn;->b:Lcom/wandoujia/p4/app/detail/activity/AppCommentCaptchaActivity;

    invoke-static {v2}, Lcom/wandoujia/p4/app/detail/activity/AppCommentCaptchaActivity;->a(Lcom/wandoujia/p4/app/detail/activity/AppCommentCaptchaActivity;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, v0, Leve;->a:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/app/controller/AppCommenter;

    if-eqz v0, :cond_0

    iput-object v1, v0, Lcom/wandoujia/p4/app/controller/AppCommenter;->d:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/wandoujia/p4/app/controller/AppCommenter;->a()V

    .line 62
    :cond_0
    iget-object v0, p0, Levn;->b:Lcom/wandoujia/p4/app/detail/activity/AppCommentCaptchaActivity;

    invoke-virtual {v0}, Lcom/wandoujia/p4/app/detail/activity/AppCommentCaptchaActivity;->finish()V

    .line 67
    :goto_0
    return-void

    .line 64
    :cond_1
    iget-object v0, p0, Levn;->b:Lcom/wandoujia/p4/app/detail/activity/AppCommentCaptchaActivity;

    const v1, 0x7f0e05e8

    sget v2, Ldxa;->b:I

    int-to-long v2, v2

    invoke-static {v0, v1, v2, v3}, Ldxa;->a(Landroid/content/Context;IJ)Ldxa;

    move-result-object v0

    invoke-virtual {v0}, Ldxa;->a()V

    goto :goto_0
.end method
