.class public abstract Lcom/wandoujia/p4/fragment/AsyncLoadFragment;
.super Lcom/wandoujia/ripple_framework/fragment/BaseFragment;
.source "AsyncLoadFragment.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AsyncLoadFragment"


# instance fields
.field private allowLoading:Z

.field private contentView:Landroid/view/View;

.field protected isInflated:Z

.field private pendingToLoad:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/wandoujia/ripple_framework/fragment/BaseFragment;-><init>()V

    .line 21
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/wandoujia/p4/fragment/AsyncLoadFragment;->allowLoading:Z

    .line 22
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/wandoujia/p4/fragment/AsyncLoadFragment;->pendingToLoad:Z

    return-void
.end method

.method public static synthetic access$000(Lcom/wandoujia/p4/fragment/AsyncLoadFragment;)Z
    .locals 1
    .parameter

    .prologue
    .line 19
    iget-boolean v0, p0, Lcom/wandoujia/p4/fragment/AsyncLoadFragment;->allowLoading:Z

    return v0
.end method

.method public static synthetic access$102(Lcom/wandoujia/p4/fragment/AsyncLoadFragment;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 19
    iput-boolean p1, p0, Lcom/wandoujia/p4/fragment/AsyncLoadFragment;->pendingToLoad:Z

    return p1
.end method


# virtual methods
.method public getContentView()Landroid/view/View;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/wandoujia/p4/fragment/AsyncLoadFragment;->contentView:Landroid/view/View;

    return-object v0
.end method

.method public abstract getLayoutResId()I
.end method

.method public needToLoadData()Z
    .locals 1

    .prologue
    .line 92
    iget-boolean v0, p0, Lcom/wandoujia/p4/fragment/AsyncLoadFragment;->isInflated:Z

    return v0
.end method

.method public final onActivityCreated(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    .line 42
    invoke-super {p0, p1}, Lcom/wandoujia/ripple_framework/fragment/BaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 43
    const-string v0, "AsyncLoadFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "onActivityCreated"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/wandoujia/base/log/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 45
    iget-object v0, p0, Lcom/wandoujia/p4/fragment/AsyncLoadFragment;->contentView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 46
    iget-object v0, p0, Lcom/wandoujia/p4/fragment/AsyncLoadFragment;->contentView:Landroid/view/View;

    invoke-virtual {p0, v0, p1}, Lcom/wandoujia/p4/fragment/AsyncLoadFragment;->onInflated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 47
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/wandoujia/p4/fragment/AsyncLoadFragment;->isInflated:Z

    .line 49
    :cond_0
    invoke-virtual {p0}, Lcom/wandoujia/p4/fragment/AsyncLoadFragment;->needToLoadData()Z

    move-result v0

    if-nez v0, :cond_1

    .line 69
    :goto_0
    return-void

    .line 52
    :cond_1
    invoke-virtual {p0}, Lcom/wandoujia/p4/fragment/AsyncLoadFragment;->onPrepareLoading()V

    .line 55
    iget-object v0, p0, Lcom/wandoujia/p4/fragment/AsyncLoadFragment;->contentView:Landroid/view/View;

    new-instance v1, Lfsy;

    invoke-direct {v1, p0}, Lfsy;-><init>(Lcom/wandoujia/p4/fragment/AsyncLoadFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 29
    iget-object v0, p0, Lcom/wandoujia/p4/fragment/AsyncLoadFragment;->contentView:Landroid/view/View;

    if-nez v0, :cond_1

    .line 30
    invoke-virtual {p0}, Lcom/wandoujia/p4/fragment/AsyncLoadFragment;->getLayoutResId()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/p4/fragment/AsyncLoadFragment;->contentView:Landroid/view/View;

    .line 37
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/wandoujia/p4/fragment/AsyncLoadFragment;->contentView:Landroid/view/View;

    return-object v0

    .line 32
    :cond_1
    iget-object v0, p0, Lcom/wandoujia/p4/fragment/AsyncLoadFragment;->contentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 33
    if-eqz v0, :cond_0

    .line 34
    iget-object v1, p0, Lcom/wandoujia/p4/fragment/AsyncLoadFragment;->contentView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public abstract onInflated(Landroid/view/View;Landroid/os/Bundle;)V
.end method

.method public abstract onPrepareLoading()V
.end method

.method public abstract onStartLoading()V
.end method

.method public final requestLoad()V
    .locals 3

    .prologue
    .line 113
    const-string v0, "AsyncLoadFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "requestLoad"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/wandoujia/base/log/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 114
    invoke-virtual {p0}, Lcom/wandoujia/p4/fragment/AsyncLoadFragment;->needToLoadData()Z

    move-result v0

    if-nez v0, :cond_0

    .line 123
    :goto_0
    return-void

    .line 117
    :cond_0
    invoke-virtual {p0}, Lcom/wandoujia/p4/fragment/AsyncLoadFragment;->onPrepareLoading()V

    .line 118
    iget-boolean v0, p0, Lcom/wandoujia/p4/fragment/AsyncLoadFragment;->allowLoading:Z

    if-eqz v0, :cond_1

    .line 119
    invoke-virtual {p0}, Lcom/wandoujia/p4/fragment/AsyncLoadFragment;->onStartLoading()V

    goto :goto_0

    .line 121
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/wandoujia/p4/fragment/AsyncLoadFragment;->pendingToLoad:Z

    goto :goto_0
.end method

.method public final setAllowLoading(Z)V
    .locals 1
    .parameter

    .prologue
    .line 131
    iput-boolean p1, p0, Lcom/wandoujia/p4/fragment/AsyncLoadFragment;->allowLoading:Z

    .line 132
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/wandoujia/p4/fragment/AsyncLoadFragment;->pendingToLoad:Z

    if-eqz v0, :cond_0

    .line 133
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/wandoujia/p4/fragment/AsyncLoadFragment;->pendingToLoad:Z

    .line 134
    invoke-virtual {p0}, Lcom/wandoujia/p4/fragment/AsyncLoadFragment;->requestLoad()V

    .line 136
    :cond_0
    return-void
.end method
