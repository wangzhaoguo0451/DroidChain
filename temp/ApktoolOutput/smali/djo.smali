.class public final Ldjo;
.super Lhow;
.source "UpgradeTab.java"

# interfaces
.implements Lcom/wandoujia/jupiter/library/view/TransitionTab;
.implements Ldjn;


# instance fields
.field private c:Lexg;

.field private d:Landroid/view/View;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/TextView;

.field private g:I

.field private h:I

.field private i:I

.field private j:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lhow;-><init>(Ljava/lang/String;)V

    .line 33
    return-void
.end method

.method private a(I)V
    .locals 2
    .parameter

    .prologue
    .line 59
    iget-object v0, p0, Ldjo;->e:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 63
    :goto_0
    return-void

    .line 62
    :cond_0
    iget-object v1, p0, Ldjo;->e:Landroid/widget/TextView;

    if-gtz p1, :cond_1

    const-string v0, ""

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method static synthetic a(Ldjo;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 24
    invoke-direct {p0, p1}, Ldjo;->a(I)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;ILandroid/support/v4/view/ViewPager;)Landroid/view/View;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 37
    iget-object v0, p0, Ldjo;->d:Landroid/view/View;

    if-nez v0, :cond_0

    .line 38
    const v0, 0x7f030177

    invoke-static {p1, v0}, Lg;->a(Landroid/content/Context;I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Ldjo;->d:Landroid/view/View;

    .line 39
    iget-object v0, p0, Ldjo;->d:Landroid/view/View;

    const v1, 0x7f0c037b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Ldjo;->e:Landroid/widget/TextView;

    .line 40
    iget-object v0, p0, Ldjo;->d:Landroid/view/View;

    const v1, 0x7f0c0078

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Ldjo;->f:Landroid/widget/TextView;

    .line 42
    :cond_0
    iget-object v0, p0, Ldjo;->d:Landroid/view/View;

    new-instance v1, Ldjp;

    invoke-direct {v1, p3, p2}, Ldjp;-><init>(Landroid/support/v4/view/ViewPager;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 49
    sget-object v0, Lham;->f:Lham;

    const-string v1, "app"

    invoke-virtual {v0, v1}, Lham;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/appmanager/AppManager;

    invoke-virtual {v0}, Lcom/wandoujia/appmanager/AppManager;->i()Ljava/util/List;

    move-result-object v1

    .line 52
    sget-object v0, Lham;->f:Lham;

    const-string v2, "app"

    invoke-virtual {v0, v2}, Lham;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/appmanager/AppManager;

    invoke-virtual {v0}, Lcom/wandoujia/appmanager/AppManager;->k()Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 54
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {p0, v0}, Ldjo;->a(I)V

    .line 55
    iget-object v0, p0, Ldjo;->d:Landroid/view/View;

    return-object v0
.end method

.method public final a()V
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Ldjo;->c:Lexg;

    if-eqz v0, :cond_0

    .line 77
    :goto_0
    return-void

    .line 70
    :cond_0
    new-instance v0, Ldjq;

    invoke-direct {v0, p0}, Ldjq;-><init>(Ldjo;)V

    iput-object v0, p0, Ldjo;->c:Lexg;

    .line 76
    iget-object v0, p0, Ldjo;->c:Lexg;

    invoke-static {v0}, Lewx;->a(Lexg;)V

    goto :goto_0
.end method

.method public final a(Lcom/wandoujia/jupiter/library/view/TransitionTab$State;)V
    .locals 6
    .parameter

    .prologue
    const v5, 0x10100a1

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 91
    iget-object v0, p0, Ldjo;->d:Landroid/view/View;

    if-nez v0, :cond_0

    .line 104
    :goto_0
    return-void

    .line 94
    :cond_0
    iget-object v0, p0, Ldjo;->e:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v0

    iput v0, p0, Ldjo;->g:I

    .line 95
    iget-object v0, p0, Ldjo;->f:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v0

    iput v0, p0, Ldjo;->h:I

    .line 96
    iget-object v0, p0, Ldjo;->d:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/wandoujia/jupiter/library/view/TransitionTab$State;->getNumColorList()Landroid/content/res/ColorStateList;

    move-result-object v0

    new-array v1, v4, [I

    aput v5, v1, v3

    iget v2, p0, Ldjo;->g:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    :goto_1
    iput v0, p0, Ldjo;->i:I

    .line 100
    iget-object v0, p0, Ldjo;->d:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/wandoujia/jupiter/library/view/TransitionTab$State;->getTitleColorList()Landroid/content/res/ColorStateList;

    move-result-object v0

    new-array v1, v4, [I

    aput v5, v1, v3

    iget v2, p0, Ldjo;->h:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    :goto_2
    iput v0, p0, Ldjo;->j:I

    goto :goto_0

    .line 96
    :cond_1
    invoke-virtual {p1}, Lcom/wandoujia/jupiter/library/view/TransitionTab$State;->getNumColorList()Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    goto :goto_1

    .line 100
    :cond_2
    invoke-virtual {p1}, Lcom/wandoujia/jupiter/library/view/TransitionTab$State;->getTitleColorList()Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    goto :goto_2
.end method

.method public final a(Lcom/wandoujia/jupiter/library/view/TransitionTab$State;F)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 108
    iget-object v0, p0, Ldjo;->d:Landroid/view/View;

    if-nez v0, :cond_0

    .line 114
    :goto_0
    return-void

    .line 111
    :cond_0
    iget-object v1, p0, Ldjo;->e:Landroid/widget/TextView;

    sget-object v0, Ldjo;->a:Lcom/nineoldandroids/animation/ArgbEvaluator;

    iget v2, p0, Ldjo;->g:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p0, Ldjo;->i:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, p2, v2, v3}, Lcom/nineoldandroids/animation/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 112
    iget-object v1, p0, Ldjo;->f:Landroid/widget/TextView;

    sget-object v0, Ldjo;->a:Lcom/nineoldandroids/animation/ArgbEvaluator;

    iget v2, p0, Ldjo;->h:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p0, Ldjo;->j:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, p2, v2, v3}, Lcom/nineoldandroids/animation/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 81
    const/4 v0, 0x0

    iput-object v0, p0, Ldjo;->c:Lexg;

    .line 82
    return-void
.end method

.method public final b(Lcom/wandoujia/jupiter/library/view/TransitionTab$State;)V
    .locals 2
    .parameter

    .prologue
    .line 118
    iget-object v0, p0, Ldjo;->d:Landroid/view/View;

    if-nez v0, :cond_0

    .line 123
    :goto_0
    return-void

    .line 121
    :cond_0
    iget-object v0, p0, Ldjo;->f:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/wandoujia/jupiter/library/view/TransitionTab$State;->getTitleColorList()Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 122
    iget-object v0, p0, Ldjo;->e:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/wandoujia/jupiter/library/view/TransitionTab$State;->getNumColorList()Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_0
.end method
