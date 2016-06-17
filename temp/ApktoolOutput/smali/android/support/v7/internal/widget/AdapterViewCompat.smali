.class public abstract Landroid/support/v7/internal/widget/AdapterViewCompat;
.super Landroid/view/ViewGroup;
.source "AdapterViewCompat.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Landroid/widget/Adapter;",
        ">",
        "Landroid/view/ViewGroup;"
    }
.end annotation


# instance fields
.field private a:Ldd;

.field private b:Lr;

.field private c:Landroid/view/View;

.field private d:Z

.field private e:Z

.field public f:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "scrolling"
    .end annotation
.end field

.field public g:I

.field public h:J

.field public i:Z

.field public j:I

.field k:Z

.field public l:Lmv;

.field public m:Z

.field public n:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "list"
    .end annotation
.end field

.field public o:J

.field public p:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "list"
    .end annotation
.end field

.field public q:J

.field public r:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "list"
    .end annotation
.end field

.field public s:I

.field t:I

.field u:J

.field v:Z

.field private w:Lqc;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v7/internal/widget/AdapterViewCompat",
            "<TT;>.qc;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, -0x1

    const-wide/high16 v2, -0x8000

    const/4 v1, 0x0

    .line 238
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 69
    iput v1, p0, Landroid/support/v7/internal/widget/AdapterViewCompat;->f:I

    .line 86
    iput-wide v2, p0, Landroid/support/v7/internal/widget/AdapterViewCompat;->h:J

    .line 96
    iput-boolean v1, p0, Landroid/support/v7/internal/widget/AdapterViewCompat;->i:Z

    .line 128
    iput-boolean v1, p0, Landroid/support/v7/internal/widget/AdapterViewCompat;->k:Z

    .line 154
    iput v4, p0, Landroid/support/v7/internal/widget/AdapterViewCompat;->n:I

    .line 160
    iput-wide v2, p0, Landroid/support/v7/internal/widget/AdapterViewCompat;->o:J

    .line 165
    iput v4, p0, Landroid/support/v7/internal/widget/AdapterViewCompat;->p:I

    .line 171
    iput-wide v2, p0, Landroid/support/v7/internal/widget/AdapterViewCompat;->q:J

    .line 203
    iput v4, p0, Landroid/support/v7/internal/widget/AdapterViewCompat;->t:I

    .line 208
    iput-wide v2, p0, Landroid/support/v7/internal/widget/AdapterViewCompat;->u:J

    .line 227
    iput-boolean v1, p0, Landroid/support/v7/internal/widget/AdapterViewCompat;->v:Z

    .line 239
    return-void
.end method

.method private a(I)J
    .locals 2
    .parameter

    .prologue
    .line 772
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/AdapterViewCompat;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 773
    if-eqz v0, :cond_0

    if-gez p1, :cond_1

    :cond_0
    const-wide/high16 v0, -0x8000

    :goto_0
    return-wide v0

    :cond_1
    invoke-interface {v0, p1}, Landroid/widget/Adapter;->getItemId(I)J

    move-result-wide v0

    goto :goto_0
.end method

.method public static synthetic a(Landroid/support/v7/internal/widget/AdapterViewCompat;)Landroid/os/Parcelable;
    .locals 1
    .parameter

    .prologue
    .line 52
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/AdapterViewCompat;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    return-object v0
.end method

.method private a()V
    .locals 2

    .prologue
    .line 893
    iget-object v0, p0, Landroid/support/v7/internal/widget/AdapterViewCompat;->a:Ldd;

    if-nez v0, :cond_1

    .line 901
    :cond_0
    :goto_0
    return-void

    .line 896
    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/AdapterViewCompat;->getSelectedItemPosition()I

    move-result v0

    .line 897
    if-ltz v0, :cond_0

    .line 898
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/AdapterViewCompat;->getSelectedView()Landroid/view/View;

    .line 899
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/AdapterViewCompat;->getAdapter()Landroid/widget/Adapter;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/widget/Adapter;->getItemId(I)J

    goto :goto_0
.end method

