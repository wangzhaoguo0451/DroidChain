.class final Lewg;
.super Ljava/lang/Object;
.source "AppCommentsFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lewf;


# direct methods
.method constructor <init>(Lewf;)V
    .locals 0
    .parameter

    .prologue
    .line 119
    iput-object p1, p0, Lewg;->a:Lewf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 123
    iget-object v0, p0, Lewg;->a:Lewf;

    iget-object v0, v0, Lewf;->a:Lcom/wandoujia/p4/app/detail/fragment/AppCommentsFragment;

    invoke-virtual {v0}, Lcom/wandoujia/p4/app/detail/fragment/AppCommentsFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_1

    .line 141
    :cond_0
    :goto_0
    return-void

    .line 127
    :cond_1
    iget-object v0, p0, Lewg;->a:Lewf;

    iget-object v0, v0, Lewf;->a:Lcom/wandoujia/p4/app/detail/fragment/AppCommentsFragment;

    invoke-static {v0}, Lcom/wandoujia/p4/app/detail/fragment/AppCommentsFragment;->c(Lcom/wandoujia/p4/app/detail/fragment/AppCommentsFragment;)Lewq;

    move-result-object v0

    iget-object v0, v0, Lewq;->b:Lcom/wandoujia/p4/app/detail/model/CommentJson;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lewg;->a:Lewf;

    iget-object v0, v0, Lewf;->a:Lcom/wandoujia/p4/app/detail/fragment/AppCommentsFragment;

    invoke-static {v0}, Lcom/wandoujia/p4/app/detail/fragment/AppCommentsFragment;->c(Lcom/wandoujia/p4/app/detail/fragment/AppCommentsFragment;)Lewq;

    move-result-object v0

    iget-object v0, v0, Lewq;->b:Lcom/wandoujia/p4/app/detail/model/CommentJson;

    invoke-virtual {v0}, Lcom/wandoujia/p4/app/detail/model/CommentJson;->getContent()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lewg;->a:Lewf;

    iget-object v0, v0, Lewf;->a:Lcom/wandoujia/p4/app/detail/fragment/AppCommentsFragment;

    invoke-static {v0}, Lcom/wandoujia/p4/app/detail/fragment/AppCommentsFragment;->c(Lcom/wandoujia/p4/app/detail/fragment/AppCommentsFragment;)Lewq;

    move-result-object v0

    iget-object v0, v0, Lewq;->b:Lcom/wandoujia/p4/app/detail/model/CommentJson;

    invoke-virtual {v0}, Lcom/wandoujia/p4/app/detail/model/CommentJson;->getAuthorId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 130
    iget-object v0, p0, Lewg;->a:Lewf;

    iget-object v0, v0, Lewf;->a:Lcom/wandoujia/p4/app/detail/fragment/AppCommentsFragment;

    invoke-virtual {v0}, Lcom/wandoujia/p4/app/detail/fragment/AppCommentsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0e017f

    sget v2, Ldxa;->b:I

    int-to-long v2, v2

    invoke-static {v0, v1, v2, v3}, Ldxa;->a(Landroid/content/Context;IJ)Ldxa;

    move-result-object v0

    invoke-virtual {v0}, Ldxa;->a()V

    .line 138
    :goto_1
    iget-object v0, p0, Lewg;->a:Lewf;

    iget-object v0, v0, Lewf;->a:Lcom/wandoujia/p4/app/detail/fragment/AppCommentsFragment;

    invoke-virtual {v0}, Lcom/wandoujia/p4/app/detail/fragment/AppCommentsFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lewg;->a:Lewf;

    iget-object v0, v0, Lewf;->a:Lcom/wandoujia/p4/app/detail/fragment/AppCommentsFragment;

    invoke-static {v0}, Lcom/wandoujia/p4/app/detail/fragment/AppCommentsFragment;->d(Lcom/wandoujia/p4/app/detail/fragment/AppCommentsFragment;)V

    goto :goto_0

    .line 134
    :cond_2
    iget-object v0, p0, Lewg;->a:Lewf;

    iget-object v0, v0, Lewf;->a:Lcom/wandoujia/p4/app/detail/fragment/AppCommentsFragment;

    invoke-virtual {v0}, Lcom/wandoujia/p4/app/detail/fragment/AppCommentsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0e0181

    sget v2, Ldxa;->b:I

    int-to-long v2, v2

    invoke-static {v0, v1, v2, v3}, Ldxa;->a(Landroid/content/Context;IJ)Ldxa;

    move-result-object v0

    invoke-virtual {v0}, Ldxa;->a()V

    goto :goto_1
.end method
