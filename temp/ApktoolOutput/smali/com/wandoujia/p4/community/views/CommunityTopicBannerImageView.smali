.class public Lcom/wandoujia/p4/community/views/CommunityTopicBannerImageView;
.super Lcom/wandoujia/image/view/AsyncImageView;
.source "CommunityTopicBannerImageView.java"


# instance fields
.field private a:Landroid/graphics/Paint;

.field private b:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Lcom/wandoujia/image/view/AsyncImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/wandoujia/p4/community/views/CommunityTopicBannerImageView;->a:Landroid/graphics/Paint;

    .line 25
    iget-object v0, p0, Lcom/wandoujia/p4/community/views/CommunityTopicBannerImageView;->a:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 26
    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/community/views/CommunityTopicBannerImageView;->a(Z)V

    .line 31
    invoke-super {p0}, Lcom/wandoujia/image/view/AsyncImageView;->onAttachedToWindow()V

    .line 32
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .parameter

    .prologue
    .line 45
    invoke-super {p0, p1}, Lcom/wandoujia/image/view/AsyncImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 46
    invoke-virtual {p0}, Lcom/wandoujia/p4/community/views/CommunityTopicBannerImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wandoujia/p4/community/views/CommunityTopicBannerImageView;->b:Landroid/graphics/Rect;

    if-eqz v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/wandoujia/p4/community/views/CommunityTopicBannerImageView;->b:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/wandoujia/p4/community/views/CommunityTopicBannerImageView;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 50
    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 36
    invoke-super/range {p0 .. p5}, Lcom/wandoujia/image/view/AsyncImageView;->onLayout(ZIIII)V

    .line 37
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/wandoujia/p4/community/views/CommunityTopicBannerImageView;->b:Landroid/graphics/Rect;

    if-nez v0, :cond_1

    sub-int v0, p4, p2

    if-lez v0, :cond_1

    sub-int v0, p5, p3

    if-lez v0, :cond_1

    .line 38
    :cond_0
    iget-object v0, p0, Lcom/wandoujia/p4/community/views/CommunityTopicBannerImageView;->a:Landroid/graphics/Paint;

    const/high16 v1, -0x6700

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 39
    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/wandoujia/p4/community/views/CommunityTopicBannerImageView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/wandoujia/p4/community/views/CommunityTopicBannerImageView;->getHeight()I

    move-result v2

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/wandoujia/p4/community/views/CommunityTopicBannerImageView;->b:Landroid/graphics/Rect;

    .line 41
    :cond_1
    return-void
.end method