.method public static synthetic a(Landroid/support/v7/internal/widget/AdapterViewCompat;Landroid/os/Parcelable;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 52
    invoke-virtual {p0, p1}, Landroid/support/v7/internal/widget/AdapterViewCompat;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void
.end method

.method private a(Z)V
    .locals 6
    .parameter

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 735
    if-eqz p1, :cond_2

    .line 740
    iget-object v0, p0, Landroid/support/v7/internal/widget/AdapterViewCompat;->c:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 741
    iget-object v0, p0, Landroid/support/v7/internal/widget/AdapterViewCompat;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 742
    invoke-virtual {p0, v2}, Landroid/support/v7/internal/widget/AdapterViewCompat;->setVisibility(I)V

    .line 751
    :goto_0
    iget-boolean v0, p0, Landroid/support/v7/internal/widget/AdapterViewCompat;->m:Z

    if-eqz v0, :cond_0

    .line 752
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/AdapterViewCompat;->getLeft()I

    move-result v2

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/AdapterViewCompat;->getTop()I

    move-result v3

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/AdapterViewCompat;->getRight()I

    move-result v4

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/AdapterViewCompat;->getBottom()I

    move-result v5

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/support/v7/internal/widget/AdapterViewCompat;->onLayout(ZIIII)V

    .line 758
    :cond_0
    :goto_1
    return-void

    .line 745
    :cond_1
    invoke-virtual {p0, v1}, Landroid/support/v7/internal/widget/AdapterViewCompat;->setVisibility(I)V

    goto :goto_0

    .line 755
    :cond_2
    iget-object v0, p0, Landroid/support/v7/internal/widget/AdapterViewCompat;->c:Landroid/view/View;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/support/v7/internal/widget/AdapterViewCompat;->c:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 756
    :cond_3
    invoke-virtual {p0, v1}, Landroid/support/v7/internal/widget/AdapterViewCompat;->setVisibility(I)V

    goto :goto_1
.end method

.method public static synthetic b(Landroid/support/v7/internal/widget/AdapterViewCompat;)V
    .locals 0
    .parameter

    .prologue
    .line 52
    invoke-direct {p0}, Landroid/support/v7/internal/widget/AdapterViewCompat;->a()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 305
    iget-object v2, p0, Landroid/support/v7/internal/widget/AdapterViewCompat;->l:Lmv;

    if-eqz v2, :cond_1

    .line 306
    invoke-virtual {p0, v1}, Landroid/support/v7/internal/widget/AdapterViewCompat;->playSoundEffect(I)V

    .line 307
    if-eqz p1, :cond_0

    .line 308
    invoke-virtual {p1, v0}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 314
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public addView(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 463
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "addView(View) is not supported in AdapterView"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addView(Landroid/view/View;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 476
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "addView(View, int) is not supported in AdapterView"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 504
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "addView(View, int, LayoutParams) is not supported in AdapterView"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 489
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "addView(View, LayoutParams) is not supported in AdapterView"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final b()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 716
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/AdapterViewCompat;->getAdapter()Landroid/widget/Adapter;

    move-result-object v4

    .line 717
    if-eqz v4, :cond_0

    invoke-interface {v4}, Landroid/widget/Adapter;->getCount()I

    move-result v0

    if-nez v0, :cond_4

    :cond_0
    move v0, v1

    .line 718
    :goto_0
    if-nez v0, :cond_5

    move v3, v1

    .line 722
    :goto_1
    if-eqz v3, :cond_6

    iget-boolean v0, p0, Landroid/support/v7/internal/widget/AdapterViewCompat;->e:Z

    if-eqz v0, :cond_6

    move v0, v1

    :goto_2
    invoke-super {p0, v0}, Landroid/view/ViewGroup;->setFocusableInTouchMode(Z)V

    .line 723
    if-eqz v3, :cond_7

    iget-boolean v0, p0, Landroid/support/v7/internal/widget/AdapterViewCompat;->d:Z

    if-eqz v0, :cond_7

    move v0, v1

    :goto_3
    invoke-super {p0, v0}, Landroid/view/ViewGroup;->setFocusable(Z)V

    .line 724
    iget-object v0, p0, Landroid/support/v7/internal/widget/AdapterViewCompat;->c:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 725
    if-eqz v4, :cond_1

    invoke-interface {v4}, Landroid/widget/Adapter;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    move v2, v1

    :cond_2
    invoke-direct {p0, v2}, Landroid/support/v7/internal/widget/AdapterViewCompat;->a(Z)V

    .line 727
    :cond_3
    return-void

    :cond_4
    move v0, v2

    .line 717
    goto :goto_0

    :cond_5
    move v3, v2

    .line 718
    goto :goto_1

    :cond_6
    move v0, v2

    .line 722
    goto :goto_2

    :cond_7
    move v0, v2

    .line 723
    goto :goto_3
.end method

.method final c()V
    .locals 18

    .prologue
    .line 922
    move-object/from16 v0, p0

    iget v9, v0, Landroid/support/v7/internal/widget/AdapterViewCompat;->r:I

    .line 923
    const/4 v6, 0x0

    .line 925
    if-lez v9, :cond_f

    .line 930
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/support/v7/internal/widget/AdapterViewCompat;->i:Z

    if-eqz v2, :cond_e

    .line 933
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/support/v7/internal/widget/AdapterViewCompat;->i:Z

    .line 937
    move-object/from16 v0, p0

    iget v10, v0, Landroid/support/v7/internal/widget/AdapterViewCompat;->r:I

    if-eqz v10, :cond_d

    move-object/from16 v0, p0

    iget-wide v12, v0, Landroid/support/v7/internal/widget/AdapterViewCompat;->h:J

    move-object/from16 v0, p0

    iget v2, v0, Landroid/support/v7/internal/widget/AdapterViewCompat;->g:I

    const-wide/high16 v4, -0x8000

    cmp-long v3, v12, v4

    if-eqz v3, :cond_d

    const/4 v3, 0x0

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    add-int/lit8 v3, v10, -0x1

    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    const-wide/16 v14, 0x64

    add-long/2addr v14, v4

    const/4 v2, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/internal/widget/AdapterViewCompat;->getAdapter()Landroid/widget/Adapter;

    move-result-object v11

    if-eqz v11, :cond_d

    move v4, v3

    move v5, v3

    :cond_0
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v16

    cmp-long v7, v16, v14

    if-gtz v7, :cond_d

    invoke-interface {v11, v5}, Landroid/widget/Adapter;->getItemId(I)J

    move-result-wide v16

    cmp-long v7, v16, v12

    if-nez v7, :cond_6

    .line 938
    :goto_1
    if-ltz v5, :cond_e

    .line 941
    if-ne v5, v5, :cond_e

    .line 943
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/support/v7/internal/widget/AdapterViewCompat;->setNextSelectedPositionInt(I)V

    .line 944
    const/4 v6, 0x1

    move v2, v6

    .line 948
    :goto_2
    if-nez v2, :cond_4

    .line 950
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/internal/widget/AdapterViewCompat;->getSelectedItemPosition()I

    move-result v3

    .line 953
    if-lt v3, v9, :cond_1

    .line 954
    add-int/lit8 v3, v9, -0x1

    .line 956
    :cond_1
    if-gez v3, :cond_2

    .line 957
    const/4 v3, 0x0

    .line 962
    :cond_2
    if-gez v3, :cond_3

    .line 966
    :cond_3
    if-ltz v3, :cond_4

    .line 967
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/support/v7/internal/widget/AdapterViewCompat;->setNextSelectedPositionInt(I)V

    .line 968
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/internal/widget/AdapterViewCompat;->d()V

    .line 969
    const/4 v2, 0x1

    .line 973
    :cond_4
    :goto_3
    if-nez v2, :cond_5

    .line 975
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Landroid/support/v7/internal/widget/AdapterViewCompat;->p:I

    .line 976
    const-wide/high16 v2, -0x8000

    move-object/from16 v0, p0

    iput-wide v2, v0, Landroid/support/v7/internal/widget/AdapterViewCompat;->q:J

    .line 977
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Landroid/support/v7/internal/widget/AdapterViewCompat;->n:I

    .line 978
    const-wide/high16 v2, -0x8000

    move-object/from16 v0, p0

    iput-wide v2, v0, Landroid/support/v7/internal/widget/AdapterViewCompat;->o:J

    .line 979
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/support/v7/internal/widget/AdapterViewCompat;->i:Z

    .line 980
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/internal/widget/AdapterViewCompat;->d()V

    .line 982
    :cond_5
    return-void

    .line 937
    :cond_6
    add-int/lit8 v7, v10, -0x1

    if-ne v3, v7, :cond_9

    const/4 v7, 0x1

    move v8, v7

    :goto_4
    if-nez v4, :cond_a

    const/4 v7, 0x1

    :goto_5
    if-eqz v8, :cond_7

    if-nez v7, :cond_d

    :cond_7
    if-nez v7, :cond_8

    if-eqz v2, :cond_b

    if-nez v8, :cond_b

    :cond_8
    add-int/lit8 v3, v3, 0x1

    const/4 v2, 0x0

    move v5, v3

    goto :goto_0

    :cond_9
    const/4 v7, 0x0

    move v8, v7

    goto :goto_4

    :cond_a
    const/4 v7, 0x0

    goto :goto_5

    :cond_b
    if-nez v8, :cond_c

    if-nez v2, :cond_0

    if-nez v7, :cond_0

    :cond_c
    add-int/lit8 v4, v4, -0x1

    const/4 v2, 0x1

    move v5, v4

    goto :goto_0

    :cond_d
    const/4 v5, -0x1

    goto :goto_1

    :cond_e
    move v2, v6

    goto :goto_2

    :cond_f
    move v2, v6

    goto :goto_3
.end method

.method protected canAnimate()Z
    .locals 1

    .prologue
    .line 918
    invoke-super {p0}, Landroid/view/ViewGroup;->canAnimate()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/support/v7/internal/widget/AdapterViewCompat;->r:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final d()V
    .locals 4

    .prologue
    .line 985
    iget v0, p0, Landroid/support/v7/internal/widget/AdapterViewCompat;->p:I

    iget v1, p0, Landroid/support/v7/internal/widget/AdapterViewCompat;->t:I

    if-ne v0, v1, :cond_0

    iget-wide v0, p0, Landroid/support/v7/internal/widget/AdapterViewCompat;->q:J

    iget-wide v2, p0, Landroid/support/v7/internal/widget/AdapterViewCompat;->u:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_5

    .line 986
    :cond_0
    iget-object v0, p0, Landroid/support/v7/internal/widget/AdapterViewCompat;->a:Ldd;

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Landroid/support/v7/internal/widget/AdapterViewCompat;->k:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Landroid/support/v7/internal/widget/AdapterViewCompat;->v:Z

    if-eqz v0, :cond_6

    :cond_1
    iget-object v0, p0, Landroid/support/v7/internal/widget/AdapterViewCompat;->w:Lqc;

    if-nez v0, :cond_2

    new-instance v0, Lqc;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lqc;-><init>(Landroid/support/v7/internal/widget/AdapterViewCompat;B)V

    iput-object v0, p0, Landroid/support/v7/internal/widget/AdapterViewCompat;->w:Lqc;

    :cond_2
    iget-object v0, p0, Landroid/support/v7/internal/widget/AdapterViewCompat;->w:Lqc;

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/AdapterViewCompat;->post(Ljava/lang/Runnable;)Z

    :cond_3
    :goto_0
    iget v0, p0, Landroid/support/v7/internal/widget/AdapterViewCompat;->p:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_4

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/AdapterViewCompat;->isShown()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/AdapterViewCompat;->isInTouchMode()Z

    move-result v0

    if-nez v0, :cond_4

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/AdapterViewCompat;->sendAccessibilityEvent(I)V

    .line 987
    :cond_4
    iget v0, p0, Landroid/support/v7/internal/widget/AdapterViewCompat;->p:I

    iput v0, p0, Landroid/support/v7/internal/widget/AdapterViewCompat;->t:I

    .line 988
    iget-wide v0, p0, Landroid/support/v7/internal/widget/AdapterViewCompat;->q:J

    iput-wide v0, p0, Landroid/support/v7/internal/widget/AdapterViewCompat;->u:J

    .line 990
    :cond_5
    return-void

    .line 986
    :cond_6
    invoke-direct {p0}, Landroid/support/v7/internal/widget/AdapterViewCompat;->a()V

    goto :goto_0
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 2
    .parameter

    .prologue
    .line 908
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/AdapterViewCompat;->getSelectedView()Landroid/view/View;

    move-result-object v0

    .line 909
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 911
    const/4 v0, 0x1

    .line 913
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 795
    invoke-virtual {p0, p1}, Landroid/support/v7/internal/widget/AdapterViewCompat;->dispatchThawSelfOnly(Landroid/util/SparseArray;)V

    .line 796
    return-void
.end method

.method protected dispatchSaveInstanceState(Landroid/util/SparseArray;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 787
    invoke-virtual {p0, p1}, Landroid/support/v7/internal/widget/AdapterViewCompat;->dispatchFreezeSelfOnly(Landroid/util/SparseArray;)V

    .line 788
    return-void
.end method

.method public abstract getAdapter()Landroid/widget/Adapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public getCount()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    .prologue
    .line 593
    iget v0, p0, Landroid/support/v7/internal/widget/AdapterViewCompat;->r:I

    return v0
.end method

.method public getEmptyView()Landroid/view/View;
    .locals 1

    .prologue
    .line 676
    iget-object v0, p0, Landroid/support/v7/internal/widget/AdapterViewCompat;->c:Landroid/view/View;

    return-object v0
.end method

.method public getFirstVisiblePosition()I
    .locals 1

    .prologue
    .line 636
    iget v0, p0, Landroid/support/v7/internal/widget/AdapterViewCompat;->f:I

    return v0
.end method

.method public getLastVisiblePosition()I
    .locals 2

    .prologue
    .line 646
    iget v0, p0, Landroid/support/v7/internal/widget/AdapterViewCompat;->f:I

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/AdapterViewCompat;->getChildCount()I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public final getOnItemClickListener$23515ac5()Lmv;
    .locals 1

    .prologue
    .line 292
    iget-object v0, p0, Landroid/support/v7/internal/widget/AdapterViewCompat;->l:Lmv;

    return-object v0
.end method

.method public final getOnItemLongClickListener$5e3e1f29()Lr;
    .locals 1

    .prologue
    .line 358
    iget-object v0, p0, Landroid/support/v7/internal/widget/AdapterViewCompat;->b:Lr;

    return-object v0
.end method

.method public final getOnItemSelectedListener$6ab2a050()Ldd;
    .locals 1

    .prologue
    .line 404
    iget-object v0, p0, Landroid/support/v7/internal/widget/AdapterViewCompat;->a:Ldd;

    return-object v0
.end method

.method public getSelectedItem()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 577
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/AdapterViewCompat;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 578
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/AdapterViewCompat;->getSelectedItemPosition()I

    move-result v1

    .line 579
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v2

    if-lez v2, :cond_0

    if-ltz v1, :cond_0

    .line 580
    invoke-interface {v0, v1}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    .line 582
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSelectedItemId()J
    .locals 2
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    .prologue
    .line 563
    iget-wide v0, p0, Landroid/support/v7/internal/widget/AdapterViewCompat;->o:J

    return-wide v0
.end method

.method public getSelectedItemPosition()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    .prologue
    .line 554
    iget v0, p0, Landroid/support/v7/internal/widget/AdapterViewCompat;->n:I

    return v0
.end method

.method public abstract getSelectedView()Landroid/view/View;
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 851
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 852
    iget-object v0, p0, Landroid/support/v7/internal/widget/AdapterViewCompat;->w:Lqc;

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/AdapterViewCompat;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 853
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 544
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/AdapterViewCompat;->getHeight()I

    .line 545
    return-void
.end method

.method public removeAllViews()V
    .locals 2

    .prologue
    .line 539
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "removeAllViews() is not supported in AdapterView"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeView(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 517
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "removeView(View) is not supported in AdapterView"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeViewAt(I)V
    .locals 2
    .parameter

    .prologue
    .line 529
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "removeViewAt(int) is not supported in AdapterView"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract setAdapter(Landroid/widget/Adapter;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method public setEmptyView(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 661
    iput-object p1, p0, Landroid/support/v7/internal/widget/AdapterViewCompat;->c:Landroid/view/View;

    .line 663
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/AdapterViewCompat;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 664
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/widget/Adapter;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 665
    :goto_0
    invoke-direct {p0, v0}, Landroid/support/v7/internal/widget/AdapterViewCompat;->a(Z)V

    .line 666
    return-void

    .line 664
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setFocusable(Z)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 691
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/AdapterViewCompat;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 692
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    move v0, v2

    .line 694
    :goto_0
    iput-boolean p1, p0, Landroid/support/v7/internal/widget/AdapterViewCompat;->d:Z

    .line 695
    if-nez p1, :cond_1

    .line 696
    iput-boolean v1, p0, Landroid/support/v7/internal/widget/AdapterViewCompat;->e:Z

    .line 699
    :cond_1
    if-eqz p1, :cond_3

    if-nez v0, :cond_3

    :goto_1
    invoke-super {p0, v2}, Landroid/view/ViewGroup;->setFocusable(Z)V

    .line 700
    return-void

    :cond_2
    move v0, v1

    .line 692
    goto :goto_0

    :cond_3
    move v2, v1

    .line 699
    goto :goto_1
.end method

.method public setFocusableInTouchMode(Z)V
    .locals 3
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 704
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/AdapterViewCompat;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 705
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    move v0, v2

    .line 707
    :goto_0
    iput-boolean p1, p0, Landroid/support/v7/internal/widget/AdapterViewCompat;->e:Z

    .line 708
    if-eqz p1, :cond_1

    .line 709
    iput-boolean v2, p0, Landroid/support/v7/internal/widget/AdapterViewCompat;->d:Z

    .line 712
    :cond_1
    if-eqz p1, :cond_3

    if-nez v0, :cond_3

    :goto_1
    invoke-super {p0, v2}, Landroid/view/ViewGroup;->setFocusableInTouchMode(Z)V

    .line 713
    return-void

    :cond_2
    move v0, v1

    .line 705
    goto :goto_0

    :cond_3
    move v2, v1

    .line 712
    goto :goto_1
.end method

.method setNextSelectedPositionInt(I)V
    .locals 2
    .parameter

    .prologue
    .line 1106
    iput p1, p0, Landroid/support/v7/internal/widget/AdapterViewCompat;->n:I

    .line 1107
    invoke-direct {p0, p1}, Landroid/support/v7/internal/widget/AdapterViewCompat;->a(I)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/support/v7/internal/widget/AdapterViewCompat;->o:J

    .line 1109
    iget-boolean v0, p0, Landroid/support/v7/internal/widget/AdapterViewCompat;->i:Z

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/support/v7/internal/widget/AdapterViewCompat;->j:I

    if-nez v0, :cond_0

    if-ltz p1, :cond_0

    .line 1110
    iput p1, p0, Landroid/support/v7/internal/widget/AdapterViewCompat;->g:I

    .line 1111
    iget-wide v0, p0, Landroid/support/v7/internal/widget/AdapterViewCompat;->o:J

    iput-wide v0, p0, Landroid/support/v7/internal/widget/AdapterViewCompat;->h:J

    .line 1113
    :cond_0
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 2
    .parameter

    .prologue
    .line 778
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Don\'t call setOnClickListener for an AdapterView. You probably want setOnItemClickListener instead"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setOnItemClickListener$7d68f791(Lmv;)V
    .locals 0
    .parameter

    .prologue
    .line 284
    iput-object p1, p0, Landroid/support/v7/internal/widget/AdapterViewCompat;->l:Lmv;

    .line 285
    return-void
.end method

.method public setOnItemLongClickListener$c9b218b(Lr;)V
    .locals 1
    .parameter

    .prologue
    .line 347
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/AdapterViewCompat;->isLongClickable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 348
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/AdapterViewCompat;->setLongClickable(Z)V

    .line 350
    :cond_0
    iput-object p1, p0, Landroid/support/v7/internal/widget/AdapterViewCompat;->b:Lr;

    .line 351
    return-void
.end method

.method public setOnItemSelectedListener$685d046a(Ldd;)V
    .locals 0
    .parameter

    .prologue
    .line 400
    iput-object p1, p0, Landroid/support/v7/internal/widget/AdapterViewCompat;->a:Ldd;

    .line 401
    return-void
.end method

.method setSelectedPositionInt(I)V
    .locals 2
    .parameter

    .prologue
    .line 1096
    iput p1, p0, Landroid/support/v7/internal/widget/AdapterViewCompat;->p:I

    .line 1097
    invoke-direct {p0, p1}, Landroid/support/v7/internal/widget/AdapterViewCompat;->a(I)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/support/v7/internal/widget/AdapterViewCompat;->q:J

    .line 1098
    return-void
.end method

.method public abstract setSelection(I)V
.end method
