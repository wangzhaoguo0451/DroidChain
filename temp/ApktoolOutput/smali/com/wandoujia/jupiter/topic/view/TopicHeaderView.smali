.class public Lcom/wandoujia/jupiter/topic/view/TopicHeaderView;
.super Landroid/widget/RelativeLayout;
.source "TopicHeaderView.java"


# instance fields
.field public a:Landroid/widget/TextView;

.field public b:Landroid/widget/TextView;

.field public c:Landroid/view/View;

.field public d:Landroid/view/View;

.field public e:Landroid/view/View;

.field public f:Landroid/widget/FrameLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 33
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 41
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 42
    return-void
.end method


# virtual methods
.method public hasOverlappingRendering()Z
    .locals 1

    .prologue
    .line 62
    const/4 v0, 0x0

    return v0
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 50
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 51
    const v0, 0x7f0c0078

    invoke-virtual {p0, v0}, Lcom/wandoujia/jupiter/topic/view/TopicHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wandoujia/jupiter/topic/view/TopicHeaderView;->a:Landroid/widget/TextView;

    .line 52
    const v0, 0x7f0c01ae

    invoke-virtual {p0, v0}, Lcom/wandoujia/jupiter/topic/view/TopicHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wandoujia/jupiter/topic/view/TopicHeaderView;->b:Landroid/widget/TextView;

    .line 53
    const v0, 0x7f0c01a3

    invoke-virtual {p0, v0}, Lcom/wandoujia/jupiter/topic/view/TopicHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/jupiter/topic/view/TopicHeaderView;->c:Landroid/view/View;

    .line 54
    const v0, 0x7f0c0016

    invoke-virtual {p0, v0}, Lcom/wandoujia/jupiter/topic/view/TopicHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/jupiter/topic/view/TopicHeaderView;->d:Landroid/view/View;

    .line 55
    const v0, 0x7f0c0383

    invoke-virtual {p0, v0}, Lcom/wandoujia/jupiter/topic/view/TopicHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/jupiter/topic/view/TopicHeaderView;->e:Landroid/view/View;

    .line 56
    const v0, 0x7f0c0129

    invoke-virtual {p0, v0}, Lcom/wandoujia/jupiter/topic/view/TopicHeaderView;->findViewById(I)Landroid/view/View;

    .line 57
    const v0, 0x7f0c0384

    invoke-virtual {p0, v0}, Lcom/wandoujia/jupiter/topic/view/TopicHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/wandoujia/jupiter/topic/view/TopicHeaderView;->f:Landroid/widget/FrameLayout;

    .line 58
    return-void
.end method
