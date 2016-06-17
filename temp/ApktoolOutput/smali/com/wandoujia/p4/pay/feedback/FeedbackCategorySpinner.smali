.class public Lcom/wandoujia/p4/pay/feedback/FeedbackCategorySpinner;
.super Landroid/widget/TextView;
.source "FeedbackCategorySpinner.java"


# instance fields
.field private builder:Landroid/app/AlertDialog$Builder;

.field private defaultExpanded:Z

.field private mOnItemSelectedListener:Landroid/widget/ExpandableListView$OnChildClickListener;

.field private mPopup:Lcom/wandoujia/p4/pay/feedback/FeedbackCategorySpinner$SpinnerPopup;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 45
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 30
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/wandoujia/p4/pay/feedback/FeedbackCategorySpinner;->defaultExpanded:Z

    .line 46
    invoke-direct {p0, p1}, Lcom/wandoujia/p4/pay/feedback/FeedbackCategorySpinner;->initView(Landroid/content/Context;)V

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/wandoujia/p4/pay/feedback/FeedbackCategorySpinner;->defaultExpanded:Z

    .line 41
    invoke-direct {p0, p1}, Lcom/wandoujia/p4/pay/feedback/FeedbackCategorySpinner;->initView(Landroid/content/Context;)V

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 35
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 30
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/wandoujia/p4/pay/feedback/FeedbackCategorySpinner;->defaultExpanded:Z

    .line 36
    invoke-direct {p0, p1}, Lcom/wandoujia/p4/pay/feedback/FeedbackCategorySpinner;->initView(Landroid/content/Context;)V

    .line 37
    return-void
.end method

.method static synthetic access$000(Lcom/wandoujia/p4/pay/feedback/FeedbackCategorySpinner;)Landroid/app/AlertDialog$Builder;
    .locals 1
    .parameter

    .prologue
    .line 27
    iget-object v0, p0, Lcom/wandoujia/p4/pay/feedback/FeedbackCategorySpinner;->builder:Landroid/app/AlertDialog$Builder;

    return-object v0
.end method

.method static synthetic access$002(Lcom/wandoujia/p4/pay/feedback/FeedbackCategorySpinner;Landroid/app/AlertDialog$Builder;)Landroid/app/AlertDialog$Builder;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 27
    iput-object p1, p0, Lcom/wandoujia/p4/pay/feedback/FeedbackCategorySpinner;->builder:Landroid/app/AlertDialog$Builder;

    return-object p1
.end method

.method static synthetic access$100(Lcom/wandoujia/p4/pay/feedback/FeedbackCategorySpinner;)Landroid/widget/ExpandableListView$OnChildClickListener;
    .locals 1
    .parameter

    .prologue
    .line 27
    iget-object v0, p0, Lcom/wandoujia/p4/pay/feedback/FeedbackCategorySpinner;->mOnItemSelectedListener:Landroid/widget/ExpandableListView$OnChildClickListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/wandoujia/p4/pay/feedback/FeedbackCategorySpinner;)Lcom/wandoujia/p4/pay/feedback/FeedbackCategorySpinner$SpinnerPopup;
    .locals 1
    .parameter

    .prologue
    .line 27
    iget-object v0, p0, Lcom/wandoujia/p4/pay/feedback/FeedbackCategorySpinner;->mPopup:Lcom/wandoujia/p4/pay/feedback/FeedbackCategorySpinner$SpinnerPopup;

    return-object v0
.end method

