.class public Lcom/wandoujia/p4/netcheck/fragment/NetCheckFailedFragment;
.super Lcom/wandoujia/p4/fragment/AsyncLoadFragment;
.source "NetCheckFailedFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/wandoujia/p4/fragment/AsyncLoadFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected getLayoutResId()I
    .locals 1

    .prologue
    .line 39
    const v0, 0x7f03002f

    return v0
.end method

.method protected onInflated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 16
    const v0, 0x7f0c014d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v1, Lgak;

    invoke-direct {v1, p0}, Lgak;-><init>(Lcom/wandoujia/p4/netcheck/fragment/NetCheckFailedFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 29
    return-void
.end method

.method protected onPrepareLoading()V
    .locals 0

    .prologue
    .line 43
    return-void
.end method

.method protected onStartLoading()V
    .locals 0

    .prologue
    .line 46
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 33
    invoke-super {p0, p1, p2}, Lcom/wandoujia/p4/fragment/AsyncLoadFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 34
    const v0, 0x7f0e044e

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/netcheck/fragment/NetCheckFailedFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/netcheck/fragment/NetCheckFailedFragment;->setTitle(Ljava/lang/CharSequence;)V

    .line 35
    return-void
.end method
