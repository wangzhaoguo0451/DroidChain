.class public Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;
.super Lcom/wandoujia/p4/views/ContentListView;
.source "StickyListHeadersListView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation


# instance fields
.field private a:Z

.field private b:I

.field private c:Landroid/graphics/drawable/Drawable;

.field private d:Z

.field private e:Z

.field private f:Ljava/lang/Long;

.field private g:Laid;

.field private h:Ldd;

.field private i:I

.field private j:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private k:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;

.field private l:Z

.field private m:Z

.field private n:Z

.field private o:Landroid/widget/AdapterView$OnItemLongClickListener;

.field private p:Landroid/widget/AbsListView$MultiChoiceModeListener;

.field private final q:Landroid/database/DataSetObserver;

.field private final r:Landroid/widget/AdapterView$OnItemLongClickListener;

.field private final s:Landroid/widget/AbsListView$OnScrollListener;

.field private t:Landroid/widget/AbsListView$MultiChoiceModeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 105
    const v0, 0x1010074

    invoke-direct {p0, p1, p2, v0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 106
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 110
    invoke-direct {p0, p1, p2, p3}, Lcom/wandoujia/p4/views/ContentListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 38
    iput-boolean v1, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->a:Z

    .line 43
    iput-object v3, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->f:Ljava/lang/Long;

    .line 49
    iput-boolean v1, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->l:Z

    .line 50
    iput-boolean v2, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->m:Z

    .line 55
    new-instance v0, Laif;

    invoke-direct {v0, p0}, Laif;-><init>(Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;)V

    iput-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->q:Landroid/database/DataSetObserver;

    .line 69
    new-instance v0, Laig;

    invoke-direct {v0, p0}, Laig;-><init>(Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;)V

    iput-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->r:Landroid/widget/AdapterView$OnItemLongClickListener;

    .line 83
    new-instance v0, Laih;

    invoke-direct {v0, p0}, Laih;-><init>(Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;)V

    iput-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->s:Landroid/widget/AbsListView$OnScrollListener;

    .line 111
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->s:Landroid/widget/AbsListView$OnScrollListener;

    invoke-super {p0, v0}, Lcom/wandoujia/p4/views/ContentListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 114
    invoke-super {p0, v3}, Lcom/wandoujia/p4/views/ContentListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 115
    invoke-super {p0, v2}, Lcom/wandoujia/p4/views/ContentListView;->setDividerHeight(I)V

    .line 116
    invoke-virtual {p0, v2}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->setVerticalFadingEdgeEnabled(Z)V

    .line 118
    new-array v0, v1, [I

    const v1, 0x10100fc

    aput v1, v0, v2

    .line 120
    invoke-virtual {p1, p2, v0, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 122
    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->n:Z

    .line 123
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 125
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 126
    new-instance v0, Laii;

    invoke-direct {v0, p0}, Laii;-><init>(Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;)V

    iput-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->t:Landroid/widget/AbsListView$MultiChoiceModeListener;

    .line 128
    :cond_0
    return-void
.end method

.method public static synthetic a(Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;I)V
    .locals 14
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 31
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->g:Laid;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->g:Laid;

    invoke-virtual {v0}, Laid;->getCount()I

    move-result v3

    if-eqz v3, :cond_0

    iget-boolean v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->a:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->getHeaderViewsCount()I

    move-result v10

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xb

    if-ge v0, v4, :cond_3

    invoke-virtual {p0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->getChildCount()I

    move-result v4

    move v0, v1

    :goto_1
    if-ge v0, v4, :cond_2

    invoke-virtual {p0, v0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v5

    if-ltz v5, :cond_6

    add-int/2addr p1, v0

    :cond_2
    iget-boolean v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->d:Z

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->getPaddingTop()I

    move-result v0

    if-lez v0, :cond_3

    if-lez v4, :cond_3

    invoke-super {p0, v1}, Lcom/wandoujia/p4/views/ContentListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    if-lez v0, :cond_3

    if-lez p1, :cond_3

    add-int/lit8 p1, p1, -0x1

    :cond_3
    sub-int v11, p1, v10

    if-ltz v11, :cond_4

    add-int/lit8 v0, v3, -0x1

    if-le v11, v0, :cond_7

    :cond_4
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->f:Ljava/lang/Long;

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->m:Z

    if-eqz v0, :cond_0

    :cond_5
    iput-object v7, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->f:Ljava/lang/Long;

    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->k:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;

    invoke-virtual {v0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;->a()Landroid/view/View;

    invoke-direct {p0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->b()V

    invoke-virtual {p0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->invalidate()V

    iput-boolean v1, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->m:Z

    goto :goto_0

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_7
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->g:Laid;

    invoke-virtual {v0, v11}, Laid;->a(I)J

    move-result-wide v4

    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->f:Ljava/lang/Long;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->f:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    cmp-long v0, v8, v4

    if-eqz v0, :cond_18

    :cond_8
    iput v11, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->i:I

    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->g:Laid;

    iget v3, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->i:I

    iget-object v6, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->k:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;

    invoke-virtual {v6}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;->a()Landroid/view/View;

    move-result-object v6

    iget-object v8, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->k:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;

    invoke-virtual {v0, v3, v6, v8}, Laid;->a(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v3, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->k:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;

    invoke-virtual {v3, v0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;->setHeader(Landroid/view/View;)V

    move v0, v2

    :goto_2
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iput-object v3, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->f:Ljava/lang/Long;

    invoke-virtual {p0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->getChildCount()I

    move-result v12

    if-lez v12, :cond_0

    const v5, 0x7fffffff

    move v9, v1

    move v3, v1

    :goto_3
    if-ge v9, v12, :cond_e

    invoke-virtual {p0, v9}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    iget-object v4, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->j:Ljava/util/ArrayList;

    if-eqz v4, :cond_c

    iget-object v4, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->j:Ljava/util/ArrayList;

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    move v4, v2

    :goto_4
    iget-boolean v6, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->d:Z

    if-eqz v6, :cond_d

    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v6

    invoke-virtual {p0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->getPaddingTop()I

    move-result v13

    sub-int/2addr v6, v13

    :goto_5
    if-ltz v6, :cond_17

    if-eqz v7, :cond_b

    if-nez v3, :cond_9

    iget-object v13, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->g:Laid;

    invoke-virtual {v13, v7}, Laid;->a(Landroid/view/View;)Z

    move-result v13

    if-eqz v13, :cond_b

    :cond_9
    if-nez v4, :cond_a

    iget-object v13, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->g:Laid;

    invoke-virtual {v13, v8}, Laid;->a(Landroid/view/View;)Z

    move-result v13

    if-eqz v13, :cond_17

    :cond_a
    if-ge v6, v5, :cond_17

    :cond_b
    move v3, v4

    move-object v5, v8

    move v4, v6

    :goto_6
    add-int/lit8 v6, v9, 0x1

    move v9, v6

    move-object v7, v5

    move v5, v4

    goto :goto_3

    :cond_c
    move v4, v1

    goto :goto_4

    :cond_d
    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v6

    goto :goto_5

    :cond_e
    iget-object v2, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->k:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;

    invoke-virtual {v2}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;->getHeaderHeight()I

    move-result v2

    if-eqz v7, :cond_15

    if-nez v3, :cond_f

    iget-object v3, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->g:Laid;

    invoke-virtual {v3, v7}, Laid;->a(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_15

    :cond_f
    if-ne v11, v10, :cond_13

    invoke-virtual {p0, v1}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    if-lez v3, :cond_13

    iget-boolean v3, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->d:Z

    if-nez v3, :cond_13

    :cond_10
    :goto_7
    iget-object v2, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->k:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;

    invoke-virtual {v2}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;->getHeaderBottomPosition()I

    move-result v2

    if-ne v2, v1, :cond_11

    if-eqz v0, :cond_12

    :cond_11
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->k:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;

    invoke-virtual {v0, v1}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;->setHeaderBottomPosition(I)V

    :cond_12
    invoke-direct {p0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->b()V

    goto/16 :goto_0

    :cond_13
    iget-boolean v1, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->d:Z

    if-eqz v1, :cond_14

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-virtual {p0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->getPaddingTop()I

    move-result v3

    add-int/2addr v3, v2

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-virtual {p0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->getPaddingTop()I

    move-result v3

    if-ge v1, v3, :cond_10

    invoke-virtual {p0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->getPaddingTop()I

    move-result v1

    add-int/2addr v1, v2

    goto :goto_7

    :cond_14
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    if-gez v1, :cond_10

    move v1, v2

    goto :goto_7

    :cond_15
    iget-boolean v1, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->d:Z

    if-eqz v1, :cond_16

    invoke-virtual {p0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->getPaddingTop()I

    move-result v1

    add-int/2addr v1, v2

    goto :goto_7

    :cond_16
    move v1, v2

    goto :goto_7

    :cond_17
    move v4, v5

    move-object v5, v7

    goto :goto_6

    :cond_18
    move v0, v1

    goto/16 :goto_2
.end method

.method private static a()Z
    .locals 2

    .prologue
    .line 297
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    const/4 v1, 0x5

    aget-object v0, v0, v1

    .line 298
    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.widget.AbsListView"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public static synthetic a(Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;)Z
    .locals 1
    .parameter

    .prologue
    .line 31
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->m:Z

    return v0
.end method

.method public static synthetic b(Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;)Ljava/lang/Long;
    .locals 1
    .parameter

    .prologue
    .line 31
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->f:Ljava/lang/Long;

    return-object v0
.end method

.method private b()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v1, 0x0

    .line 602
    iget-boolean v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->d:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->getPaddingTop()I

    move-result v0

    .line 603
    :goto_0
    invoke-virtual {p0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->getChildCount()I

    move-result v3

    move v2, v1

    .line 604
    :goto_1
    if-ge v2, v3, :cond_3

    .line 605
    invoke-virtual {p0, v2}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 606
    iget-object v5, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->g:Laid;

    invoke-virtual {v5, v4}, Laid;->a(Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 607
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v5

    if-ge v5, v0, :cond_2

    .line 608
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-eq v5, v6, :cond_0

    .line 609
    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 604
    :cond_0
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    move v0, v1

    .line 602
    goto :goto_0

    .line 612
    :cond_2
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-eqz v5, :cond_0

    .line 613
    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 618
    :cond_3
    return-void
.end method

.method public static synthetic c(Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;)Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;
    .locals 1
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->k:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;

    return-object v0
.end method

.method public static synthetic d(Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;)Landroid/widget/AdapterView$OnItemLongClickListener;
    .locals 1
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->o:Landroid/widget/AdapterView$OnItemLongClickListener;

    return-object v0
.end method

.method public static synthetic e(Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;)Laid;
    .locals 1
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->g:Laid;

    return-object v0
.end method

.method public static synthetic f(Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;)Landroid/widget/AbsListView$MultiChoiceModeListener;
    .locals 1
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->p:Landroid/widget/AbsListView$MultiChoiceModeListener;

    return-object v0
.end method


# virtual methods
.method public addFooterView(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 585
    invoke-super {p0, p1}, Lcom/wandoujia/p4/views/ContentListView;->addFooterView(Landroid/view/View;)V

    .line 586
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->j:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 587
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->j:Ljava/util/ArrayList;

    .line 589
    :cond_0
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->j:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 590
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 446
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-ge v0, v1, :cond_0

    .line 447
    new-instance v0, Laij;

    invoke-direct {v0, p0}, Laij;-><init>(Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;)V

    invoke-virtual {p0, v0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->post(Ljava/lang/Runnable;)Z

    .line 455
    :cond_0
    iget-boolean v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->l:Z

    if-nez v0, :cond_1

    .line 456
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->k:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;

    invoke-virtual {v0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;->getHeaderBottomPosition()I

    move-result v0

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v2

    invoke-virtual {p1, v3, v0, v1, v2}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 459
    :cond_1
    invoke-super {p0, p1}, Lcom/wandoujia/p4/views/ContentListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 460
    return-void
.end method

.method public getAreHeadersSticky()Z
    .locals 1

    .prologue
    .line 407
    iget-boolean v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->a:Z

    return v0
.end method

.method public getCheckedItemPosition()I
    .locals 2

    .prologue
    .line 325
    invoke-super {p0}, Lcom/wandoujia/p4/views/ContentListView;->getCheckedItemPosition()I

    move-result v0

    .line 326
    invoke-static {}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->a()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 327
    iget-object v1, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->g:Laid;

    invoke-virtual {v1, v0}, Laid;->b(I)I

    move-result v0

    .line 329
    :cond_0
    return v0
.end method

.method public getCheckedItemPositions()Landroid/util/SparseBooleanArray;
    .locals 5

    .prologue
    .line 334
    invoke-super {p0}, Lcom/wandoujia/p4/views/ContentListView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v2

    .line 335
    invoke-static {}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->a()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz v2, :cond_1

    .line 336
    new-instance v1, Landroid/util/SparseBooleanArray;

    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    invoke-direct {v1, v0}, Landroid/util/SparseBooleanArray;-><init>(I)V

    .line 337
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 338
    iget-object v3, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->g:Laid;

    invoke-virtual {v2, v0}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v4

    invoke-virtual {v3, v4}, Laid;->c(I)I

    move-result v3

    .line 339
    invoke-virtual {v2, v0}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v4

    .line 340
    invoke-virtual {v1, v3, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 337
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 344
    :goto_1
    return-object v0

    :cond_1
    move-object v0, v2

    goto :goto_1
.end method

.method public getItemAtPosition(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 275
    invoke-static {}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 276
    invoke-super {p0, p1}, Lcom/wandoujia/p4/views/ContentListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    .line 278
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->g:Laid;

    if-eqz v0, :cond_1

    if-gez p1, :cond_2

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->g:Laid;

    iget-object v0, v0, Laid;->a:Laic;

    invoke-interface {v0, p1}, Laic;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getItemIdAtPosition(I)J
    .locals 2
    .parameter

    .prologue
    .line 285
    invoke-static {}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 286
    invoke-super {p0, p1}, Lcom/wandoujia/p4/views/ContentListView;->getItemIdAtPosition(I)J

    move-result-wide v0

    .line 288
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->g:Laid;

    if-eqz v0, :cond_1

    if-gez p1, :cond_2

    :cond_1
    const-wide/high16 v0, -0x8000

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->g:Laid;

    iget-object v0, v0, Laid;->a:Laic;

    invoke-interface {v0, p1}, Laic;->getItemId(I)J

    move-result-wide v0

    goto :goto_0
.end method

.method public getWrappedAdapter()Laic;
    .locals 1

    .prologue
    .line 438
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->g:Laid;

    if-eqz v0, :cond_0

    .line 439
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->g:Laid;

    iget-object v0, v0, Laid;->a:Laic;

    .line 441
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isItemChecked(I)Z
    .locals 1
    .parameter

    .prologue
    .line 317
    invoke-static {}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 318
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->g:Laid;

    invoke-virtual {v0, p1}, Laid;->b(I)I

    move-result p1

    .line 320
    :cond_0
    invoke-super {p0, p1}, Lcom/wandoujia/p4/views/ContentListView;->isItemChecked(I)Z

    move-result v0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 8

    .prologue
    const/4 v7, -0x1

    const/4 v6, 0x0

    .line 182
    invoke-super {p0}, Lcom/wandoujia/p4/views/ContentListView;->onAttachedToWindow()V

    .line 183
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->k:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;

    if-nez v0, :cond_1

    .line 184
    invoke-virtual {p0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 185
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v2

    .line 186
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 188
    new-instance v1, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;

    invoke-virtual {p0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->k:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;

    .line 189
    iget-object v1, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->k:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;

    invoke-virtual {p0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->getSelector()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 190
    iget-object v1, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->k:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;

    iget-boolean v3, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->n:Z

    invoke-virtual {v1, v3}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;->setDrawSelectorOnTop(Z)V

    .line 192
    invoke-virtual {p0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 193
    iget-boolean v3, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->d:Z

    if-eqz v3, :cond_0

    .line 194
    iget-object v3, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->k:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;

    invoke-virtual {p0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->getPaddingTop()I

    move-result v4

    invoke-virtual {p0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->getPaddingBottom()I

    move-result v5

    invoke-virtual {v3, v6, v4, v6, v5}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;->setPadding(IIII)V

    .line 195
    invoke-virtual {p0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->getPaddingLeft()I

    move-result v3

    invoke-virtual {p0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->getPaddingRight()I

    move-result v4

    invoke-virtual {p0, v3, v6, v4, v6}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->setPadding(IIII)V

    .line 198
    :cond_0
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v3, v7, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 201
    invoke-virtual {p0, v3}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 202
    iget-object v3, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->k:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;

    invoke-virtual {v3, p0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;->addView(Landroid/view/View;)V

    .line 203
    iget-object v3, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->k:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;

    invoke-virtual {p0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 204
    const/4 v3, 0x0

    invoke-super {p0, v3}, Lcom/wandoujia/p4/views/ContentListView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 206
    iget-object v3, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->k:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;

    invoke-virtual {v3, v1}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 207
    iget-object v1, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->k:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 209
    :cond_1
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 662
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->k:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;

    iget-object v0, v0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;->a:Landroid/view/View;

    if-ne v0, p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_0

    .line 663
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->h:Ldd;

    if-eqz v0, :cond_0

    .line 664
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->f:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 668
    :cond_0
    return-void

    .line 662
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public performItemClick(Landroid/view/View;IJ)Z
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 232
    invoke-virtual {p0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->getOnItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v0

    .line 233
    invoke-virtual {p0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->getHeaderViewsCount()I

    move-result v2

    .line 234
    iget-object v3, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->g:Laid;

    sub-int v4, p2, v2

    invoke-virtual {v3, v4}, Laid;->getItemViewType(I)I

    move-result v3

    .line 236
    iget-object v4, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->g:Laid;

    iget v4, v4, Laid;->e:I

    if-ne v3, v4, :cond_1

    .line 237
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->h:Ldd;

    if-eqz v0, :cond_0

    .line 238
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->g:Laid;

    sub-int v1, p2, v2

    invoke-virtual {v0, v1}, Laid;->c(I)I

    move v0, v6

    .line 259
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 244
    goto :goto_0

    .line 245
    :cond_1
    iget-object v4, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->g:Laid;

    iget v4, v4, Laid;->d:I

    if-ne v3, v4, :cond_2

    move v0, v1

    .line 246
    goto :goto_0

    .line 248
    :cond_2
    if-eqz v0, :cond_4

    .line 249
    iget-object v1, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->g:Laid;

    invoke-virtual {v1}, Laid;->getCount()I

    move-result v1

    if-lt p2, v1, :cond_3

    .line 250
    iget-object v1, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->g:Laid;

    iget v1, v1, Laid;->f:I

    sub-int v3, p2, v1

    :goto_1
    move-object v1, p0

    move-object v2, p1

    move-wide v4, p3

    .line 256
    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    move v0, v6

    .line 257
    goto :goto_0

    .line 251
    :cond_3
    if-lt p2, v2, :cond_5

    .line 252
    iget-object v1, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->g:Laid;

    sub-int v3, p2, v2

    invoke-virtual {v1, v3}, Laid;->c(I)I

    move-result v1

    add-int v3, v1, v2

    goto :goto_1

    :cond_4
    move v0, v1

    .line 259
    goto :goto_0

    :cond_5
    move v3, p2

    goto :goto_1
.end method

.method public removeFooterView(Landroid/view/View;)Z
    .locals 2
    .parameter

    .prologue
    .line 594
    invoke-super {p0, p1}, Lcom/wandoujia/p4/views/ContentListView;->removeFooterView(Landroid/view/View;)Z

    move-result v0

    .line 595
    if-eqz v0, :cond_0

    .line 596
    iget-object v1, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->j:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 598
    :cond_0
    return v0
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0
    .parameter

    .prologue
    .line 30
    check-cast p1, Landroid/widget/ListAdapter;

    invoke-virtual {p0, p1}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 412
    iget-boolean v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->e:Z

    if-nez v0, :cond_0

    .line 413
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->d:Z

    .line 415
    :cond_0
    if-eqz p1, :cond_1

    instance-of v0, p1, Laic;

    if-nez v0, :cond_1

    .line 416
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Adapter must implement StickyListHeadersAdapter"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 420
    :cond_1
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->g:Laid;

    if-eqz v0, :cond_2

    .line 421
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->g:Laid;

    iget-object v1, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->q:Landroid/database/DataSetObserver;

    invoke-virtual {v0, v1}, Laid;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 422
    iput-object v2, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->g:Laid;

    .line 425
    :cond_2
    if-eqz p1, :cond_3

    .line 426
    new-instance v0, Laid;

    invoke-virtual {p0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast p1, Laic;

    invoke-direct {v0, v1, p1}, Laid;-><init>(Landroid/content/Context;Laic;)V

    iput-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->g:Laid;

    .line 428
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->g:Laid;

    iget-object v1, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->c:Landroid/graphics/drawable/Drawable;

    iput-object v1, v0, Laid;->b:Landroid/graphics/drawable/Drawable;

    .line 429
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->g:Laid;

    iget v1, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->b:I

    iput v1, v0, Laid;->c:I

    .line 430
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->g:Laid;

    iget-object v1, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->q:Landroid/database/DataSetObserver;

    invoke-virtual {v0, v1}, Laid;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 433
    :cond_3
    iput-object v2, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->f:Ljava/lang/Long;

    .line 434
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->g:Laid;

    invoke-super {p0, v0}, Lcom/wandoujia/p4/views/ContentListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 435
    return-void
.end method

.method public setAreHeadersSticky(Z)V
    .locals 1
    .parameter

    .prologue
    .line 397
    iget-boolean v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->a:Z

    if-eq v0, p1, :cond_1

    .line 398
    if-eqz p1, :cond_0

    .line 399
    const/4 v0, 0x0

    invoke-super {p0, v0}, Lcom/wandoujia/p4/views/ContentListView;->setVerticalFadingEdgeEnabled(Z)V

    .line 401
    :cond_0
    invoke-virtual {p0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->requestLayout()V

    .line 402
    iput-boolean p1, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->a:Z

    .line 404
    :cond_1
    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 214
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->k:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;

    if-eqz v0, :cond_0

    .line 215
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->k:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;

    invoke-virtual {v0, p1}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 219
    :goto_0
    return-void

    .line 217
    :cond_0
    invoke-super {p0, p1}, Lcom/wandoujia/p4/views/ContentListView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public setClipToPadding(Z)V
    .locals 1
    .parameter

    .prologue
    .line 464
    invoke-super {p0, p1}, Lcom/wandoujia/p4/views/ContentListView;->setClipToPadding(Z)V

    .line 465
    iput-boolean p1, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->d:Z

    .line 466
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->e:Z

    .line 467
    return-void
.end method

.method public setDivider(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter

    .prologue
    .line 372
    iput-object p1, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->c:Landroid/graphics/drawable/Drawable;

    .line 373
    if-eqz p1, :cond_0

    .line 374
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 375
    if-ltz v0, :cond_0

    .line 376
    invoke-virtual {p0, v0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->setDividerHeight(I)V

    .line 379
    :cond_0
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->g:Laid;

    if-eqz v0, :cond_1

    .line 380
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->g:Laid;

    iput-object p1, v0, Laid;->b:Landroid/graphics/drawable/Drawable;

    .line 381
    invoke-virtual {p0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->requestLayout()V

    .line 382
    invoke-virtual {p0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->invalidate()V

    .line 384
    :cond_1
    return-void
.end method

.method public setDividerHeight(I)V
    .locals 1
    .parameter

    .prologue
    .line 388
    iput p1, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->b:I

    .line 389
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->g:Laid;

    if-eqz v0, :cond_0

    .line 390
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->g:Laid;

    iput p1, v0, Laid;->c:I

    .line 391
    invoke-virtual {p0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->requestLayout()V

    .line 392
    invoke-virtual {p0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->invalidate()V

    .line 394
    :cond_0
    return-void
.end method

.method public setDrawSelectorOnTop(Z)V
    .locals 2
    .parameter

    .prologue
    .line 223
    invoke-super {p0, p1}, Lcom/wandoujia/p4/views/ContentListView;->setDrawSelectorOnTop(Z)V

    .line 224
    iput-boolean p1, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->n:Z

    .line 225
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->k:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;

    if-eqz v0, :cond_0

    .line 226
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->k:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;

    iget-boolean v1, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->n:Z

    invoke-virtual {v0, v1}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;->setDrawSelectorOnTop(Z)V

    .line 228
    :cond_0
    return-void
.end method

.method public setDrawingListUnderStickyHeader(Z)V
    .locals 0
    .parameter

    .prologue
    .line 676
    iput-boolean p1, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->l:Z

    .line 677
    return-void
.end method

.method public setItemChecked(IZ)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 304
    invoke-static {}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 305
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->g:Laid;

    invoke-virtual {v0, p1}, Laid;->b(I)I

    move-result p1

    .line 308
    :cond_0
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->g:Laid;

    invoke-virtual {v0, p1}, Laid;->getItemViewType(I)I

    move-result v0

    .line 309
    iget-object v1, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->g:Laid;

    iget v1, v1, Laid;->d:I

    if-eq v0, v1, :cond_1

    iget-object v1, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->g:Laid;

    iget v1, v1, Laid;->e:I

    if-eq v0, v1, :cond_1

    .line 311
    invoke-super {p0, p1, p2}, Lcom/wandoujia/p4/views/ContentListView;->setItemChecked(IZ)V

    .line 313
    :cond_1
    return-void
.end method

.method public setMultiChoiceModeListener(Landroid/widget/AbsListView$MultiChoiceModeListener;)V
    .locals 1
    .parameter

    .prologue
    .line 349
    iput-object p1, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->p:Landroid/widget/AbsListView$MultiChoiceModeListener;

    .line 350
    if-nez p1, :cond_0

    .line 351
    const/4 v0, 0x0

    invoke-super {p0, v0}, Lcom/wandoujia/p4/views/ContentListView;->setMultiChoiceModeListener(Landroid/widget/AbsListView$MultiChoiceModeListener;)V

    .line 355
    :goto_0
    return-void

    .line 353
    :cond_0
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->t:Landroid/widget/AbsListView$MultiChoiceModeListener;

    invoke-super {p0, v0}, Lcom/wandoujia/p4/views/ContentListView;->setMultiChoiceModeListener(Landroid/widget/AbsListView$MultiChoiceModeListener;)V

    goto :goto_0
.end method

.method public setOnHeaderClickListener$400d8e87(Ldd;)V
    .locals 0
    .parameter

    .prologue
    .line 657
    iput-object p1, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->h:Ldd;

    .line 658
    return-void
.end method

.method public setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V
    .locals 1
    .parameter

    .prologue
    .line 265
    iput-object p1, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->o:Landroid/widget/AdapterView$OnItemLongClickListener;

    .line 266
    if-nez p1, :cond_0

    .line 267
    const/4 v0, 0x0

    invoke-super {p0, v0}, Lcom/wandoujia/p4/views/ContentListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 271
    :goto_0
    return-void

    .line 269
    :cond_0
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->r:Landroid/widget/AdapterView$OnItemLongClickListener;

    invoke-super {p0, v0}, Lcom/wandoujia/p4/views/ContentListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    goto :goto_0
.end method

.method public setSelectionFromTop(II)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 647
    iget-boolean v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->a:Z

    if-eqz v0, :cond_0

    .line 648
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->k:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->k:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;

    iget-object v0, v0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;->a:Landroid/view/View;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_0

    .line 649
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->k:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;

    invoke-virtual {v0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;->getHeaderHeight()I

    move-result v0

    add-int/2addr p2, v0

    .line 652
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/wandoujia/p4/views/ContentListView;->setSelectionFromTop(II)V

    .line 653
    return-void

    .line 648
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setSelector(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter

    .prologue
    .line 577
    invoke-super {p0, p1}, Lcom/wandoujia/p4/views/ContentListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 578
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->k:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;

    if-eqz v0, :cond_0

    .line 579
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->k:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;

    invoke-virtual {v0, p1}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListViewWrapper;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 581
    :cond_0
    return-void
.end method

.method public setVerticalFadingEdgeEnabled(Z)V
    .locals 1
    .parameter

    .prologue
    .line 363
    iget-boolean v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->a:Z

    if-eqz v0, :cond_0

    .line 364
    const/4 v0, 0x0

    invoke-super {p0, v0}, Lcom/wandoujia/p4/views/ContentListView;->setVerticalFadingEdgeEnabled(Z)V

    .line 368
    :goto_0
    return-void

    .line 366
    :cond_0
    invoke-super {p0, p1}, Lcom/wandoujia/p4/views/ContentListView;->setVerticalFadingEdgeEnabled(Z)V

    goto :goto_0
.end method
