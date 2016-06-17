.class public final Lduf;
.super Lhic;
.source "PublisherProfileFragment.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 112
    invoke-direct {p0}, Lhic;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0
    .parameter

    .prologue
    .line 112
    invoke-direct {p0}, Lduf;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a(Lcom/wandoujia/ripple_framework/model/Model;)V
    .locals 3
    .parameter

    .prologue
    .line 115
    invoke-virtual {p0}, Lduf;->f()Leri;

    move-result-object v0

    const v1, 0x7f0a01a8

    invoke-virtual {v0, v1}, Leri;->i(I)Leri;

    move-result-object v0

    const v1, 0x7f0c0302

    invoke-virtual {v0, v1}, Leri;->b(I)Leri;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Leri;->f(I)Leri;

    move-result-object v0

    const v1, 0x7f0c0002

    invoke-virtual {v0, v1}, Leri;->b(I)Leri;

    move-result-object v1

    iget-object v0, v1, Leri;->a:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, v1, Leri;->a:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    const v2, 0x7f0e0385

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    :cond_0
    const v0, 0x7f020347

    invoke-virtual {v1, v0}, Leri;->g(I)Leri;

    move-result-object v0

    new-instance v1, Ldug;

    invoke-direct {v1, p1}, Ldug;-><init>(Lcom/wandoujia/ripple_framework/model/Model;)V

    invoke-virtual {v0, v1}, Leri;->a(Landroid/view/View$OnClickListener;)Leri;

    .line 127
    return-void
.end method