.method private initView(Landroid/content/Context;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 54
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 55
    const v1, 0x7f03001e

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 56
    invoke-virtual {p0}, Lcom/wandoujia/p4/pay/feedback/FeedbackCategorySpinner;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02021d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 57
    const/16 v1, 0xb

    invoke-static {v1}, Lcom/wandoujia/base/utils/SystemUtil;->aboveApiLevel(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 58
    new-instance v1, Lcom/wandoujia/p4/pay/feedback/FeedbackCategorySpinner$DropdownPopup;

    invoke-direct {v1, p0, v0}, Lcom/wandoujia/p4/pay/feedback/FeedbackCategorySpinner$DropdownPopup;-><init>(Lcom/wandoujia/p4/pay/feedback/FeedbackCategorySpinner;Landroid/view/View;)V

    .line 59
    iput-object v1, p0, Lcom/wandoujia/p4/pay/feedback/FeedbackCategorySpinner;->mPopup:Lcom/wandoujia/p4/pay/feedback/FeedbackCategorySpinner$SpinnerPopup;

    .line 64
    :goto_0
    invoke-virtual {p0, v3}, Lcom/wandoujia/p4/pay/feedback/FeedbackCategorySpinner;->setClickable(Z)V

    .line 65
    invoke-virtual {p0, v3}, Lcom/wandoujia/p4/pay/feedback/FeedbackCategorySpinner;->setSelected(Z)V

    .line 66
    return-void

    .line 61
    :cond_0
    new-instance v1, Lcom/wandoujia/p4/pay/feedback/FeedbackCategorySpinner$CategoryAlertDialog;

    invoke-direct {v1, p0, v0}, Lcom/wandoujia/p4/pay/feedback/FeedbackCategorySpinner$CategoryAlertDialog;-><init>(Lcom/wandoujia/p4/pay/feedback/FeedbackCategorySpinner;Landroid/view/View;)V

    .line 62
    iput-object v1, p0, Lcom/wandoujia/p4/pay/feedback/FeedbackCategorySpinner;->mPopup:Lcom/wandoujia/p4/pay/feedback/FeedbackCategorySpinner$SpinnerPopup;

    goto :goto_0
.end method


# virtual methods
.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 100
    invoke-super {p0}, Landroid/widget/TextView;->onDetachedFromWindow()V

    .line 102
    iget-object v0, p0, Lcom/wandoujia/p4/pay/feedback/FeedbackCategorySpinner;->mPopup:Lcom/wandoujia/p4/pay/feedback/FeedbackCategorySpinner$SpinnerPopup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wandoujia/p4/pay/feedback/FeedbackCategorySpinner;->mPopup:Lcom/wandoujia/p4/pay/feedback/FeedbackCategorySpinner$SpinnerPopup;

    invoke-interface {v0}, Lcom/wandoujia/p4/pay/feedback/FeedbackCategorySpinner$SpinnerPopup;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/wandoujia/p4/pay/feedback/FeedbackCategorySpinner;->mPopup:Lcom/wandoujia/p4/pay/feedback/FeedbackCategorySpinner$SpinnerPopup;

    invoke-interface {v0}, Lcom/wandoujia/p4/pay/feedback/FeedbackCategorySpinner$SpinnerPopup;->dismiss()V

    .line 105
    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .parameter

    .prologue
    .line 70
    iget-boolean v0, p0, Lcom/wandoujia/p4/pay/feedback/FeedbackCategorySpinner;->defaultExpanded:Z

    if-eqz v0, :cond_1

    .line 71
    iget-object v0, p0, Lcom/wandoujia/p4/pay/feedback/FeedbackCategorySpinner;->mPopup:Lcom/wandoujia/p4/pay/feedback/FeedbackCategorySpinner$SpinnerPopup;

    invoke-interface {v0}, Lcom/wandoujia/p4/pay/feedback/FeedbackCategorySpinner$SpinnerPopup;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/wandoujia/p4/pay/feedback/FeedbackCategorySpinner;->mPopup:Lcom/wandoujia/p4/pay/feedback/FeedbackCategorySpinner$SpinnerPopup;

    invoke-interface {v0}, Lcom/wandoujia/p4/pay/feedback/FeedbackCategorySpinner$SpinnerPopup;->show()V

    .line 74
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/wandoujia/p4/pay/feedback/FeedbackCategorySpinner;->defaultExpanded:Z

    .line 76
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    .line 77
    return-void
.end method

.method public performClick()Z
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/wandoujia/p4/pay/feedback/FeedbackCategorySpinner;->mPopup:Lcom/wandoujia/p4/pay/feedback/FeedbackCategorySpinner$SpinnerPopup;

    invoke-interface {v0}, Lcom/wandoujia/p4/pay/feedback/FeedbackCategorySpinner$SpinnerPopup;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/wandoujia/p4/pay/feedback/FeedbackCategorySpinner;->mPopup:Lcom/wandoujia/p4/pay/feedback/FeedbackCategorySpinner$SpinnerPopup;

    invoke-interface {v0}, Lcom/wandoujia/p4/pay/feedback/FeedbackCategorySpinner$SpinnerPopup;->show()V

    .line 95
    :cond_0
    invoke-super {p0}, Landroid/widget/TextView;->performClick()Z

    move-result v0

    return v0
.end method

.method public setData(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V
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
    .line 80
    iget-object v0, p0, Lcom/wandoujia/p4/pay/feedback/FeedbackCategorySpinner;->mPopup:Lcom/wandoujia/p4/pay/feedback/FeedbackCategorySpinner$SpinnerPopup;

    if-eqz v0, :cond_1

    .line 81
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/wandoujia/p4/pay/feedback/FeedbackCategorySpinner;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 82
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/wandoujia/p4/pay/feedback/FeedbackCategorySpinner;->defaultExpanded:Z

    .line 84
    :cond_0
    iget-object v0, p0, Lcom/wandoujia/p4/pay/feedback/FeedbackCategorySpinner;->mPopup:Lcom/wandoujia/p4/pay/feedback/FeedbackCategorySpinner$SpinnerPopup;

    invoke-interface {v0, p1, p2, p3}, Lcom/wandoujia/p4/pay/feedback/FeedbackCategorySpinner$SpinnerPopup;->setData(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V

    .line 86
    :cond_1
    return-void
.end method

.method public setOnChildClickListener(Landroid/widget/ExpandableListView$OnChildClickListener;)V
    .locals 0
    .parameter

    .prologue
    .line 50
    iput-object p1, p0, Lcom/wandoujia/p4/pay/feedback/FeedbackCategorySpinner;->mOnItemSelectedListener:Landroid/widget/ExpandableListView$OnChildClickListener;

    .line 51
    return-void
.end method
