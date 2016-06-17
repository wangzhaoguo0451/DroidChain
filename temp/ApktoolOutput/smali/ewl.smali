.class public final Lewl;
.super Lhhl;
.source "AppCommentsFragment.java"


# instance fields
.field private synthetic a:Lcom/wandoujia/p4/app/detail/fragment/AppCommentsFragment;


# direct methods
.method public constructor <init>(Lcom/wandoujia/p4/app/detail/fragment/AppCommentsFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 204
    iput-object p1, p0, Lewl;->a:Lcom/wandoujia/p4/app/detail/fragment/AppCommentsFragment;

    invoke-direct {p0}, Lhhl;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)Z
    .locals 8
    .parameter

    .prologue
    .line 207
    iget-object v0, p0, Lewl;->a:Lcom/wandoujia/p4/app/detail/fragment/AppCommentsFragment;

    invoke-static {v0}, Lcom/wandoujia/p4/app/detail/fragment/AppCommentsFragment;->f(Lcom/wandoujia/p4/app/detail/fragment/AppCommentsFragment;)Z

    move-result v7

    .line 208
    iget-object v0, p0, Lewl;->a:Lcom/wandoujia/p4/app/detail/fragment/AppCommentsFragment;

    invoke-static {v0}, Lcom/wandoujia/p4/app/detail/fragment/AppCommentsFragment;->g(Lcom/wandoujia/p4/app/detail/fragment/AppCommentsFragment;)V

    .line 209
    if-eqz v7, :cond_0

    .line 210
    sget-object v2, Lcom/wandoujia/ripple_framework/log/Logger$Module;->COMMENTS:Lcom/wandoujia/ripple_framework/log/Logger$Module;

    sget-object v3, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;->BUTTON:Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;

    sget-object v4, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;->SUBMIT:Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;

    iget-object v0, p0, Lewl;->a:Lcom/wandoujia/p4/app/detail/fragment/AppCommentsFragment;

    invoke-static {v0}, Lcom/wandoujia/p4/app/detail/fragment/AppCommentsFragment;->h(Lcom/wandoujia/p4/app/detail/fragment/AppCommentsFragment;)Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lewl;->a:Lcom/wandoujia/p4/app/detail/fragment/AppCommentsFragment;

    invoke-static {v0}, Lcom/wandoujia/p4/app/detail/fragment/AppCommentsFragment;->i(Lcom/wandoujia/p4/app/detail/fragment/AppCommentsFragment;)Ljava/lang/Boolean;

    move-result-object v0

    if-nez v0, :cond_1

    const-wide/16 v0, 0x1

    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Lewl;->a(Landroid/view/View;Lcom/wandoujia/ripple_framework/log/Logger$Module;Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;Ljava/lang/String;Ljava/lang/Long;)Lhhl;

    .line 218
    :cond_0
    return v7

    .line 210
    :cond_1
    iget-object v0, p0, Lewl;->a:Lcom/wandoujia/p4/app/detail/fragment/AppCommentsFragment;

    invoke-static {v0}, Lcom/wandoujia/p4/app/detail/fragment/AppCommentsFragment;->i(Lcom/wandoujia/p4/app/detail/fragment/AppCommentsFragment;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    const-wide/16 v0, 0x2

    goto :goto_0

    :cond_2
    const-wide/16 v0, 0x0

    goto :goto_0
.end method
