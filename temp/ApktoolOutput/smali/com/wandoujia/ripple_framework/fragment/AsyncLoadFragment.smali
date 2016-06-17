.class public abstract Lcom/wandoujia/ripple_framework/fragment/AsyncLoadFragment;
.super Lcom/wandoujia/ripple_framework/fragment/BaseFragment;
.source "AsyncLoadFragment.java"


# instance fields
.field private a:Landroid/view/View;

.field private b:Z

.field protected f:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/wandoujia/ripple_framework/fragment/BaseFragment;-><init>()V

    .line 17
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/wandoujia/ripple_framework/fragment/AsyncLoadFragment;->b:Z

    .line 18
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/wandoujia/ripple_framework/fragment/AsyncLoadFragment;->f:Z

    return-void
.end method

.method public static synthetic a(Lcom/wandoujia/ripple_framework/fragment/AsyncLoadFragment;)Z
    .locals 1
    .parameter

    .prologue
    .line 14
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/wandoujia/ripple_framework/fragment/AsyncLoadFragment;->b:Z

    return v0
.end method


# virtual methods
.method public final a(Z)V
    .locals 1
    .parameter

    .prologue
    .line 60
    iput-boolean p1, p0, Lcom/wandoujia/ripple_framework/fragment/AsyncLoadFragment;->f:Z

    .line 61
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/wandoujia/ripple_framework/fragment/AsyncLoadFragment;->b:Z

    if-eqz v0, :cond_0

    .line 62
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/wandoujia/ripple_framework/fragment/AsyncLoadFragment;->b:Z

    .line 63
    invoke-virtual {p0}, Lcom/wandoujia/ripple_framework/fragment/AsyncLoadFragment;->l()V

    .line 65
    :cond_0
    return-void
.end method

.method public abstract b()I
.end method

.method protected j()V
    .locals 0

    .prologue
    .line 70
    return-void
.end method

.method public k()Z
    .locals 1

    .prologue
    .line 73
    iget-boolean v0, p0, Lcom/wandoujia/ripple_framework/fragment/AsyncLoadFragment;->f:Z

    return v0
.end method

.method public abstract l()V
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 36
    invoke-super {p0, p1}, Lcom/wandoujia/ripple_framework/fragment/BaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 38
    invoke-virtual {p0}, Lcom/wandoujia/ripple_framework/fragment/AsyncLoadFragment;->j()V

    .line 39
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/fragment/AsyncLoadFragment;->a:Landroid/view/View;

    new-instance v1, Lhds;

    invoke-direct {v1, p0}, Lhds;-><init>(Lcom/wandoujia/ripple_framework/fragment/AsyncLoadFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 52
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 23
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/fragment/AsyncLoadFragment;->a:Landroid/view/View;

    if-nez v0, :cond_1

    .line 24
    invoke-virtual {p0}, Lcom/wandoujia/ripple_framework/fragment/AsyncLoadFragment;->b()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/ripple_framework/fragment/AsyncLoadFragment;->a:Landroid/view/View;

    .line 31
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/fragment/AsyncLoadFragment;->a:Landroid/view/View;

    return-object v0

    .line 26
    :cond_1
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/fragment/AsyncLoadFragment;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 27
    if-eqz v0, :cond_0

    .line 28
    iget-object v1, p0, Lcom/wandoujia/ripple_framework/fragment/AsyncLoadFragment;->a:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_0
.end method
