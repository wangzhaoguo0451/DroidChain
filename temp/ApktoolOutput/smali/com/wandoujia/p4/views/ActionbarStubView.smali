.class public Lcom/wandoujia/p4/views/ActionbarStubView;
.super Landroid/view/View;
.source "ActionbarStubView.java"


# instance fields
.field private a:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 24
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 28
    invoke-virtual {p0}, Lcom/wandoujia/p4/views/ActionbarStubView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0076

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/wandoujia/p4/views/ActionbarStubView;->a:I

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    invoke-virtual {p0}, Lcom/wandoujia/p4/views/ActionbarStubView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0076

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/wandoujia/p4/views/ActionbarStubView;->a:I

    .line 21
    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 43
    invoke-virtual {p0}, Lcom/wandoujia/p4/views/ActionbarStubView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0076

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/wandoujia/p4/views/ActionbarStubView;->a:I

    .line 44
    invoke-virtual {p0}, Lcom/wandoujia/p4/views/ActionbarStubView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 45
    if-eqz v0, :cond_0

    .line 46
    iget v1, p0, Lcom/wandoujia/p4/views/ActionbarStubView;->a:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 48
    :cond_0
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 49
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter

    .prologue
    .line 33
    invoke-virtual {p0}, Lcom/wandoujia/p4/views/ActionbarStubView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0076

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/wandoujia/p4/views/ActionbarStubView;->a:I

    .line 34
    invoke-virtual {p0}, Lcom/wandoujia/p4/views/ActionbarStubView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 35
    if-eqz v0, :cond_0

    .line 36
    iget v1, p0, Lcom/wandoujia/p4/views/ActionbarStubView;->a:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 38
    :cond_0
    invoke-virtual {p0}, Lcom/wandoujia/p4/views/ActionbarStubView;->requestLayout()V

    .line 39
    return-void
.end method
