.class public Lcom/wandoujia/phoenix2/av/view/PairTextContainer;
.super Landroid/widget/LinearLayout;
.source "PairTextContainer.java"


# instance fields
.field public a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/lang/Integer;

.field private c:Ljava/lang/Integer;

.field private d:Ljava/lang/Integer;

.field private e:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 31
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 26
    const/4 v0, -0x1

    iput v0, p0, Lcom/wandoujia/phoenix2/av/view/PairTextContainer;->e:I

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/wandoujia/phoenix2/av/view/PairTextContainer;->a:Ljava/util/List;

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    const/4 v0, -0x1

    iput v0, p0, Lcom/wandoujia/phoenix2/av/view/PairTextContainer;->e:I

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/wandoujia/phoenix2/av/view/PairTextContainer;->a:Ljava/util/List;

    .line 36
    invoke-virtual {p0}, Lcom/wandoujia/phoenix2/av/view/PairTextContainer;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/wandoujia/phoenix2/R$styleable;->PairTextContainer:[I

    invoke-virtual {v0, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/wandoujia/phoenix2/av/view/PairTextContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0173

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/wandoujia/phoenix2/av/view/PairTextContainer;->b:Ljava/lang/Integer;

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/wandoujia/phoenix2/av/view/PairTextContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a00db

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/wandoujia/phoenix2/av/view/PairTextContainer;->c:Ljava/lang/Integer;

    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/wandoujia/phoenix2/av/view/PairTextContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0148

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/phoenix2/av/view/PairTextContainer;->d:Ljava/lang/Integer;

    .line 37
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)V
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 91
    const v0, 0x7f0301da

    invoke-static {p0, v0}, Lg;->b(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 94
    const v1, 0x7f0c043e

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 95
    iget-object v2, p0, Lcom/wandoujia/phoenix2/av/view/PairTextContainer;->c:Ljava/lang/Integer;

    if-eqz v2, :cond_0

    .line 96
    iget-object v2, p0, Lcom/wandoujia/phoenix2/av/view/PairTextContainer;->c:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 98
    :cond_0
    const v2, 0x7f0c043f

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 99
    iget-object v3, p0, Lcom/wandoujia/phoenix2/av/view/PairTextContainer;->d:Ljava/lang/Integer;

    if-eqz v3, :cond_1

    .line 100
    iget-object v3, p0, Lcom/wandoujia/phoenix2/av/view/PairTextContainer;->d:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 102
    :cond_1
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 103
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 104
    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 105
    invoke-virtual {v2, p3}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 106
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 107
    iget-object v3, p0, Lcom/wandoujia/phoenix2/av/view/PairTextContainer;->b:Ljava/lang/Integer;

    if-eqz v3, :cond_2

    .line 108
    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v4, p0, Lcom/wandoujia/phoenix2/av/view/PairTextContainer;->b:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 109
    invoke-virtual {v2}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v3, p0, Lcom/wandoujia/phoenix2/av/view/PairTextContainer;->b:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 111
    :cond_2
    iget v2, p0, Lcom/wandoujia/phoenix2/av/view/PairTextContainer;->e:I

    if-lez v2, :cond_3

    .line 112
    iget v2, p0, Lcom/wandoujia/phoenix2/av/view/PairTextContainer;->e:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setWidth(I)V

    .line 114
    :cond_3
    invoke-virtual {p0, v0}, Lcom/wandoujia/phoenix2/av/view/PairTextContainer;->addView(Landroid/view/View;)V

    .line 115
    iget-object v1, p0, Lcom/wandoujia/phoenix2/av/view/PairTextContainer;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 116
    return-void
.end method

.method public setData(Ljava/util/List;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Landroid/util/Pair",
            "<+",
            "Ljava/lang/CharSequence;",
            "+",
            "Ljava/lang/CharSequence;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 59
    invoke-virtual {p0}, Lcom/wandoujia/phoenix2/av/view/PairTextContainer;->removeAllViews()V

    .line 60
    iget-object v0, p0, Lcom/wandoujia/phoenix2/av/view/PairTextContainer;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 61
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 62
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/CharSequence;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/CharSequence;

    const/4 v3, 0x1

    invoke-virtual {p0, v1, v0, v3}, Lcom/wandoujia/phoenix2/av/view/PairTextContainer;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)V

    goto :goto_0

    .line 64
    :cond_0
    return-void
.end method

.method public setLeftMiniWidth(I)V
    .locals 0
    .parameter

    .prologue
    .line 86
    iput p1, p0, Lcom/wandoujia/phoenix2/av/view/PairTextContainer;->e:I

    .line 87
    return-void
.end method

.method public setSpannableData(Ljava/util/List;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 53
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 54
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/CharSequence;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/CharSequence;

    const/4 v3, 0x1

    invoke-virtual {p0, v1, v0, v3}, Lcom/wandoujia/phoenix2/av/view/PairTextContainer;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)V

    goto :goto_0

    .line 56
    :cond_0
    return-void
.end method
