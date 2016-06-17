.class public Lcom/wandoujia/jupiter/view/AutoInstallCardView;
.super Landroid/widget/RelativeLayout;
.source "AutoInstallCardView.java"


# instance fields
.field private a:Landroid/widget/ImageView;

.field private b:Lcom/wandoujia/ripple_framework/view/StatefulButton;

.field private c:Ldww;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 42
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 50
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 35
    return-void
.end method

.method public static a(Landroid/view/ViewGroup;)Lcom/wandoujia/jupiter/view/AutoInstallCardView;
    .locals 1
    .parameter

    .prologue
    .line 54
    const v0, 0x7f03008d

    invoke-static {p0, v0}, Lg;->b(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/jupiter/view/AutoInstallCardView;

    return-object v0
.end method

.method public static synthetic a(Lcom/wandoujia/jupiter/view/AutoInstallCardView;)V
    .locals 1
    .parameter

    .prologue
    .line 26
    invoke-static {}, Lcom/wandoujia/p4/configs/Config;->s()V

    iget-object v0, p0, Lcom/wandoujia/jupiter/view/AutoInstallCardView;->c:Ldww;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wandoujia/jupiter/view/AutoInstallCardView;->c:Ldww;

    invoke-interface {v0}, Ldww;->a()V

    :cond_0
    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 63
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 64
    const v0, 0x7f0c023c

    invoke-virtual {p0, v0}, Lcom/wandoujia/jupiter/view/AutoInstallCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/wandoujia/jupiter/view/AutoInstallCardView;->a:Landroid/widget/ImageView;

    .line 65
    const v0, 0x7f0c0002

    invoke-virtual {p0, v0}, Lcom/wandoujia/jupiter/view/AutoInstallCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/ripple_framework/view/StatefulButton;

    iput-object v0, p0, Lcom/wandoujia/jupiter/view/AutoInstallCardView;->b:Lcom/wandoujia/ripple_framework/view/StatefulButton;

    .line 67
    iget-object v0, p0, Lcom/wandoujia/jupiter/view/AutoInstallCardView;->a:Landroid/widget/ImageView;

    new-instance v1, Ldwu;

    invoke-direct {v1, p0}, Ldwu;-><init>(Lcom/wandoujia/jupiter/view/AutoInstallCardView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    iget-object v0, p0, Lcom/wandoujia/jupiter/view/AutoInstallCardView;->b:Lcom/wandoujia/ripple_framework/view/StatefulButton;

    new-instance v1, Ldwv;

    invoke-direct {v1, p0}, Ldwv;-><init>(Lcom/wandoujia/jupiter/view/AutoInstallCardView;)V

    invoke-virtual {v0, v1}, Lcom/wandoujia/ripple_framework/view/StatefulButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    return-void
.end method

.method public setIsFromCard(Z)V
    .locals 0
    .parameter

    .prologue
    .line 108
    return-void
.end method

.method public setListener(Ldww;)V
    .locals 0
    .parameter

    .prologue
    .line 58
    iput-object p1, p0, Lcom/wandoujia/jupiter/view/AutoInstallCardView;->c:Ldww;

    .line 59
    return-void
.end method
