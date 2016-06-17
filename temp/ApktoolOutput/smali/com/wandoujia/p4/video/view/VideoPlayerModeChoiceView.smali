.class public Lcom/wandoujia/p4/video/view/VideoPlayerModeChoiceView;
.super Landroid/widget/RelativeLayout;
.source "VideoPlayerModeChoiceView.java"


# instance fields
.field public a:Landroid/widget/TextView;

.field public b:Landroid/widget/TextView;

.field public c:Lcom/wandoujia/p4/video2/model/VideoPlayModel;

.field private d:Landroid/widget/ImageView;

.field private e:Lcom/wandoujia/p4/button/views/StatefulProgressButton;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 44
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 52
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 53
    return-void
.end method

.method public static a(Landroid/view/ViewGroup;)Lcom/wandoujia/p4/video/view/VideoPlayerModeChoiceView;
    .locals 1
    .parameter

    .prologue
    .line 37
    const v0, 0x7f03004e

    invoke-static {p0, v0}, Lg;->b(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/video/view/VideoPlayerModeChoiceView;

    .line 40
    return-object v0
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 5

    .prologue
    .line 57
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 58
    const v0, 0x7f0c01ac

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/video/view/VideoPlayerModeChoiceView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/wandoujia/p4/video/view/VideoPlayerModeChoiceView;->d:Landroid/widget/ImageView;

    .line 60
    const v0, 0x7f0c0078

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/video/view/VideoPlayerModeChoiceView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wandoujia/p4/video/view/VideoPlayerModeChoiceView;->a:Landroid/widget/TextView;

    .line 61
    const v0, 0x7f0c01ae

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/video/view/VideoPlayerModeChoiceView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wandoujia/p4/video/view/VideoPlayerModeChoiceView;->b:Landroid/widget/TextView;

    .line 63
    const v0, 0x7f0c01af

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/video/view/VideoPlayerModeChoiceView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/button/views/StatefulProgressButton;

    iput-object v0, p0, Lcom/wandoujia/p4/video/view/VideoPlayerModeChoiceView;->e:Lcom/wandoujia/p4/button/views/StatefulProgressButton;

    .line 64
    iget-object v0, p0, Lcom/wandoujia/p4/video/view/VideoPlayerModeChoiceView;->e:Lcom/wandoujia/p4/button/views/StatefulProgressButton;

    new-instance v1, Lfaq;

    const v2, 0x7f010043

    const v3, 0x7f0e0625

    new-instance v4, Lgfb;

    invoke-direct {v4, p0}, Lgfb;-><init>(Lcom/wandoujia/p4/video/view/VideoPlayerModeChoiceView;)V

    invoke-direct {v1, v2, v3, v4}, Lfaq;-><init>(IILcom/wandoujia/mvc/Action;)V

    invoke-virtual {v0, v1}, Lcom/wandoujia/p4/button/views/StatefulProgressButton;->setState(Lfaq;)V

    .line 75
    return-void
.end method

.method public setBackButtonOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .parameter

    .prologue
    .line 184
    iget-object v0, p0, Lcom/wandoujia/p4/video/view/VideoPlayerModeChoiceView;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 185
    return-void
.end method
