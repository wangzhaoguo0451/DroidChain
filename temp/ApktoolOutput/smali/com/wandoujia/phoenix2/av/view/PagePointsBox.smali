.class public Lcom/wandoujia/phoenix2/av/view/PagePointsBox;
.super Landroid/widget/LinearLayout;
.source "PagePointsBox.java"


# instance fields
.field private a:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 17
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 14
    const/4 v0, 0x0

    iput v0, p0, Lcom/wandoujia/phoenix2/av/view/PagePointsBox;->a:I

    .line 18
    invoke-direct {p0}, Lcom/wandoujia/phoenix2/av/view/PagePointsBox;->a()V

    .line 19
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 14
    const/4 v0, 0x0

    iput v0, p0, Lcom/wandoujia/phoenix2/av/view/PagePointsBox;->a:I

    .line 23
    invoke-direct {p0}, Lcom/wandoujia/phoenix2/av/view/PagePointsBox;->a()V

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 27
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 14
    const/4 v0, 0x0

    iput v0, p0, Lcom/wandoujia/phoenix2/av/view/PagePointsBox;->a:I

    .line 28
    invoke-direct {p0}, Lcom/wandoujia/phoenix2/av/view/PagePointsBox;->a()V

    .line 29
    return-void
.end method

.method private a()V
    .locals 1

    .prologue
    .line 32
    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lcom/wandoujia/phoenix2/av/view/PagePointsBox;->setGravity(I)V

    .line 33
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/wandoujia/phoenix2/av/view/PagePointsBox;->setOrientation(I)V

    .line 34
    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 37
    iput v0, p0, Lcom/wandoujia/phoenix2/av/view/PagePointsBox;->a:I

    .line 38
    invoke-virtual {p0}, Lcom/wandoujia/phoenix2/av/view/PagePointsBox;->removeAllViews()V

    .line 39
    invoke-virtual {p0}, Lcom/wandoujia/phoenix2/av/view/PagePointsBox;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b008b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 41
    invoke-virtual {p0}, Lcom/wandoujia/phoenix2/av/view/PagePointsBox;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b008e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 43
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 45
    invoke-virtual {v3, v2, v0, v2, v0}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 46
    :goto_0
    if-ge v0, p1, :cond_1

    .line 47
    new-instance v1, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/wandoujia/phoenix2/av/view/PagePointsBox;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 48
    if-nez v0, :cond_0

    .line 49
    const v2, 0x7f020430

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 53
    :goto_1
    invoke-virtual {p0, v1, v3}, Lcom/wandoujia/phoenix2/av/view/PagePointsBox;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 46
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 51
    :cond_0
    const v2, 0x7f02042f

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 55
    :cond_1
    return-void
.end method

.method public final b(I)V
    .locals 2
    .parameter

    .prologue
    .line 58
    iget v0, p0, Lcom/wandoujia/phoenix2/av/view/PagePointsBox;->a:I

    if-eq p1, v0, :cond_0

    .line 59
    invoke-virtual {p0, p1}, Lcom/wandoujia/phoenix2/av/view/PagePointsBox;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f020430

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 61
    iget v0, p0, Lcom/wandoujia/phoenix2/av/view/PagePointsBox;->a:I

    invoke-virtual {p0, v0}, Lcom/wandoujia/phoenix2/av/view/PagePointsBox;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f02042f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 63
    iput p1, p0, Lcom/wandoujia/phoenix2/av/view/PagePointsBox;->a:I

    .line 66
    :cond_0
    return-void
.end method
