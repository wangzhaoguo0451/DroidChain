.class public Lcom/wandoujia/p4/community/card/view/LoadPreHeaderView;
.super Landroid/widget/RelativeLayout;
.source "LoadPreHeaderView.java"


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Landroid/widget/ProgressBar;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 31
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 39
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 40
    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/wandoujia/p4/community/card/view/LoadPreHeaderView;
    .locals 1
    .parameter

    .prologue
    .line 27
    const v0, 0x7f0300c1

    invoke-static {p0, v0}, Lg;->a(Landroid/content/Context;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/community/card/view/LoadPreHeaderView;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 68
    iget-object v0, p0, Lcom/wandoujia/p4/community/card/view/LoadPreHeaderView;->b:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 69
    iget-object v0, p0, Lcom/wandoujia/p4/community/card/view/LoadPreHeaderView;->a:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 70
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 44
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 46
    const v0, 0x7f0c029a

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/community/card/view/LoadPreHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/wandoujia/p4/community/card/view/LoadPreHeaderView;->b:Landroid/widget/ProgressBar;

    .line 47
    const v0, 0x7f0c0299

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/community/card/view/LoadPreHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wandoujia/p4/community/card/view/LoadPreHeaderView;->a:Landroid/widget/TextView;

    .line 48
    return-void
.end method

.method public setState(Lcom/wandoujia/p4/community/card/view/LoadPreHeaderView$State;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x0

    .line 51
    sget-object v0, Lfgn;->a:[I

    invoke-virtual {p1}, Lcom/wandoujia/p4/community/card/view/LoadPreHeaderView$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 61
    iget-object v0, p0, Lcom/wandoujia/p4/community/card/view/LoadPreHeaderView;->b:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 62
    iget-object v0, p0, Lcom/wandoujia/p4/community/card/view/LoadPreHeaderView;->a:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 65
    :goto_0
    return-void

    .line 53
    :pswitch_0
    iget-object v0, p0, Lcom/wandoujia/p4/community/card/view/LoadPreHeaderView;->b:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 54
    iget-object v0, p0, Lcom/wandoujia/p4/community/card/view/LoadPreHeaderView;->a:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 57
    :pswitch_1
    iget-object v0, p0, Lcom/wandoujia/p4/community/card/view/LoadPreHeaderView;->b:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 58
    iget-object v0, p0, Lcom/wandoujia/p4/community/card/view/LoadPreHeaderView;->a:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 51
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
