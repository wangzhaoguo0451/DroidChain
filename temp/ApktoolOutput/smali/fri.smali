.class public final Lfri;
.super Landroid/widget/BaseExpandableListAdapter;
.source "FeedbackCategorySpinner.java"


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private c:Landroid/widget/ExpandableListView;

.field private d:Ljava/lang/String;

.field private synthetic e:Lcom/wandoujia/p4/feedback/FeedbackCategorySpinner;


# direct methods
.method public constructor <init>(Lcom/wandoujia/p4/feedback/FeedbackCategorySpinner;Ljava/util/List;Ljava/util/List;Landroid/widget/ExpandableListView;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
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
            "Landroid/widget/ExpandableListView;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 313
    iput-object p1, p0, Lfri;->e:Lcom/wandoujia/p4/feedback/FeedbackCategorySpinner;

    invoke-direct {p0}, Landroid/widget/BaseExpandableListAdapter;-><init>()V

    .line 314
    iput-object p2, p0, Lfri;->a:Ljava/util/List;

    .line 315
    iput-object p3, p0, Lfri;->b:Ljava/util/List;

    .line 316
    iput-object p4, p0, Lfri;->c:Landroid/widget/ExpandableListView;

    .line 317
    iput-object p5, p0, Lfri;->d:Ljava/lang/String;

    .line 318
    return-void
.end method


# virtual methods
.method public final getChild(II)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 360
    iget-object v0, p0, Lfri;->a:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 361
    iget-object v0, p0, Lfri;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 363
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getChildId(II)J
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 368
    int-to-long v0, p2

    return-wide v0
.end method

.method public final getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 395
    invoke-virtual {p5}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f030043

    invoke-static {v0, v1}, Lg;->a(Landroid/content/Context;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckedTextView;

    .line 398
    const v1, 0x7f0c018e

    invoke-virtual {v0, v1}, Landroid/widget/CheckedTextView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 399
    invoke-virtual {p0, p1, p2}, Lfri;->getChild(II)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 400
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 401
    iget-object v1, p0, Lfri;->e:Lcom/wandoujia/p4/feedback/FeedbackCategorySpinner;

    invoke-virtual {v1}, Lcom/wandoujia/p4/feedback/FeedbackCategorySpinner;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lfri;->e:Lcom/wandoujia/p4/feedback/FeedbackCategorySpinner;

    invoke-virtual {v1}, Lcom/wandoujia/p4/feedback/FeedbackCategorySpinner;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 402
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 404
    :cond_0
    return-object v0
.end method

.method public final getChildrenCount(I)I
    .locals 1
    .parameter

    .prologue
    .line 352
    iget-object v0, p0, Lfri;->a:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 353
    iget-object v0, p0, Lfri;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 355
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getGroup(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 339
    iget-object v0, p0, Lfri;->a:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 340
    iget-object v0, p0, Lfri;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 342
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getGroupCount()I
    .locals 1

    .prologue
    .line 331
    iget-object v0, p0, Lfri;->a:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 332
    iget-object v0, p0, Lfri;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 334
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getGroupId(I)J
    .locals 2
    .parameter

    .prologue
    .line 347
    int-to-long v0, p1

    return-wide v0
.end method

.method public final getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 379
    if-nez p3, :cond_1

    .line 380
    invoke-virtual {p4}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f030044

    invoke-static {v0, v1}, Lg;->a(Landroid/content/Context;I)Landroid/view/View;

    move-result-object v1

    :goto_0
    move-object v0, v1

    .line 383
    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Lfri;->getGroup(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 384
    iget-object v0, p0, Lfri;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lfri;->d:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lfri;->getGroup(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 386
    iget-object v0, p0, Lfri;->c:Landroid/widget/ExpandableListView;

    invoke-virtual {v0, p1}, Landroid/widget/ExpandableListView;->expandGroup(I)Z

    .line 387
    const/4 v0, 0x0

    iput-object v0, p0, Lfri;->d:Ljava/lang/String;

    .line 389
    :cond_0
    return-object v1

    :cond_1
    move-object v1, p3

    goto :goto_0
.end method

.method public final hasStableIds()Z
    .locals 1

    .prologue
    .line 373
    const/4 v0, 0x1

    return v0
.end method

.method public final isChildSelectable(II)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 410
    const/4 v0, 0x1

    return v0
.end method

.method public final onGroupExpanded(I)V
    .locals 2
    .parameter

    .prologue
    .line 322
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lfri;->getGroupCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 323
    if-eq v0, p1, :cond_0

    .line 324
    iget-object v1, p0, Lfri;->c:Landroid/widget/ExpandableListView;

    invoke-virtual {v1, v0}, Landroid/widget/ExpandableListView;->collapseGroup(I)Z

    .line 322
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 327
    :cond_1
    return-void
.end method
