.class public final Ldjj;
.super Lhow;
.source "CommonTab.java"

# interfaces
.implements Lcom/wandoujia/jupiter/library/view/TransitionTab;


# instance fields
.field private c:Lcom/wandoujia/ripple_framework/view/CustomFontTextView;

.field private d:Ljava/lang/CharSequence;

.field private e:I

.field private f:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/CharSequence;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Lhow;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 26
    iput-object p2, p0, Ldjj;->d:Ljava/lang/CharSequence;

    .line 27
    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;ILandroid/support/v4/view/ViewPager;)Landroid/view/View;
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Ldjj;->c:Lcom/wandoujia/ripple_framework/view/CustomFontTextView;

    if-nez v0, :cond_0

    .line 32
    new-instance v0, Lcom/wandoujia/ripple_framework/view/CustomFontTextView;

    invoke-direct {v0, p1}, Lcom/wandoujia/ripple_framework/view/CustomFontTextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Ldjj;->c:Lcom/wandoujia/ripple_framework/view/CustomFontTextView;

    .line 33
    iget-object v0, p0, Ldjj;->c:Lcom/wandoujia/ripple_framework/view/CustomFontTextView;

    sget-object v1, Lcom/wandoujia/ripple_framework/TypefaceManager$FONT;->BOLD:Lcom/wandoujia/ripple_framework/TypefaceManager$FONT;

    invoke-virtual {v0, v1}, Lcom/wandoujia/ripple_framework/view/CustomFontTextView;->setFont(Lcom/wandoujia/ripple_framework/TypefaceManager$FONT;)V

    .line 34
    iget-object v0, p0, Ldjj;->c:Lcom/wandoujia/ripple_framework/view/CustomFontTextView;

    iget-object v1, p0, Ldjj;->d:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lcom/wandoujia/ripple_framework/view/CustomFontTextView;->setText(Ljava/lang/CharSequence;)V

    .line 35
    iget-object v0, p0, Ldjj;->c:Lcom/wandoujia/ripple_framework/view/CustomFontTextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/wandoujia/ripple_framework/view/CustomFontTextView;->setFocusable(Z)V

    .line 36
    iget-object v0, p0, Ldjj;->c:Lcom/wandoujia/ripple_framework/view/CustomFontTextView;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Lcom/wandoujia/ripple_framework/view/CustomFontTextView;->setGravity(I)V

    .line 37
    iget-object v0, p0, Ldjj;->c:Lcom/wandoujia/ripple_framework/view/CustomFontTextView;

    invoke-virtual {v0}, Lcom/wandoujia/ripple_framework/view/CustomFontTextView;->setSingleLine()V

    .line 38
    iget-object v0, p0, Ldjj;->c:Lcom/wandoujia/ripple_framework/view/CustomFontTextView;

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0239

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/wandoujia/ripple_framework/view/CustomFontTextView;->setTextSize(IF)V

    .line 40
    iget-object v0, p0, Ldjj;->c:Lcom/wandoujia/ripple_framework/view/CustomFontTextView;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a01d7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wandoujia/ripple_framework/view/CustomFontTextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 42
    :cond_0
    iget-object v0, p0, Ldjj;->c:Lcom/wandoujia/ripple_framework/view/CustomFontTextView;

    new-instance v1, Ldjk;

    invoke-direct {v1, p3, p2}, Ldjk;-><init>(Landroid/support/v4/view/ViewPager;I)V

    invoke-virtual {v0, v1}, Lcom/wandoujia/ripple_framework/view/CustomFontTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 49
    iget-object v0, p0, Ldjj;->c:Lcom/wandoujia/ripple_framework/view/CustomFontTextView;

    return-object v0
.end method

.method public final a(Lcom/wandoujia/jupiter/library/view/TransitionTab$State;)V
    .locals 4
    .parameter

    .prologue
    .line 57
    iget-object v0, p0, Ldjj;->c:Lcom/wandoujia/ripple_framework/view/CustomFontTextView;

    if-nez v0, :cond_0

    .line 65
    :goto_0
    return-void

    .line 60
    :cond_0
    iget-object v0, p0, Ldjj;->c:Lcom/wandoujia/ripple_framework/view/CustomFontTextView;

    invoke-virtual {v0}, Lcom/wandoujia/ripple_framework/view/CustomFontTextView;->getCurrentTextColor()I

    move-result v0

    iput v0, p0, Ldjj;->e:I

    .line 61
    iget-object v0, p0, Ldjj;->c:Lcom/wandoujia/ripple_framework/view/CustomFontTextView;

    invoke-virtual {v0}, Lcom/wandoujia/ripple_framework/view/CustomFontTextView;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/wandoujia/jupiter/library/view/TransitionTab$State;->getTitleColorList()Landroid/content/res/ColorStateList;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    const v3, 0x10100a1

    aput v3, v1, v2

    iget v2, p0, Ldjj;->e:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    :goto_1
    iput v0, p0, Ldjj;->f:I

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/wandoujia/jupiter/library/view/TransitionTab$State;->getTitleColorList()Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    goto :goto_1
.end method

.method public final a(Lcom/wandoujia/jupiter/library/view/TransitionTab$State;F)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 69
    iget-object v0, p0, Ldjj;->c:Lcom/wandoujia/ripple_framework/view/CustomFontTextView;

    if-nez v0, :cond_0

    .line 74
    :goto_0
    return-void

    .line 72
    :cond_0
    iget-object v1, p0, Ldjj;->c:Lcom/wandoujia/ripple_framework/view/CustomFontTextView;

    sget-object v0, Ldjj;->a:Lcom/nineoldandroids/animation/ArgbEvaluator;

    iget v2, p0, Ldjj;->e:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p0, Ldjj;->f:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, p2, v2, v3}, Lcom/nineoldandroids/animation/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/wandoujia/ripple_framework/view/CustomFontTextView;->setTextColor(I)V

    goto :goto_0
.end method

.method public final b(Lcom/wandoujia/jupiter/library/view/TransitionTab$State;)V
    .locals 2
    .parameter

    .prologue
    .line 78
    iget-object v0, p0, Ldjj;->c:Lcom/wandoujia/ripple_framework/view/CustomFontTextView;

    if-nez v0, :cond_0

    .line 82
    :goto_0
    return-void

    .line 81
    :cond_0
    iget-object v0, p0, Ldjj;->c:Lcom/wandoujia/ripple_framework/view/CustomFontTextView;

    invoke-virtual {p1}, Lcom/wandoujia/jupiter/library/view/TransitionTab$State;->getTitleColorList()Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wandoujia/ripple_framework/view/CustomFontTextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_0
.end method
