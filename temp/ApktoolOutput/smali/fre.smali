.class public final Lfre;
.super Ljava/lang/Object;
.source "FeedbackCategorySpinner.java"

# interfaces
.implements Lfrn;


# instance fields
.field a:Lhoj;

.field b:Landroid/widget/ExpandableListView;

.field final synthetic c:Lcom/wandoujia/p4/feedback/FeedbackCategorySpinner;


# direct methods
.method public constructor <init>(Lcom/wandoujia/p4/feedback/FeedbackCategorySpinner;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 146
    iput-object p1, p0, Lfre;->c:Lcom/wandoujia/p4/feedback/FeedbackCategorySpinner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 147
    check-cast p2, Landroid/widget/ExpandableListView;

    iput-object p2, p0, Lfre;->b:Landroid/widget/ExpandableListView;

    .line 148
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    .line 168
    iget-object v0, p0, Lfre;->a:Lhoj;

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lfre;->a:Lhoj;

    invoke-virtual {v0}, Lhoj;->show()V

    .line 185
    :goto_0
    return-void

    .line 174
    :cond_0
    iget-object v0, p0, Lfre;->c:Lcom/wandoujia/p4/feedback/FeedbackCategorySpinner;

    new-instance v1, Lhoq;

    iget-object v2, p0, Lfre;->c:Lcom/wandoujia/p4/feedback/FeedbackCategorySpinner;

    invoke-virtual {v2}, Lcom/wandoujia/p4/feedback/FeedbackCategorySpinner;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lhoq;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/wandoujia/p4/feedback/FeedbackCategorySpinner;->a(Lcom/wandoujia/p4/feedback/FeedbackCategorySpinner;Lhoq;)Lhoq;

    .line 175
    iget-object v0, p0, Lfre;->c:Lcom/wandoujia/p4/feedback/FeedbackCategorySpinner;

    invoke-static {v0}, Lcom/wandoujia/p4/feedback/FeedbackCategorySpinner;->a(Lcom/wandoujia/p4/feedback/FeedbackCategorySpinner;)Lhoq;

    move-result-object v0

    iget-object v1, p0, Lfre;->b:Landroid/widget/ExpandableListView;

    invoke-virtual {v0, v1}, Lhoq;->a(Landroid/view/View;)Lhoq;

    .line 176
    iget-object v0, p0, Lfre;->c:Lcom/wandoujia/p4/feedback/FeedbackCategorySpinner;

    invoke-static {v0}, Lcom/wandoujia/p4/feedback/FeedbackCategorySpinner;->a(Lcom/wandoujia/p4/feedback/FeedbackCategorySpinner;)Lhoq;

    move-result-object v0

    invoke-virtual {v0}, Lhoq;->b()Lhoj;

    move-result-object v0

    iput-object v0, p0, Lfre;->a:Lhoj;

    .line 177
    iget-object v0, p0, Lfre;->a:Lhoj;

    new-instance v1, Lfrf;

    invoke-direct {v1, p0}, Lfrf;-><init>(Lfre;)V

    invoke-virtual {v0, v1}, Lhoj;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto :goto_0
.end method

.method public final a(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V
    .locals 7
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
    .line 189
    iget-object v0, p0, Lfre;->b:Landroid/widget/ExpandableListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setGroupIndicator(Landroid/graphics/drawable/Drawable;)V

    .line 190
    iget-object v6, p0, Lfre;->b:Landroid/widget/ExpandableListView;

    new-instance v0, Lfri;

    iget-object v1, p0, Lfre;->c:Lcom/wandoujia/p4/feedback/FeedbackCategorySpinner;

    iget-object v4, p0, Lfre;->b:Landroid/widget/ExpandableListView;

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lfri;-><init>(Lcom/wandoujia/p4/feedback/FeedbackCategorySpinner;Ljava/util/List;Ljava/util/List;Landroid/widget/ExpandableListView;Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Landroid/widget/ExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 191
    iget-object v0, p0, Lfre;->b:Landroid/widget/ExpandableListView;

    new-instance v1, Lfrg;

    invoke-direct {v1, p0}, Lfrg;-><init>(Lfre;)V

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setOnChildClickListener(Landroid/widget/ExpandableListView$OnChildClickListener;)V

    .line 204
    iget-object v0, p0, Lfre;->b:Landroid/widget/ExpandableListView;

    new-instance v1, Lfrh;

    invoke-direct {v1, p0}, Lfrh;-><init>(Lfre;)V

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setOnGroupClickListener(Landroid/widget/ExpandableListView$OnGroupClickListener;)V

    .line 224
    return-void
.end method

.method public final dismiss()V
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lfre;->a:Lhoj;

    invoke-virtual {v0}, Lhoj;->dismiss()V

    .line 152
    const/4 v0, 0x0

    iput-object v0, p0, Lfre;->a:Lhoj;

    .line 153
    return-void
.end method

.method public final isShowing()Z
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lfre;->a:Lhoj;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lfre;->a:Lhoj;

    invoke-virtual {v0}, Lhoj;->isShowing()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
