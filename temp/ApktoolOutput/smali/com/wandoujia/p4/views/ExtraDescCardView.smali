.class public Lcom/wandoujia/p4/views/ExtraDescCardView;
.super Lcom/wandoujia/p4/card/views/ContentCardView;
.source "ExtraDescCardView.java"


# instance fields
.field private i:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Lcom/wandoujia/p4/card/views/ContentCardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    return-void
.end method

.method public static b(Landroid/view/ViewGroup;)Lcom/wandoujia/p4/views/ExtraDescCardView;
    .locals 1
    .parameter

    .prologue
    .line 20
    const v0, 0x7f0300d3

    invoke-static {p0, v0}, Lg;->b(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/views/ExtraDescCardView;

    return-object v0
.end method


# virtual methods
.method public getDescriptionView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/wandoujia/p4/views/ExtraDescCardView;->i:Landroid/widget/TextView;

    return-object v0
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 40
    invoke-super {p0}, Lcom/wandoujia/p4/card/views/ContentCardView;->onFinishInflate()V

    .line 41
    const v0, 0x7f0c02b4

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/views/ExtraDescCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wandoujia/p4/views/ExtraDescCardView;->i:Landroid/widget/TextView;

    .line 42
    return-void
.end method
