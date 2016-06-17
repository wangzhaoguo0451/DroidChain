.class public abstract Lcom/wandoujia/launcher/launcher/fragments/BaseFragment;
.super Landroid/support/v4/app/Fragment;
.source "BaseFragment.java"


# instance fields
.field private final a:Lefm;

.field private b:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 16
    new-instance v0, Ldzm;

    invoke-direct {v0, p0}, Ldzm;-><init>(Lcom/wandoujia/launcher/launcher/fragments/BaseFragment;)V

    iput-object v0, p0, Lcom/wandoujia/launcher/launcher/fragments/BaseFragment;->a:Lefm;

    .line 26
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/wandoujia/launcher/launcher/fragments/BaseFragment;->b:Z

    return-void
.end method


# virtual methods
.method protected abstract a()V
.end method

.method public final e()V
    .locals 1

    .prologue
    .line 39
    invoke-virtual {p0}, Lcom/wandoujia/launcher/launcher/fragments/BaseFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_1

    .line 46
    :cond_0
    :goto_0
    return-void

    .line 42
    :cond_1
    iget-boolean v0, p0, Lcom/wandoujia/launcher/launcher/fragments/BaseFragment;->b:Z

    if-eqz v0, :cond_0

    .line 45
    invoke-virtual {p0}, Lcom/wandoujia/launcher/launcher/fragments/BaseFragment;->a()V

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 34
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 35
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/wandoujia/launcher/launcher/fragments/BaseFragment;->b:Z

    .line 36
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 50
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 51
    invoke-static {}, Lcom/wandoujia/launcher_base/download/receiver/ReceiverMonitor;->a()Lcom/wandoujia/launcher_base/download/receiver/ReceiverMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/wandoujia/launcher/launcher/fragments/BaseFragment;->a:Lefm;

    invoke-virtual {v0, v1}, Lcom/wandoujia/launcher_base/download/receiver/ReceiverMonitor;->a(Lefm;)V

    .line 52
    return-void
.end method
