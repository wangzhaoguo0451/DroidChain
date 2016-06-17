.class public Lcom/wandoujia/p4/feedback/FeedbackCategorySpinner;
.super Landroid/widget/TextView;
.source "FeedbackCategorySpinner.java"


# instance fields
.field private a:Lfrn;

.field private b:Z

.field private c:Landroid/widget/ExpandableListView$OnChildClickListener;

.field private d:Lhoq;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 46
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 31
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/wandoujia/p4/feedback/FeedbackCategorySpinner;->b:Z

    .line 47
    invoke-direct {p0, p1}, Lcom/wandoujia/p4/feedback/FeedbackCategorySpinner;->a(Landroid/content/Context;)V

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/wandoujia/p4/feedback/FeedbackCategorySpinner;->b:Z

    .line 42
    invoke-direct {p0, p1}, Lcom/wandoujia/p4/feedback/FeedbackCategorySpinner;->a(Landroid/content/Context;)V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 36
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 31
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/wandoujia/p4/feedback/FeedbackCategorySpinner;->b:Z

    .line 37
    invoke-direct {p0, p1}, Lcom/wandoujia/p4/feedback/FeedbackCategorySpinner;->a(Landroid/content/Context;)V

    .line 38
    return-void
.end method

.method public static synthetic a(Lcom/wandoujia/p4/feedback/FeedbackCategorySpinner;)Lhoq;
    .locals 1
    .parameter

    .prologue
    .line 28
    iget-object v0, p0, Lcom/wandoujia/p4/feedback/FeedbackCategorySpinner;->d:Lhoq;

    return-object v0
.end method

.method public static synthetic a(Lcom/wandoujia/p4/feedback/FeedbackCategorySpinner;Lhoq;)Lhoq;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 28
    iput-object p1, p0, Lcom/wandoujia/p4/feedback/FeedbackCategorySpinner;->d:Lhoq;

    return-object p1
.end method

.method private a(Landroid/content/Context;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 55
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 56
    const v1, 0x7f03001e

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 57
    invoke-virtual {p0}, Lcom/wandoujia/p4/feedback/FeedbackCategorySpinner;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02021d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 58
    const/16 v1, 0xb

    invoke-static {v1}, Lcom/wandoujia/base/utils/SystemUtil;->aboveApiLevel(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 59
    new-instance v1, Lfrj;

    invoke-direct {v1, p0, v0}, Lfrj;-><init>(Lcom/wandoujia/p4/feedback/FeedbackCategorySpinner;Landroid/view/View;)V

    .line 60
    iput-object v1, p0, Lcom/wandoujia/p4/feedback/FeedbackCategorySpinner;->a:Lfrn;

    .line 65
    :goto_0
    invoke-virtual {p0, v3}, Lcom/wandoujia/p4/feedback/FeedbackCategorySpinner;->setClickable(Z)V

    .line 66
    invoke-virtual {p0, v3}, Lcom/wandoujia/p4/feedback/FeedbackCategorySpinner;->setSelected(Z)V

    .line 67
    return-void

    .line 62
    :cond_0
    new-instance v1, Lfre;

    invoke-direct {v1, p0, v0}, Lfre;-><init>(Lcom/wandoujia/p4/feedback/FeedbackCategorySpinner;Landroid/view/View;)V

    .line 63
    iput-object v1, p0, Lcom/wandoujia/p4/feedback/FeedbackCategorySpinner;->a:Lfrn;

    goto :goto_0
.end method

.method public static synthetic b(Lcom/wandoujia/p4/feedback/FeedbackCategorySpinner;)Landroid/widget/ExpandableListView$OnChildClickListener;
    .locals 1
    .parameter

    .prologue
    .line 28
    iget-object v0, p0, Lcom/wandoujia/p4/feedback/FeedbackCategorySpinner;->c:Landroid/widget/ExpandableListView$OnChildClickListener;

    return-object v0
.end method

.method public static synthetic c(Lcom/wandoujia/p4/feedback/FeedbackCategorySpinner;)Lfrn;
    .locals 1
    .parameter

    .prologue
    .line 28
    iget-object v0, p0, Lcom/wandoujia/p4/feedback/FeedbackCategorySpinner;->a:Lfrn;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 81
    iget-object v0, p0, Lcom/wandoujia/p4/feedback/FeedbackCategorySpinner;->a:Lfrn;

    if-eqz v0, :cond_1

    .line 82
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/wandoujia/p4/feedback/FeedbackCategorySpinner;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 83
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/wandoujia/p4/feedback/FeedbackCategorySpinner;->b:Z

    .line 85
    :cond_0
    iget-object v0, p0, Lcom/wandoujia/p4/feedback/FeedbackCategorySpinner;->a:Lfrn;

    invoke-interface {v0, p1, p2, p3}, Lfrn;->a(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V

    .line 87
    :cond_1
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 101
    invoke-super {p0}, Landroid/widget/TextView;->onDetachedFromWindow()V

    .line 103
    iget-object v0, p0, Lcom/wandoujia/p4/feedback/FeedbackCategorySpinner;->a:Lfrn;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wandoujia/p4/feedback/FeedbackCategorySpinner;->a:Lfrn;

    invoke-interface {v0}, Lfrn;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/wandoujia/p4/feedback/FeedbackCategorySpinner;->a:Lfrn;

    invoke-interface {v0}, Lfrn;->dismiss()V

    .line 106
    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .parameter

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/wandoujia/p4/feedback/FeedbackCategorySpinner;->b:Z

    if-eqz v0, :cond_1

    .line 72
    iget-object v0, p0, Lcom/wandoujia/p4/feedback/FeedbackCategorySpinner;->a:Lfrn;

    invoke-interface {v0}, Lfrn;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/wandoujia/p4/feedback/FeedbackCategorySpinner;->a:Lfrn;

    invoke-interface {v0}, Lfrn;->a()V

    .line 75
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/wandoujia/p4/feedback/FeedbackCategorySpinner;->b:Z

    .line 77
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    .line 78
    return-void
.end method

.method public performClick()Z
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/wandoujia/p4/feedback/FeedbackCategorySpinner;->a:Lfrn;

    invoke-interface {v0}, Lfrn;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/wandoujia/p4/feedback/FeedbackCategorySpinner;->a:Lfrn;

    invoke-interface {v0}, Lfrn;->a()V

    .line 96
    :cond_0
    invoke-super {p0}, Landroid/widget/TextView;->performClick()Z

    move-result v0

    return v0
.end method

.method public setOnChildClickListener(Landroid/widget/ExpandableListView$OnChildClickListener;)V
    .locals 0
    .parameter

    .prologue
    .line 51
    iput-object p1, p0, Lcom/wandoujia/p4/feedback/FeedbackCategorySpinner;->c:Landroid/widget/ExpandableListView$OnChildClickListener;

    .line 52
    return-void
.end method
