.class public abstract Lcom/wandoujia/p4/fragment/NetworkAsyncLoadFragment;
.super Lcom/wandoujia/p4/fragment/AsyncLoadFragment;
.source "NetworkAsyncLoadFragment.java"


# instance fields
.field private isLoaded:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/wandoujia/p4/fragment/AsyncLoadFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected needToLoadData()Z
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x1

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter

    .prologue
    .line 18
    invoke-super {p0, p1}, Lcom/wandoujia/p4/fragment/AsyncLoadFragment;->onCreate(Landroid/os/Bundle;)V

    .line 19
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 23
    invoke-super {p0}, Lcom/wandoujia/p4/fragment/AsyncLoadFragment;->onDestroy()V

    .line 24
    return-void
.end method
