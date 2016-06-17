.class final Lfrg;
.super Ljava/lang/Object;
.source "FeedbackCategorySpinner.java"

# interfaces
.implements Landroid/widget/ExpandableListView$OnChildClickListener;


# instance fields
.field private synthetic a:Lfre;


# direct methods
.method constructor <init>(Lfre;)V
    .locals 0
    .parameter

    .prologue
    .line 191
    iput-object p1, p0, Lfrg;->a:Lfre;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChildClick(Landroid/widget/ExpandableListView;Landroid/view/View;IIJ)Z
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 195
    iget-object v0, p0, Lfrg;->a:Lfre;

    iget-object v0, v0, Lfre;->c:Lcom/wandoujia/p4/feedback/FeedbackCategorySpinner;

    invoke-static {v0}, Lcom/wandoujia/p4/feedback/FeedbackCategorySpinner;->b(Lcom/wandoujia/p4/feedback/FeedbackCategorySpinner;)Landroid/widget/ExpandableListView$OnChildClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 196
    iget-object v0, p0, Lfrg;->a:Lfre;

    iget-object v0, v0, Lfre;->c:Lcom/wandoujia/p4/feedback/FeedbackCategorySpinner;

    invoke-static {v0}, Lcom/wandoujia/p4/feedback/FeedbackCategorySpinner;->b(Lcom/wandoujia/p4/feedback/FeedbackCategorySpinner;)Landroid/widget/ExpandableListView$OnChildClickListener;

    move-result-object v1

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-wide v6, p5

    invoke-interface/range {v1 .. v7}, Landroid/widget/ExpandableListView$OnChildClickListener;->onChildClick(Landroid/widget/ExpandableListView;Landroid/view/View;IIJ)Z

    .line 198
    :cond_0
    iget-object v0, p0, Lfrg;->a:Lfre;

    iget-object v0, v0, Lfre;->a:Lhoj;

    if-eqz v0, :cond_1

    .line 199
    iget-object v0, p0, Lfrg;->a:Lfre;

    iget-object v0, v0, Lfre;->a:Lhoj;

    invoke-virtual {v0}, Lhoj;->dismiss()V

    .line 201
    :cond_1
    const/4 v0, 0x0

    return v0
.end method
