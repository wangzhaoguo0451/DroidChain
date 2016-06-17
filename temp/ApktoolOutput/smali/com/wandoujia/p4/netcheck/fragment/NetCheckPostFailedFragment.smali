.class public Lcom/wandoujia/p4/netcheck/fragment/NetCheckPostFailedFragment;
.super Lcom/wandoujia/p4/fragment/AsyncLoadFragment;
.source "NetCheckPostFailedFragment.java"


# instance fields
.field public a:Lcom/wandoujia/p4/netcheck/controller/NetCheckController;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/wandoujia/p4/fragment/AsyncLoadFragment;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/wandoujia/p4/netcheck/fragment/NetCheckPostFailedFragment;)Lcom/wandoujia/p4/netcheck/controller/NetCheckController;
    .locals 1
    .parameter

    .prologue
    .line 16
    iget-object v0, p0, Lcom/wandoujia/p4/netcheck/fragment/NetCheckPostFailedFragment;->a:Lcom/wandoujia/p4/netcheck/controller/NetCheckController;

    return-object v0
.end method


# virtual methods
.method protected getLayoutResId()I
    .locals 1

    .prologue
    .line 65
    const v0, 0x7f030035

    return v0
.end method

.method protected onInflated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 29
    const v0, 0x7f0c0168

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v1, Lgan;

    invoke-direct {v1, p0}, Lgan;-><init>(Lcom/wandoujia/p4/netcheck/fragment/NetCheckPostFailedFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 43
    const v0, 0x7f0c0169

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v1, Lgao;

    invoke-direct {v1, p0}, Lgao;-><init>(Lcom/wandoujia/p4/netcheck/fragment/NetCheckPostFailedFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 55
    return-void
.end method

.method protected onPrepareLoading()V
    .locals 0

    .prologue
    .line 69
    return-void
.end method

.method protected onStartLoading()V
    .locals 0

    .prologue
    .line 72
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 59
    invoke-super {p0, p1, p2}, Lcom/wandoujia/p4/fragment/AsyncLoadFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 60
    const v0, 0x7f0e044e

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/netcheck/fragment/NetCheckPostFailedFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/netcheck/fragment/NetCheckPostFailedFragment;->setTitle(Ljava/lang/CharSequence;)V

    .line 61
    return-void
.end method
