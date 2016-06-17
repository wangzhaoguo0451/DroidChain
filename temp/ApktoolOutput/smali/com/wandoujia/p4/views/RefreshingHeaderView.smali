.class public Lcom/wandoujia/p4/views/RefreshingHeaderView;
.super Landroid/widget/RelativeLayout;
.source "RefreshingHeaderView.java"


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 89
    iget-object v0, p0, Lcom/wandoujia/p4/views/RefreshingHeaderView;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 30
    return-void
.end method

.method public static a(Landroid/view/ViewGroup;)Lcom/wandoujia/p4/views/RefreshingHeaderView;
    .locals 1
    .parameter

    .prologue
    .line 48
    const v0, 0x7f0301dc

    invoke-static {p0, v0}, Lg;->b(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/views/RefreshingHeaderView;

    return-object v0
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 34
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 35
    const v0, 0x7f0c0442

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/views/RefreshingHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wandoujia/p4/views/RefreshingHeaderView;->a:Landroid/widget/TextView;

    .line 36
    const v0, 0x7f0c0441

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/views/RefreshingHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/p4/views/RefreshingHeaderView;->b:Landroid/view/View;

    .line 37
    invoke-virtual {p0, v1, v1}, Lcom/wandoujia/p4/views/RefreshingHeaderView;->measure(II)V

    .line 38
    invoke-virtual {p0}, Lcom/wandoujia/p4/views/RefreshingHeaderView;->getMeasuredHeight()I

    .line 39
    return-void
.end method

.method protected onMeasure(II)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 43
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    .line 44
    invoke-virtual {p0}, Lcom/wandoujia/p4/views/RefreshingHeaderView;->getMeasuredHeight()I

    .line 45
    return-void
.end method

.method public setLastCacheTime(J)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x2

    .line 52
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 53
    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 54
    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 55
    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 56
    invoke-virtual {p0}, Lcom/wandoujia/p4/views/RefreshingHeaderView;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0e0489

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    const/4 v4, 0x0

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v4

    const/4 v1, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v1

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 58
    iget-object v1, p0, Lcom/wandoujia/p4/views/RefreshingHeaderView;->a:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    return-void
.end method
