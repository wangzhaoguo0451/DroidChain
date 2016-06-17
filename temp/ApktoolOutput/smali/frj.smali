.class public final Lfrj;
.super Landroid/widget/PopupWindow;
.source "FeedbackCategorySpinner.java"

# interfaces
.implements Lfrn;


# instance fields
.field final synthetic a:Lcom/wandoujia/p4/feedback/FeedbackCategorySpinner;

.field private b:Landroid/view/View;

.field private c:Landroid/widget/ExpandableListView;


# direct methods
.method public constructor <init>(Lcom/wandoujia/p4/feedback/FeedbackCategorySpinner;Landroid/view/View;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 232
    iput-object p1, p0, Lfrj;->a:Lcom/wandoujia/p4/feedback/FeedbackCategorySpinner;

    .line 233
    invoke-direct {p0, p2}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;)V

    .line 234
    iput-object p2, p0, Lfrj;->b:Landroid/view/View;

    .line 236
    new-instance v0, Lfrk;

    invoke-direct {v0, p0}, Lfrk;-><init>(Lfrj;)V

    invoke-virtual {p0, v0}, Lfrj;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 243
    return-void
.end method

.method static synthetic a(Lfrj;)Landroid/widget/ExpandableListView;
    .locals 1
    .parameter

    .prologue
    .line 227
    iget-object v0, p0, Lfrj;->c:Landroid/widget/ExpandableListView;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 295
    invoke-virtual {p0, v0}, Lfrj;->setWidth(I)V

    .line 296
    invoke-virtual {p0, v0}, Lfrj;->setHeight(I)V

    .line 297
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lfrj;->setFocusable(Z)V

    .line 298
    invoke-virtual {p0}, Lfrj;->update()V

    .line 299
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    invoke-virtual {p0, v0}, Lfrj;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 300
    iget-object v0, p0, Lfrj;->a:Lcom/wandoujia/p4/feedback/FeedbackCategorySpinner;

    invoke-virtual {p0, v0}, Lfrj;->showAsDropDown(Landroid/view/View;)V

    .line 301
    return-void
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
    .line 247
    iget-object v0, p0, Lfrj;->b:Landroid/view/View;

    check-cast v0, Landroid/widget/ExpandableListView;

    iput-object v0, p0, Lfrj;->c:Landroid/widget/ExpandableListView;

    .line 248
    iget-object v0, p0, Lfrj;->c:Landroid/widget/ExpandableListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setGroupIndicator(Landroid/graphics/drawable/Drawable;)V

    .line 249
    iget-object v6, p0, Lfrj;->c:Landroid/widget/ExpandableListView;

    new-instance v0, Lfri;

    iget-object v1, p0, Lfrj;->a:Lcom/wandoujia/p4/feedback/FeedbackCategorySpinner;

    iget-object v4, p0, Lfrj;->c:Landroid/widget/ExpandableListView;

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lfri;-><init>(Lcom/wandoujia/p4/feedback/FeedbackCategorySpinner;Ljava/util/List;Ljava/util/List;Landroid/widget/ExpandableListView;Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Landroid/widget/ExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 250
    iget-object v0, p0, Lfrj;->c:Landroid/widget/ExpandableListView;

    new-instance v1, Lfrl;

    invoke-direct {v1, p0}, Lfrl;-><init>(Lfrj;)V

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setOnChildClickListener(Landroid/widget/ExpandableListView$OnChildClickListener;)V

    .line 263
    iget-object v0, p0, Lfrj;->c:Landroid/widget/ExpandableListView;

    new-instance v1, Lfrm;

    invoke-direct {v1, p0}, Lfrm;-><init>(Lfrj;)V

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setOnGroupClickListener(Landroid/widget/ExpandableListView$OnGroupClickListener;)V

    .line 283
    return-void
.end method
