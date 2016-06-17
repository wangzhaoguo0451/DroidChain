.class public Lcom/wandoujia/p4/netcheck/fragment/NetCheckHomeFragment;
.super Lcom/wandoujia/p4/fragment/AsyncLoadFragment;
.source "NetCheckHomeFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/wandoujia/p4/fragment/AsyncLoadFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected getLayoutResId()I
    .locals 1

    .prologue
    .line 58
    const v0, 0x7f030033

    return v0
.end method

.method protected onInflated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 19
    const v0, 0x7f0c0165

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 20
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/wandoujia/base/utils/NetworkUtil;->isMobileNetworkConnected(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 21
    const v1, 0x7f0c0166

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 22
    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 24
    :cond_0
    const v1, 0x7f0c0164

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 25
    new-instance v2, Lgam;

    invoke-direct {v2, p0, v0}, Lgam;-><init>(Lcom/wandoujia/p4/netcheck/fragment/NetCheckHomeFragment;Landroid/widget/CheckBox;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 48
    return-void
.end method

.method protected onPrepareLoading()V
    .locals 0

    .prologue
    .line 62
    return-void
.end method

.method protected onStartLoading()V
    .locals 0

    .prologue
    .line 65
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 52
    invoke-super {p0, p1, p2}, Lcom/wandoujia/p4/fragment/AsyncLoadFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 53
    const v0, 0x7f0e044e

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/netcheck/fragment/NetCheckHomeFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/netcheck/fragment/NetCheckHomeFragment;->setTitle(Ljava/lang/CharSequence;)V

    .line 54
    return-void
.end method
