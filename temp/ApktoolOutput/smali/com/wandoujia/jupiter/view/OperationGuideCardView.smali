.class public Lcom/wandoujia/jupiter/view/OperationGuideCardView;
.super Landroid/widget/RelativeLayout;
.source "OperationGuideCardView.java"


# instance fields
.field private a:Landroid/widget/ImageView;

.field private b:Lcom/wandoujia/ripple_framework/view/StatefulButton;

.field private c:Ldwz;


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

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    .line 44
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 45
    return-void
.end method

.method public static a(Landroid/view/ViewGroup;)Lcom/wandoujia/jupiter/view/OperationGuideCardView;
    .locals 1
    .parameter

    .prologue
    .line 48
    const v0, 0x7f0301be

    invoke-static {p0, v0}, Lg;->b(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/jupiter/view/OperationGuideCardView;

    return-object v0
.end method

.method public static synthetic a(Lcom/wandoujia/jupiter/view/OperationGuideCardView;)Ldwz;
    .locals 1
    .parameter

    .prologue
    .line 24
    iget-object v0, p0, Lcom/wandoujia/jupiter/view/OperationGuideCardView;->c:Ldwz;

    return-object v0
.end method


# virtual methods
.method public getSettingButton()Lcom/wandoujia/ripple_framework/view/StatefulButton;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/wandoujia/jupiter/view/OperationGuideCardView;->b:Lcom/wandoujia/ripple_framework/view/StatefulButton;

    return-object v0
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 65
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 66
    const v0, 0x7f0c023c

    invoke-virtual {p0, v0}, Lcom/wandoujia/jupiter/view/OperationGuideCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/wandoujia/jupiter/view/OperationGuideCardView;->a:Landroid/widget/ImageView;

    .line 67
    const v0, 0x7f0c0002

    invoke-virtual {p0, v0}, Lcom/wandoujia/jupiter/view/OperationGuideCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/ripple_framework/view/StatefulButton;

    iput-object v0, p0, Lcom/wandoujia/jupiter/view/OperationGuideCardView;->b:Lcom/wandoujia/ripple_framework/view/StatefulButton;

    .line 69
    iget-object v0, p0, Lcom/wandoujia/jupiter/view/OperationGuideCardView;->a:Landroid/widget/ImageView;

    new-instance v1, Ldwx;

    invoke-direct {v1, p0}, Ldwx;-><init>(Lcom/wandoujia/jupiter/view/OperationGuideCardView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    iget-object v0, p0, Lcom/wandoujia/jupiter/view/OperationGuideCardView;->b:Lcom/wandoujia/ripple_framework/view/StatefulButton;

    new-instance v1, Ldwy;

    invoke-direct {v1, p0}, Ldwy;-><init>(Lcom/wandoujia/jupiter/view/OperationGuideCardView;)V

    invoke-virtual {v0, v1}, Lcom/wandoujia/ripple_framework/view/StatefulButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    return-void
.end method

.method public setListener(Ldwz;)V
    .locals 0
    .parameter

    .prologue
    .line 52
    iput-object p1, p0, Lcom/wandoujia/jupiter/view/OperationGuideCardView;->c:Ldwz;

    .line 53
    return-void
.end method
