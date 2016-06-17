.class public final Levw;
.super Ljava/lang/Object;
.source "SendCommentActivity.java"

# interfaces
.implements Lcom/wandoujia/mvc/Action;


# instance fields
.field private synthetic a:Lcom/wandoujia/p4/app/detail/activity/SendCommentActivity;


# direct methods
.method public constructor <init>(Lcom/wandoujia/p4/app/detail/activity/SendCommentActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 68
    iput-object p1, p0, Levw;->a:Lcom/wandoujia/p4/app/detail/activity/SendCommentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final execute()V
    .locals 4

    .prologue
    .line 71
    iget-object v0, p0, Levw;->a:Lcom/wandoujia/p4/app/detail/activity/SendCommentActivity;

    invoke-static {v0}, Lcom/wandoujia/p4/app/detail/activity/SendCommentActivity;->a(Lcom/wandoujia/p4/app/detail/activity/SendCommentActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Levw;->a:Lcom/wandoujia/p4/app/detail/activity/SendCommentActivity;

    const v1, 0x7f0e0180

    sget v2, Ldxa;->b:I

    int-to-long v2, v2

    invoke-static {v0, v1, v2, v3}, Ldxa;->a(Landroid/content/Context;IJ)Ldxa;

    move-result-object v0

    invoke-virtual {v0}, Ldxa;->a()V

    .line 95
    :goto_0
    return-void

    .line 76
    :cond_0
    new-instance v1, Lcom/wandoujia/p4/app/detail/activity/SendCommentActivity$MockComment;

    invoke-direct {v1}, Lcom/wandoujia/p4/app/detail/activity/SendCommentActivity$MockComment;-><init>()V

    .line 78
    iget-object v0, p0, Levw;->a:Lcom/wandoujia/p4/app/detail/activity/SendCommentActivity;

    invoke-static {v0}, Lcom/wandoujia/p4/app/detail/activity/SendCommentActivity;->b(Lcom/wandoujia/p4/app/detail/activity/SendCommentActivity;)Ljava/lang/Boolean;

    move-result-object v0

    if-nez v0, :cond_2

    .line 79
    sget-object v0, Lcom/wandoujia/p4/app/controller/AppCommenter$Enjoy;->UNKNOWN:Lcom/wandoujia/p4/app/controller/AppCommenter$Enjoy;

    .line 83
    :goto_1
    iget-object v2, p0, Levw;->a:Lcom/wandoujia/p4/app/detail/activity/SendCommentActivity;

    invoke-static {v2}, Lcom/wandoujia/p4/app/detail/activity/SendCommentActivity;->a(Lcom/wandoujia/p4/app/detail/activity/SendCommentActivity;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/wandoujia/p4/app/detail/activity/SendCommentActivity$MockComment;->comment:Ljava/lang/String;

    .line 84
    invoke-virtual {v0}, Lcom/wandoujia/p4/app/controller/AppCommenter$Enjoy;->name()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/wandoujia/p4/app/detail/activity/SendCommentActivity$MockComment;->enjoy:Ljava/lang/String;

    .line 85
    iget-object v0, p0, Levw;->a:Lcom/wandoujia/p4/app/detail/activity/SendCommentActivity;

    invoke-static {v0}, Lcom/wandoujia/p4/app/detail/activity/SendCommentActivity;->c(Lcom/wandoujia/p4/app/detail/activity/SendCommentActivity;)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/wandoujia/p4/app/detail/activity/SendCommentActivity$MockComment;->versionCode:J

    .line 86
    iget-object v0, p0, Levw;->a:Lcom/wandoujia/p4/app/detail/activity/SendCommentActivity;

    invoke-static {v0}, Lcom/wandoujia/p4/app/detail/activity/SendCommentActivity;->d(Lcom/wandoujia/p4/app/detail/activity/SendCommentActivity;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/wandoujia/p4/app/detail/activity/SendCommentActivity$MockComment;->packageName:Ljava/lang/String;

    .line 88
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 89
    const-string v2, "KEY_MOCK_COMMENT"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 90
    iget-object v1, p0, Levw;->a:Lcom/wandoujia/p4/app/detail/activity/SendCommentActivity;

    invoke-static {v1}, Lcom/wandoujia/p4/app/detail/activity/SendCommentActivity;->e(Lcom/wandoujia/p4/app/detail/activity/SendCommentActivity;)Lcom/wandoujia/p4/app/detail/model/CommentSummary;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 91
    const-string v1, "KEY_OLD_COMMENT"

    iget-object v2, p0, Levw;->a:Lcom/wandoujia/p4/app/detail/activity/SendCommentActivity;

    invoke-static {v2}, Lcom/wandoujia/p4/app/detail/activity/SendCommentActivity;->e(Lcom/wandoujia/p4/app/detail/activity/SendCommentActivity;)Lcom/wandoujia/p4/app/detail/model/CommentSummary;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 93
    :cond_1
    iget-object v1, p0, Levw;->a:Lcom/wandoujia/p4/app/detail/activity/SendCommentActivity;

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Lcom/wandoujia/p4/app/detail/activity/SendCommentActivity;->setResult(ILandroid/content/Intent;)V

    .line 94
    iget-object v0, p0, Levw;->a:Lcom/wandoujia/p4/app/detail/activity/SendCommentActivity;

    invoke-virtual {v0}, Lcom/wandoujia/p4/app/detail/activity/SendCommentActivity;->finish()V

    goto :goto_0

    .line 81
    :cond_2
    iget-object v0, p0, Levw;->a:Lcom/wandoujia/p4/app/detail/activity/SendCommentActivity;

    invoke-static {v0}, Lcom/wandoujia/p4/app/detail/activity/SendCommentActivity;->b(Lcom/wandoujia/p4/app/detail/activity/SendCommentActivity;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/wandoujia/p4/app/controller/AppCommenter$Enjoy;->YES:Lcom/wandoujia/p4/app/controller/AppCommenter$Enjoy;

    goto :goto_1

    :cond_3
    sget-object v0, Lcom/wandoujia/p4/app/controller/AppCommenter$Enjoy;->NO:Lcom/wandoujia/p4/app/controller/AppCommenter$Enjoy;

    goto :goto_1
.end method
