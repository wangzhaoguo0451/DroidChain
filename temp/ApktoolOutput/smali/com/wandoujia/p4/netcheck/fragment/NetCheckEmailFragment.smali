.class public Lcom/wandoujia/p4/netcheck/fragment/NetCheckEmailFragment;
.super Lcom/wandoujia/p4/fragment/AsyncLoadFragment;
.source "NetCheckEmailFragment.java"


# instance fields
.field a:Lcom/wandoujia/p4/netcheck/controller/NetCheckController;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/wandoujia/p4/fragment/AsyncLoadFragment;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/wandoujia/p4/netcheck/fragment/NetCheckEmailFragment;)Lcom/wandoujia/p4/netcheck/controller/NetCheckController;
    .locals 1
    .parameter

    .prologue
    .line 17
    iget-object v0, p0, Lcom/wandoujia/p4/netcheck/fragment/NetCheckEmailFragment;->a:Lcom/wandoujia/p4/netcheck/controller/NetCheckController;

    return-object v0
.end method


# virtual methods
.method protected getLayoutResId()I
    .locals 1

    .prologue
    .line 62
    const v0, 0x7f030031

    return v0
.end method

.method protected onInflated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 30
    const v0, 0x7f0c012b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 31
    const v1, 0x7f0c0160

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 32
    new-instance v2, Lgaj;

    invoke-direct {v2, p0, v0, p1}, Lgaj;-><init>(Lcom/wandoujia/p4/netcheck/fragment/NetCheckEmailFragment;Landroid/widget/EditText;Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 52
    return-void
.end method

.method protected onPrepareLoading()V
    .locals 0

    .prologue
    .line 66
    return-void
.end method

.method protected onStartLoading()V
    .locals 0

    .prologue
    .line 69
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 56
    invoke-super {p0, p1, p2}, Lcom/wandoujia/p4/fragment/AsyncLoadFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 57
    const v0, 0x7f0e044e

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/netcheck/fragment/NetCheckEmailFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/netcheck/fragment/NetCheckEmailFragment;->setTitle(Ljava/lang/CharSequence;)V

    .line 58
    return-void
.end method
