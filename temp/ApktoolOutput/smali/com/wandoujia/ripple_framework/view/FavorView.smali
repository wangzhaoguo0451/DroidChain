.class public Lcom/wandoujia/ripple_framework/view/FavorView;
.super Landroid/widget/FrameLayout;
.source "FavorView.java"


# instance fields
.field private a:Landroid/widget/ImageView;

.field private b:Landroid/widget/ImageView;

.field private c:I

.field private d:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 27
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 28
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/wandoujia/ripple_framework/view/FavorView;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    invoke-direct {p0, p1, p2}, Lcom/wandoujia/ripple_framework/view/FavorView;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 37
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 38
    invoke-direct {p0, p1, p2}, Lcom/wandoujia/ripple_framework/view/FavorView;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    return-void
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 42
    sget-object v0, Lcom/wandoujia/ripple_framework/R$styleable;->FavorView:[I

    invoke-virtual {p1, p2, v0, v1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 43
    sget v1, Lcom/wandoujia/ripple_framework/R$styleable;->FavorView_favoredDrawable:I

    sget v2, Lcom/wandoujia/ripple_framework/R$drawable;->icon_favorited_red:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/wandoujia/ripple_framework/view/FavorView;->c:I

    .line 45
    sget v1, Lcom/wandoujia/ripple_framework/R$styleable;->FavorView_unfavoredDrawable:I

    sget v2, Lcom/wandoujia/ripple_framework/R$drawable;->icon_favorite_grey:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/wandoujia/ripple_framework/view/FavorView;->d:I

    .line 47
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 48
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/wandoujia/ripple_framework/R$layout;->rip_favor_view:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 49
    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 53
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 54
    sget v0, Lcom/wandoujia/ripple_framework/R$id;->favorited:I

    invoke-virtual {p0, v0}, Lcom/wandoujia/ripple_framework/view/FavorView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/wandoujia/ripple_framework/view/FavorView;->a:Landroid/widget/ImageView;

    .line 55
    sget v0, Lcom/wandoujia/ripple_framework/R$id;->unfavorited:I

    invoke-virtual {p0, v0}, Lcom/wandoujia/ripple_framework/view/FavorView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/wandoujia/ripple_framework/view/FavorView;->b:Landroid/widget/ImageView;

    .line 56
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/view/FavorView;->a:Landroid/widget/ImageView;

    iget v1, p0, Lcom/wandoujia/ripple_framework/view/FavorView;->c:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 57
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/view/FavorView;->b:Landroid/widget/ImageView;

    iget v1, p0, Lcom/wandoujia/ripple_framework/view/FavorView;->d:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 58
    return-void
.end method
