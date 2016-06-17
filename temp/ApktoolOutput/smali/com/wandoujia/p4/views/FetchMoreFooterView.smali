.class public Lcom/wandoujia/p4/views/FetchMoreFooterView;
.super Landroid/widget/FrameLayout;
.source "FetchMoreFooterView.java"


# instance fields
.field private a:Landroid/view/View;

.field private b:Landroid/widget/ImageView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 26
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 34
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 35
    return-void
.end method

.method public static a(Landroid/view/ViewGroup;)Lcom/wandoujia/p4/views/FetchMoreFooterView;
    .locals 1
    .parameter

    .prologue
    .line 47
    const v0, 0x7f0301d4

    invoke-static {p0, v0}, Lg;->b(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/views/FetchMoreFooterView;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 51
    iget-object v0, p0, Lcom/wandoujia/p4/views/FetchMoreFooterView;->a:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 52
    iget-object v0, p0, Lcom/wandoujia/p4/views/FetchMoreFooterView;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 53
    iget-object v0, p0, Lcom/wandoujia/p4/views/FetchMoreFooterView;->b:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 54
    iget-object v0, p0, Lcom/wandoujia/p4/views/FetchMoreFooterView;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 55
    return-void
.end method

.method public final b()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 58
    iget-object v0, p0, Lcom/wandoujia/p4/views/FetchMoreFooterView;->a:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 59
    iget-object v0, p0, Lcom/wandoujia/p4/views/FetchMoreFooterView;->b:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 60
    iget-object v0, p0, Lcom/wandoujia/p4/views/FetchMoreFooterView;->b:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/wandoujia/p4/views/FetchMoreFooterView;->d:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 61
    iget-object v0, p0, Lcom/wandoujia/p4/views/FetchMoreFooterView;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 62
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 39
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 40
    const v0, 0x7f0c0249

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/views/FetchMoreFooterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/p4/views/FetchMoreFooterView;->a:Landroid/view/View;

    .line 41
    const v0, 0x7f0c0439

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/views/FetchMoreFooterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/wandoujia/p4/views/FetchMoreFooterView;->b:Landroid/widget/ImageView;

    .line 42
    const v0, 0x7f0c043a

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/views/FetchMoreFooterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wandoujia/p4/views/FetchMoreFooterView;->c:Landroid/widget/TextView;

    .line 43
    invoke-virtual {p0}, Lcom/wandoujia/p4/views/FetchMoreFooterView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020350

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/p4/views/FetchMoreFooterView;->d:Landroid/graphics/drawable/Drawable;

    .line 44
    return-void
.end method
