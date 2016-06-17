.class public final Landroid/support/v7/widget/StaggeredGridLayoutManager;
.super Luo;
.source "StaggeredGridLayoutManager.java"


# instance fields
.field public a:Lub;

.field private b:Lub;

.field private c:I

.field private d:Ltj;

.field private g:Z

.field private h:Z

.field private i:I

.field private j:I

.field private k:Z

.field private l:Z

.field private m:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

.field private n:I

.field private o:I

.field private final p:Landroid/graphics/Rect;

.field private final q:Laf;

.field private final r:Ljava/lang/Runnable;


# direct methods
.method private static a(III)I
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1030
    if-nez p1, :cond_1

    if-nez p2, :cond_1

    .line 1038
    :cond_0
    :goto_0
    return p0

    .line 1033
    :cond_1
    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 1034
    const/high16 v1, -0x8000

    if-eq v0, v1, :cond_2

    const/high16 v1, 0x4000

    if-ne v0, v1, :cond_0

    .line 1035
    :cond_2
    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    sub-int/2addr v1, p1

    sub-int/2addr v1, p2

    invoke-static {v1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p0

    goto :goto_0
.end method

.method private a(Lur;Ltj;Luv;)I
    .locals 11
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1392
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/BitSet;->set(IIZ)V

    .line 1397
    iget v0, p2, Ltj;->d:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_7

    .line 1398
    iget v0, p2, Ltj;->f:I

    iget v1, p2, Ltj;->a:I

    add-int/2addr v0, v1

    move v2, v0

    .line 1403
    :goto_0
    iget-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Lub;

    invoke-virtual {v0}, Lub;->c()I

    move-result v0

    move v3, v0

    .line 1413
    :goto_1
    const/4 v0, 0x0

    .line 1414
    :goto_2
    iget v1, p2, Ltj;->b:I

    if-ltz v1, :cond_9

    iget v1, p2, Ltj;->b:I

    invoke-virtual {p3}, Luv;->a()I

    move-result v4

    if-ge v1, v4, :cond_9

    const/4 v1, 0x1

    :goto_3
    if-eqz v1, :cond_16

    const/4 v1, 0x0

    invoke-virtual {v1}, Ljava/util/BitSet;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_16

    .line 1415
    iget v0, p2, Ltj;->b:I

    invoke-virtual {p1, v0}, Lur;->b(I)Landroid/view/View;

    move-result-object v6

    iget v0, p2, Ltj;->b:I

    iget v1, p2, Ltj;->c:I

    add-int/2addr v0, v1

    iput v0, p2, Ltj;->b:I

    .line 1416
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;

    .line 1417
    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->c:Lux;

    invoke-virtual {v1}, Lux;->d()I

    move-result v4

    .line 1418
    const/4 v1, 0x0

    iget-object v1, v1, Laf;->i:[I

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    iget-object v1, v1, Laf;->i:[I

    array-length v1, v1

    if-lt v4, v1, :cond_a

    :cond_0
    const/4 v1, -0x1

    .line 1420
    :goto_4
    const/4 v5, -0x1

    if-ne v1, v5, :cond_b

    const/4 v1, 0x1

    move v5, v1

    .line 1421
    :goto_5
    if-eqz v5, :cond_1

    .line 1422
    iget v1, p2, Ltj;->d:I

    const/4 v7, 0x1

    if-ne v1, v7, :cond_c

    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Lub;

    invoke-virtual {v1}, Lub;->b()I

    .line 1423
    :goto_6
    invoke-static {v4}, Laf;->a(I)V

    const/4 v1, 0x0

    iget-object v1, v1, Laf;->i:[I

    const/4 v7, 0x0

    iget v7, v7, Lvp;->d:I

    aput v7, v1, v4

    .line 1431
    :cond_1
    const/4 v1, 0x0

    iput-object v1, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->a:Lvp;

    .line 1435
    iget v1, p2, Ltj;->d:I

    const/4 v4, 0x1

    if-ne v1, v4, :cond_d

    .line 1436
    const/4 v1, -0x1

    const/4 v4, 0x0

    invoke-virtual {p0, v6, v1, v4}, Luo;->a(Landroid/view/View;IZ)V

    .line 1440
    :goto_7
    iget v4, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->width:I

    iget v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->n:I

    if-gez v4, :cond_e

    move v4, v1

    :goto_8
    iget v7, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->o:I

    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->p:Landroid/graphics/Rect;

    invoke-virtual {p0, v6, v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(Landroid/view/View;Landroid/graphics/Rect;)V

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;

    iget v8, v1, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->leftMargin:I

    iget-object v9, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->p:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->left:I

    add-int/2addr v8, v9

    iget v9, v1, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->rightMargin:I

    iget-object v10, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->p:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->right:I

    add-int/2addr v9, v10

    invoke-static {v4, v8, v9}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(III)I

    move-result v4

    iget v8, v1, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->topMargin:I

    iget-object v9, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->p:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    add-int/2addr v8, v9

    iget v1, v1, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->bottomMargin:I

    iget-object v9, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->p:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v1, v9

    invoke-static {v7, v8, v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(III)I

    move-result v1

    invoke-virtual {v6, v4, v1}, Landroid/view/View;->measure(II)V

    .line 1444
    iget v1, p2, Ltj;->d:I

    const/4 v4, 0x1

    if-ne v1, v4, :cond_f

    .line 1445
    invoke-static {v3}, Lvp;->b(I)I

    move-result v4

    .line 1447
    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Lub;

    invoke-virtual {v1, v6}, Lub;->c(Landroid/view/View;)I

    move-result v1

    add-int/2addr v1, v4

    .line 1448
    if-eqz v5, :cond_2

    .line 1459
    :cond_2
    :goto_9
    iget v5, p2, Ltj;->d:I

    const/4 v7, 0x1

    if-ne v5, v7, :cond_10

    iget-object v5, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->a:Lvp;

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;

    iput-object v5, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->a:Lvp;

    const/4 v7, 0x0

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/high16 v7, -0x8000

    iput v7, v5, Lvp;->b:I

    const/4 v7, 0x0

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_3

    const/high16 v7, -0x8000

    iput v7, v5, Lvp;->a:I

    :cond_3
    iget-object v7, v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->c:Lux;

    invoke-virtual {v7}, Lux;->o()Z

    move-result v7

    if-nez v7, :cond_4

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->c:Lux;

    invoke-virtual {v0}, Lux;->m()Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    iget v0, v5, Lvp;->c:I

    iget-object v7, v5, Lvp;->e:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    iget-object v7, v7, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Lub;

    invoke-virtual {v7, v6}, Lub;->c(Landroid/view/View;)I

    move-result v7

    add-int/2addr v0, v7

    iput v0, v5, Lvp;->c:I

    .line 1491
    :cond_5
    :goto_a
    const/4 v0, 0x0

    iget v0, v0, Lvp;->d:I

    iget v5, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->c:I

    mul-int/2addr v0, v5

    iget-object v5, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Lub;

    invoke-virtual {v5}, Lub;->b()I

    move-result v5

    add-int/2addr v5, v0

    .line 1494
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Lub;

    invoke-virtual {v0, v6}, Lub;->c(Landroid/view/View;)I

    move-result v0

    add-int v7, v5, v0

    .line 1495
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;

    iget v8, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->leftMargin:I

    add-int/2addr v4, v8

    iget v8, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->topMargin:I

    add-int/2addr v5, v8

    iget v8, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->rightMargin:I

    sub-int/2addr v1, v8

    iget v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->bottomMargin:I

    sub-int v0, v7, v0

    invoke-static {v6, v4, v5, v1, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(Landroid/view/View;IIII)V

    .line 1501
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->d:Ltj;

    iget v0, v0, Ltj;->d:I

    const/4 v1, 0x0

    iget v1, v1, Lvp;->c:I

    const/4 v4, -0x1

    if-ne v0, v4, :cond_14

    const/4 v0, 0x0

    iget v0, v0, Lvp;->a:I

    const/high16 v4, -0x8000

    if-eq v0, v4, :cond_13

    const/4 v0, 0x0

    iget v0, v0, Lvp;->a:I

    :goto_b
    add-int/2addr v0, v1

    if-gt v0, v2, :cond_6

    const/4 v0, 0x0

    const/4 v1, 0x0

    iget v1, v1, Lvp;->d:I

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4}, Ljava/util/BitSet;->set(IZ)V

    .line 1506
    :cond_6
    :goto_c
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->d:Ltj;

    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(Lur;Ltj;)V

    .line 1507
    const/4 v0, 0x1

    .line 1508
    goto/16 :goto_2

    .line 1400
    :cond_7
    iget v0, p2, Ltj;->e:I

    iget v1, p2, Ltj;->a:I

    sub-int/2addr v0, v1

    move v2, v0

    goto/16 :goto_0

    .line 1403
    :cond_8
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Lub;

    invoke-virtual {v0}, Lub;->b()I

    move-result v0

    move v3, v0

    goto/16 :goto_1

    .line 1414
    :cond_9
    const/4 v1, 0x0

    goto/16 :goto_3

    .line 1418
    :cond_a
    const/4 v1, 0x0

    iget-object v1, v1, Laf;->i:[I

    aget v1, v1, v4

    goto/16 :goto_4

    .line 1420
    :cond_b
    const/4 v1, 0x0

    move v5, v1

    goto/16 :goto_5

    .line 1422
    :cond_c
    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Lub;

    invoke-virtual {v1}, Lub;->c()I

    goto/16 :goto_6

    .line 1438
    :cond_d
    const/4 v1, 0x0

    const/4 v4, 0x0

    invoke-super {p0, v6, v1, v4}, Luo;->a(Landroid/view/View;IZ)V

    goto/16 :goto_7

    .line 1440
    :cond_e
    const/high16 v1, 0x4000

    invoke-static {v4, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    move v4, v1

    goto/16 :goto_8

    .line 1450
    :cond_f
    invoke-static {v3}, Lvp;->a(I)I

    move-result v1

    .line 1458
    iget-object v4, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Lub;

    invoke-virtual {v4, v6}, Lub;->c(Landroid/view/View;)I

    move-result v4

    sub-int v4, v1, v4

    goto/16 :goto_9

    .line 1459
    :cond_10
    iget-object v5, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->a:Lvp;

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;

    iput-object v5, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->a:Lvp;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v7, v8, v6}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const/high16 v7, -0x8000

    iput v7, v5, Lvp;->a:I

    const/4 v7, 0x0

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_11

    const/high16 v7, -0x8000

    iput v7, v5, Lvp;->b:I

    :cond_11
    iget-object v7, v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->c:Lux;

    invoke-virtual {v7}, Lux;->o()Z

    move-result v7

    if-nez v7, :cond_12

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->c:Lux;

    invoke-virtual {v0}, Lux;->m()Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_12
    iget v0, v5, Lvp;->c:I

    iget-object v7, v5, Lvp;->e:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    iget-object v7, v7, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Lub;

    invoke-virtual {v7, v6}, Lub;->c(Landroid/view/View;)I

    move-result v7

    add-int/2addr v0, v7

    iput v0, v5, Lvp;->c:I

    goto/16 :goto_a

    .line 1501
    :cond_13
    invoke-static {}, Lvp;->a()V

    const/4 v0, 0x0

    iget v0, v0, Lvp;->a:I

    goto/16 :goto_b

    :cond_14
    const/4 v0, 0x0

    iget v0, v0, Lvp;->b:I

    const/high16 v4, -0x8000

    if-eq v0, v4, :cond_15

    const/4 v0, 0x0

    iget v0, v0, Lvp;->b:I

    :goto_d
    sub-int/2addr v0, v1

    if-lt v0, v2, :cond_6

    const/4 v0, 0x0

    const/4 v1, 0x0

    iget v1, v1, Lvp;->d:I

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4}, Ljava/util/BitSet;->set(IZ)V

    goto/16 :goto_c

    :cond_15
    invoke-static {}, Lvp;->b()V

    const/4 v0, 0x0

    iget v0, v0, Lvp;->b:I

    goto :goto_d

    .line 1509
    :cond_16
    if-nez v0, :cond_17

    .line 1510
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->d:Ltj;

    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(Lur;Ltj;)V

    .line 1513
    :cond_17
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->d:Ltj;

    iget v0, v0, Ltj;->d:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_18

    .line 1514
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Lub;

    invoke-virtual {v0}, Lub;->b()I

    move-result v0

    invoke-static {v0}, Lvp;->a(I)I

    move-result v0

    .line 1515
    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Lub;

    invoke-virtual {v1}, Lub;->b()I

    move-result v1

    sub-int v0, v1, v0

    .line 1520
    :goto_e
    if-lez v0, :cond_19

    iget v1, p2, Ltj;->a:I

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    :goto_f
    return v0

    .line 1517
    :cond_18
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Lub;

    invoke-virtual {v0}, Lub;->c()I

    move-result v0

    invoke-static {v0}, Lvp;->b(I)I

    move-result v0

    .line 1518
    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Lub;

    invoke-virtual {v1}, Lub;->c()I

    move-result v1

    sub-int/2addr v0, v1

    goto :goto_e

    .line 1520
    :cond_19
    const/4 v0, 0x0

    goto :goto_f
.end method

.method private a(Z)Landroid/view/View;
    .locals 8
    .parameter

    .prologue
    .line 1183
    invoke-direct {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->f()V

    .line 1184
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Lub;

    invoke-virtual {v0}, Lub;->b()I

    move-result v3

    .line 1185
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Lub;

    invoke-virtual {v0}, Lub;->c()I

    move-result v4

    .line 1186
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->l()I

    move-result v5

    .line 1187
    const/4 v1, 0x0

    .line 1188
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-ge v2, v5, :cond_2

    .line 1189
    invoke-virtual {p0, v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->c(I)Landroid/view/View;

    move-result-object v0

    .line 1190
    iget-object v6, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Lub;

    invoke-virtual {v6, v0}, Lub;->a(Landroid/view/View;)I

    move-result v6

    .line 1191
    iget-object v7, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Lub;

    invoke-virtual {v7, v0}, Lub;->b(Landroid/view/View;)I

    move-result v7

    .line 1192
    if-le v7, v3, :cond_3

    if-ge v6, v4, :cond_3

    .line 1193
    if-ge v6, v3, :cond_0

    if-nez p1, :cond_1

    .line 1204
    :cond_0
    :goto_1
    return-object v0

    .line 1200
    :cond_1
    if-nez v1, :cond_3

    .line 1188
    :goto_2
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move-object v1, v0

    goto :goto_0

    :cond_2
    move-object v0, v1

    .line 1204
    goto :goto_1

    :cond_3
    move-object v0, v1

    goto :goto_2
.end method

.method private a(I)V
    .locals 3
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 1270
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->d:Ltj;

    iput v1, v0, Ltj;->a:I

    .line 1271
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->d:Ltj;

    iput p1, v0, Ltj;->b:I

    .line 1272
    iget-object v0, p0, Luo;->f:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Luo;->f:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->w(Landroid/support/v7/widget/RecyclerView;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 1287
    :goto_0
    if-eqz v0, :cond_1

    .line 1288
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->d:Ltj;

    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Lub;

    invoke-virtual {v1}, Lub;->b()I

    move-result v1

    add-int/lit8 v1, v1, 0x0

    iput v1, v0, Ltj;->e:I

    .line 1289
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->d:Ltj;

    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Lub;

    invoke-virtual {v1}, Lub;->c()I

    move-result v1

    add-int/lit8 v1, v1, 0x0

    iput v1, v0, Ltj;->f:I

    .line 1294
    :goto_1
    return-void

    :cond_0
    move v0, v1

    .line 1272
    goto :goto_0

    .line 1291
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->d:Ltj;

    iget-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Lub;

    invoke-virtual {v2}, Lub;->d()I

    move-result v2

    add-int/lit8 v2, v2, 0x0

    iput v2, v0, Ltj;->f:I

    .line 1292
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->d:Ltj;

    iput v1, v0, Ltj;->e:I

    goto :goto_1
.end method

.method private a(Lur;I)V
    .locals 8
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x0

    const/high16 v6, -0x8000

    const/4 v5, 0x0

    .line 1708
    :goto_0
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->l()I

    move-result v0

    if-lez v0, :cond_0

    .line 1709
    invoke-virtual {p0, v7}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->c(I)Landroid/view/View;

    move-result-object v2

    .line 1710
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Lub;

    invoke-virtual {v0, v2}, Lub;->b(Landroid/view/View;)I

    move-result v0

    if-gt v0, p2, :cond_0

    .line 1711
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;

    .line 1713
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_1

    .line 1732
    :cond_0
    return-void

    .line 1726
    :cond_1
    iget-object v3, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->a:Lvp;

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;

    iput-object v5, v1, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->a:Lvp;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_2

    iput v6, v3, Lvp;->b:I

    :cond_2
    iget-object v4, v1, Landroid/support/v7/widget/RecyclerView$LayoutParams;->c:Lux;

    invoke-virtual {v4}, Lux;->o()Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView$LayoutParams;->c:Lux;

    invoke-virtual {v1}, Lux;->m()Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    iget v1, v3, Lvp;->c:I

    iget-object v4, v3, Lvp;->e:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    iget-object v4, v4, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Lub;

    invoke-virtual {v4, v0}, Lub;->c(Landroid/view/View;)I

    move-result v0

    sub-int v0, v1, v0

    iput v0, v3, Lvp;->c:I

    :cond_4
    iput v6, v3, Lvp;->a:I

    .line 1728
    invoke-virtual {p0, v2, p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(Landroid/view/View;Lur;)V

    goto :goto_0
.end method

.method private a(Lur;Ltj;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v1, -0x1

    .line 1558
    iget v0, p2, Ltj;->a:I

    if-nez v0, :cond_1

    .line 1560
    iget v0, p2, Ltj;->d:I

    if-ne v0, v1, :cond_0

    .line 1561
    iget v0, p2, Ltj;->f:I

    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b(Lur;I)V

    .line 1591
    :goto_0
    return-void

    .line 1563
    :cond_0
    iget v0, p2, Ltj;->e:I

    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(Lur;I)V

    goto :goto_0

    .line 1568
    :cond_1
    iget v0, p2, Ltj;->d:I

    if-ne v0, v1, :cond_3

    .line 1570
    iget v0, p2, Ltj;->e:I

    iget v1, p2, Ltj;->e:I

    invoke-static {v1}, Lvp;->a(I)I

    move-result v1

    sub-int/2addr v0, v1

    .line 1572
    if-gez v0, :cond_2

    .line 1573
    iget v0, p2, Ltj;->f:I

    .line 1577
    :goto_1
    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b(Lur;I)V

    goto :goto_0

    .line 1575
    :cond_2
    iget v1, p2, Ltj;->f:I

    iget v2, p2, Ltj;->a:I

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    sub-int v0, v1, v0

    goto :goto_1

    .line 1580
    :cond_3
    iget v0, p2, Ltj;->f:I

    invoke-static {v0}, Lvp;->b(I)I

    move-result v0

    iget v1, p2, Ltj;->f:I

    sub-int/2addr v0, v1

    .line 1582
    if-gez v0, :cond_4

    .line 1583
    iget v0, p2, Ltj;->e:I

    .line 1587
    :goto_2
    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(Lur;I)V

    goto :goto_0

    .line 1585
    :cond_4
    iget v1, p2, Ltj;->e:I

    iget v2, p2, Ltj;->a:I

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    add-int/2addr v0, v1

    goto :goto_2
.end method

.method private a(Lur;Luv;Z)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1239
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Lub;

    invoke-virtual {v0}, Lub;->c()I

    move-result v0

    invoke-static {v0}, Lvp;->b(I)I

    move-result v0

    .line 1240
    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Lub;

    invoke-virtual {v1}, Lub;->c()I

    move-result v1

    sub-int v0, v1, v0

    .line 1242
    if-lez v0, :cond_0

    .line 1243
    neg-int v1, v0

    invoke-direct {p0, v1, p1, p2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->d(ILur;Luv;)I

    move-result v1

    neg-int v1, v1

    .line 1247
    sub-int/2addr v0, v1

    .line 1248
    if-eqz p3, :cond_0

    if-lez v0, :cond_0

    .line 1249
    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Lub;

    invoke-virtual {v1, v0}, Lub;->a(I)V

    .line 1251
    :cond_0
    return-void
.end method

.method private b(Z)Landroid/view/View;
    .locals 7
    .parameter

    .prologue
    .line 1214
    invoke-direct {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->f()V

    .line 1215
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Lub;

    invoke-virtual {v0}, Lub;->b()I

    move-result v3

    .line 1216
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Lub;

    invoke-virtual {v0}, Lub;->c()I

    move-result v4

    .line 1217
    const/4 v1, 0x0

    .line 1218
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->l()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v2, v0

    :goto_0
    if-ltz v2, :cond_2

    .line 1219
    invoke-virtual {p0, v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->c(I)Landroid/view/View;

    move-result-object v0

    .line 1220
    iget-object v5, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Lub;

    invoke-virtual {v5, v0}, Lub;->a(Landroid/view/View;)I

    move-result v5

    .line 1221
    iget-object v6, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Lub;

    invoke-virtual {v6, v0}, Lub;->b(Landroid/view/View;)I

    move-result v6

    .line 1222
    if-le v6, v3, :cond_3

    if-ge v5, v4, :cond_3

    .line 1223
    if-le v6, v4, :cond_0

    if-nez p1, :cond_1

    .line 1234
    :cond_0
    :goto_1
    return-object v0

    .line 1230
    :cond_1
    if-nez v1, :cond_3

    .line 1218
    :goto_2
    add-int/lit8 v1, v2, -0x1

    move v2, v1

    move-object v1, v0

    goto :goto_0

    :cond_2
    move-object v0, v1

    .line 1234
    goto :goto_1

    :cond_3
    move-object v0, v1

    goto :goto_2
.end method

.method private b(III)V
    .locals 9
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v8, 0x1

    const/4 v3, -0x1

    const/4 v5, 0x0

    .line 1348
    iget-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h:Z

    if-eqz v0, :cond_3

    invoke-direct {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->j()I

    move-result v0

    move v6, v0

    .line 1352
    :goto_0
    const/4 v0, 0x3

    if-ne p3, v0, :cond_5

    .line 1353
    if-ge p1, p2, :cond_4

    .line 1354
    add-int/lit8 v0, p2, 0x1

    move v1, p1

    move v2, v0

    .line 1365
    :goto_1
    iget-object v0, v5, Laf;->i:[I

    if-eqz v0, :cond_1

    iget-object v0, v5, Laf;->i:[I

    array-length v0, v0

    if-ge v1, v0, :cond_1

    iget-object v0, v5, Laf;->j:Ljava/util/List;

    if-eqz v0, :cond_9

    iget-object v0, v5, Laf;->j:Ljava/util/List;

    if-eqz v0, :cond_7

    iget-object v0, v5, Laf;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v4, v0

    :goto_2
    if-ltz v4, :cond_7

    iget-object v0, v5, Laf;->j:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;

    iget v7, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->a:I

    if-ne v7, v1, :cond_6

    :goto_3
    if-eqz v0, :cond_0

    iget-object v4, v5, Laf;->j:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    iget-object v0, v5, Laf;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    const/4 v4, 0x0

    :goto_4
    if-ge v4, v7, :cond_d

    iget-object v0, v5, Laf;->j:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;

    iget v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->a:I

    if-lt v0, v1, :cond_8

    :goto_5
    if-eq v4, v3, :cond_9

    iget-object v0, v5, Laf;->j:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;

    iget-object v7, v5, Laf;->j:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->a:I

    :goto_6
    if-ne v0, v3, :cond_a

    iget-object v0, v5, Laf;->i:[I

    iget-object v4, v5, Laf;->i:[I

    array-length v4, v4

    invoke-static {v0, v1, v4, v3}, Ljava/util/Arrays;->fill([IIII)V

    .line 1366
    :cond_1
    :goto_7
    packed-switch p3, :pswitch_data_0

    .line 1380
    :goto_8
    :pswitch_0
    if-gt v2, v6, :cond_b

    .line 1388
    :cond_2
    :goto_9
    return-void

    .line 1348
    :cond_3
    invoke-direct {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->s()I

    move-result v0

    move v6, v0

    goto :goto_0

    .line 1357
    :cond_4
    add-int/lit8 v0, p1, 0x1

    move v1, p2

    move v2, v0

    .line 1358
    goto :goto_1

    .line 1362
    :cond_5
    add-int v0, p1, p2

    move v1, p1

    move v2, v0

    goto :goto_1

    .line 1365
    :cond_6
    add-int/lit8 v0, v4, -0x1

    move v4, v0

    goto :goto_2

    :cond_7
    move-object v0, v5

    goto :goto_3

    :cond_8
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_9
    move v0, v3

    goto :goto_6

    :cond_a
    iget-object v4, v5, Laf;->i:[I

    add-int/lit8 v0, v0, 0x1

    invoke-static {v4, v1, v0, v3}, Ljava/util/Arrays;->fill([IIII)V

    goto :goto_7

    .line 1368
    :pswitch_1
    invoke-static {p1, p2}, Laf;->b(II)V

    goto :goto_8

    .line 1371
    :pswitch_2
    invoke-static {p1, p2}, Laf;->a(II)V

    goto :goto_8

    .line 1375
    :pswitch_3
    invoke-static {p1, v8}, Laf;->a(II)V

    .line 1376
    invoke-static {p2, v8}, Laf;->b(II)V

    goto :goto_8

    .line 1384
    :cond_b
    iget-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h:Z

    if-eqz v0, :cond_c

    invoke-direct {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->s()I

    move-result v0

    .line 1385
    :goto_a
    if-gt v1, v0, :cond_2

    .line 1386
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->k()V

    goto :goto_9

    .line 1384
    :cond_c
    invoke-direct {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->j()I

    move-result v0

    goto :goto_a

    :cond_d
    move v4, v3

    goto :goto_5

    .line 1366
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private b(Lur;I)V
    .locals 10
    .parameter
    .parameter

    .prologue
    const/4 v9, 0x1

    const/high16 v8, -0x8000

    const/4 v7, 0x0

    .line 1736
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->l()I

    move-result v0

    .line 1738
    add-int/lit8 v0, v0, -0x1

    move v2, v0

    :goto_0
    if-ltz v2, :cond_0

    .line 1739
    invoke-virtual {p0, v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->c(I)Landroid/view/View;

    move-result-object v3

    .line 1740
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Lub;

    invoke-virtual {v0, v3}, Lub;->a(Landroid/view/View;)I

    move-result v0

    if-lt v0, p2, :cond_0

    .line 1741
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;

    .line 1743
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v1, v9, :cond_1

    .line 1763
    :cond_0
    return-void

    .line 1756
    :cond_1
    iget-object v4, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->a:Lvp;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v0, v5, -0x1

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;

    iput-object v7, v1, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->a:Lvp;

    iget-object v6, v1, Landroid/support/v7/widget/RecyclerView$LayoutParams;->c:Lux;

    invoke-virtual {v6}, Lux;->o()Z

    move-result v6

    if-nez v6, :cond_2

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView$LayoutParams;->c:Lux;

    invoke-virtual {v1}, Lux;->m()Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    iget v1, v4, Lvp;->c:I

    iget-object v6, v4, Lvp;->e:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    iget-object v6, v6, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Lub;

    invoke-virtual {v6, v0}, Lub;->c(Landroid/view/View;)I

    move-result v0

    sub-int v0, v1, v0

    iput v0, v4, Lvp;->c:I

    :cond_3
    if-ne v5, v9, :cond_4

    iput v8, v4, Lvp;->a:I

    :cond_4
    iput v8, v4, Lvp;->b:I

    .line 1758
    invoke-virtual {p0, v3, p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(Landroid/view/View;Lur;)V

    .line 1738
    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_0
.end method

.method private b(Lur;Luv;Z)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1255
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Lub;

    invoke-virtual {v0}, Lub;->b()I

    move-result v0

    invoke-static {v0}, Lvp;->a(I)I

    move-result v0

    .line 1256
    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Lub;

    invoke-virtual {v1}, Lub;->b()I

    move-result v1

    sub-int/2addr v0, v1

    .line 1258
    if-lez v0, :cond_0

    .line 1259
    invoke-direct {p0, v0, p1, p2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->d(ILur;Luv;)I

    move-result v1

    .line 1263
    sub-int/2addr v0, v1

    .line 1264
    if-eqz p3, :cond_0

    if-lez v0, :cond_0

    .line 1265
    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Lub;

    neg-int v0, v0

    invoke-virtual {v1, v0}, Lub;->a(I)V

    .line 1267
    :cond_0
    return-void
.end method

.method private d(ILur;Luv;)I
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1903
    invoke-direct {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->f()V

    .line 1906
    if-lez p1, :cond_1

    .line 1907
    const/4 v0, 0x1

    .line 1908
    invoke-direct {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->j()I

    move-result v1

    .line 1913
    :goto_0
    invoke-direct {p0, v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(I)V

    .line 1914
    invoke-direct {p0, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->g(I)V

    .line 1915
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->d:Ltj;

    iget-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->d:Ltj;

    iget v2, v2, Ltj;->c:I

    add-int/2addr v1, v2

    iput v1, v0, Ltj;->b:I

    .line 1916
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 1917
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->d:Ltj;

    iput v1, v0, Ltj;->a:I

    .line 1918
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->d:Ltj;

    invoke-direct {p0, p2, v0, p3}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(Lur;Ltj;Luv;)I

    move-result v0

    .line 1920
    if-lt v1, v0, :cond_0

    .line 1921
    if-gez p1, :cond_2

    .line 1923
    neg-int p1, v0

    .line 1931
    :cond_0
    :goto_1
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Lub;

    neg-int v1, p1

    invoke-virtual {v0, v1}, Lub;->a(I)V

    .line 1933
    iget-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h:Z

    iput-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->k:Z

    .line 1934
    return p1

    .line 1910
    :cond_1
    const/4 v0, -0x1

    .line 1911
    invoke-direct {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->s()I

    move-result v1

    goto :goto_0

    :cond_2
    move p1, v0

    .line 1925
    goto :goto_1
.end method

.method private f()V
    .locals 1

    .prologue
    .line 512
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Lub;

    if-nez v0, :cond_0

    .line 513
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lub;->a(Luo;I)Lub;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Lub;

    .line 514
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lub;->a(Luo;I)Lub;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Lub;

    .line 516
    new-instance v0, Ltj;

    invoke-direct {v0}, Ltj;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->d:Ltj;

    .line 518
    :cond_0
    return-void
.end method

.method private g(Luv;)I
    .locals 7
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 933
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->l()I

    move-result v0

    if-nez v0, :cond_0

    .line 937
    :goto_0
    return v5

    .line 936
    :cond_0
    invoke-direct {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->f()V

    .line 937
    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Lub;

    invoke-direct {p0, v3}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(Z)Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v3}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b(Z)Landroid/view/View;

    move-result-object v3

    iget-boolean v6, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h:Z

    move-object v0, p1

    move-object v4, p0

    invoke-static/range {v0 .. v6}, Ld;->a(Luv;Lub;Landroid/view/View;Landroid/view/View;Luo;ZZ)I

    move-result v5

    goto :goto_0
.end method

.method private g()V
    .locals 1

    .prologue
    .line 527
    invoke-direct {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i()Z

    move-result v0

    if-nez v0, :cond_0

    .line 528
    iget-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->g:Z

    .line 530
    :goto_0
    iput-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h:Z

    .line 532
    return-void

    .line 530
    :cond_0
    iget-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->g:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private g(I)V
    .locals 5
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, -0x1

    .line 1297
    iget-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->d:Ltj;

    iput p1, v2, Ltj;->d:I

    .line 1298
    iget-object v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->d:Ltj;

    iget-boolean v4, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h:Z

    if-ne p1, v1, :cond_0

    move v2, v0

    :goto_0
    if-ne v4, v2, :cond_1

    :goto_1
    iput v0, v3, Ltj;->c:I

    .line 1300
    return-void

    .line 1298
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method private h(Luv;)I
    .locals 6
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 954
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->l()I

    move-result v0

    if-nez v0, :cond_0

    .line 958
    :goto_0
    return v5

    .line 957
    :cond_0
    invoke-direct {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->f()V

    .line 958
    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Lub;

    invoke-direct {p0, v3}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(Z)Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v3}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b(Z)Landroid/view/View;

    move-result-object v3

    move-object v0, p1

    move-object v4, p0

    invoke-static/range {v0 .. v5}, Ld;->a(Luv;Lub;Landroid/view/View;Landroid/view/View;Luo;Z)I

    move-result v5

    goto :goto_0
.end method

.method private i(Luv;)I
    .locals 6
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 975
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->l()I

    move-result v0

    if-nez v0, :cond_0

    .line 979
    :goto_0
    return v5

    .line 978
    :cond_0
    invoke-direct {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->f()V

    .line 979
    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Lub;

    invoke-direct {p0, v3}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(Z)Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v3}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b(Z)Landroid/view/View;

    move-result-object v3

    move-object v0, p1

    move-object v4, p0

    invoke-static/range {v0 .. v5}, Ld;->b(Luv;Lub;Landroid/view/View;Landroid/view/View;Luo;Z)I

    move-result v5

    goto :goto_0
.end method

.method private i()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 535
    iget-object v1, p0, Luo;->f:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v1}, Lgs;->h(Landroid/view/View;)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private j()I
    .locals 1

    .prologue
    .line 1938
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->l()I

    move-result v0

    .line 1939
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->c(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(Landroid/view/View;)I

    move-result v0

    goto :goto_0
.end method

.method private s()I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1943
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->l()I

    move-result v1

    .line 1944
    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->c(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(Landroid/view/View;)I

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public final a(ILur;Luv;)I
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1832
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->d(ILur;Luv;)I

    move-result v0

    return v0
.end method

.method public final a(Lur;Luv;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1161
    const/4 v0, 0x0

    return v0
.end method

.method public final a(Luv;)I
    .locals 1
    .parameter

    .prologue
    .line 929
    invoke-direct {p0, p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->g(Luv;)I

    move-result v0

    return v0
.end method

.method public final a()Landroid/support/v7/widget/RecyclerView$LayoutParams;
    .locals 1

    .prologue
    .line 1982
    new-instance v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;

    invoke-direct {v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;-><init>()V

    return-object v0
.end method

.method public final a(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/support/v7/widget/RecyclerView$LayoutParams;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1988
    new-instance v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;

    invoke-direct {v0, p1, p2}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public final a(Landroid/view/ViewGroup$LayoutParams;)Landroid/support/v7/widget/RecyclerView$LayoutParams;
    .locals 1
    .parameter

    .prologue
    .line 1993
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_0

    .line 1994
    new-instance v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 1996
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;

    invoke-direct {v0, p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public final a(II)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1325
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b(III)V

    .line 1326
    return-void
.end method

.method public final a(Landroid/os/Parcelable;)V
    .locals 1
    .parameter

    .prologue
    .line 1043
    instance-of v0, p1, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    if-eqz v0, :cond_0

    .line 1044
    check-cast p1, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    iput-object p1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->m:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    .line 1045
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->k()V

    .line 1049
    :cond_0
    return-void
.end method

.method public final a(Landroid/support/v7/widget/RecyclerView;)V
    .locals 0
    .parameter

    .prologue
    .line 1330
    invoke-static {}, Laf;->a()V

    .line 1331
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->k()V

    .line 1332
    return-void
.end method

.method public final a(Landroid/support/v7/widget/RecyclerView;Lur;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 288
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->r:Ljava/lang/Runnable;

    iget-object v1, p0, Luo;->f:Landroid/support/v7/widget/RecyclerView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Luo;->f:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 289
    :cond_0
    return-void
.end method

.method public final a(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 1126
    invoke-super {p0, p1}, Luo;->a(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1127
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->l()I

    move-result v0

    if-lez v0, :cond_0

    .line 1128
    invoke-static {p1}, Lix;->a(Landroid/view/accessibility/AccessibilityEvent;)Ljt;

    move-result-object v0

    .line 1130
    invoke-direct {p0, v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(Z)Landroid/view/View;

    move-result-object v1

    .line 1131
    invoke-direct {p0, v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b(Z)Landroid/view/View;

    move-result-object v2

    .line 1132
    if-eqz v1, :cond_0

    if-nez v2, :cond_1

    .line 1145
    :cond_0
    :goto_0
    return-void

    .line 1135
    :cond_1
    invoke-static {v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(Landroid/view/View;)I

    move-result v1

    .line 1136
    invoke-static {v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(Landroid/view/View;)I

    move-result v2

    .line 1137
    if-ge v1, v2, :cond_2

    .line 1138
    invoke-virtual {v0, v1}, Ljt;->b(I)V

    .line 1139
    invoke-virtual {v0, v2}, Ljt;->c(I)V

    goto :goto_0

    .line 1141
    :cond_2
    invoke-virtual {v0, v2}, Ljt;->b(I)V

    .line 1142
    invoke-virtual {v0, v1}, Ljt;->c(I)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 486
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->m:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    if-nez v0, :cond_0

    .line 487
    invoke-super {p0, p1}, Luo;->a(Ljava/lang/String;)V

    .line 489
    :cond_0
    return-void
.end method

.method public final a(Lur;Luv;Landroid/view/View;Ljb;)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, -0x1

    .line 1105
    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1106
    instance-of v2, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;

    if-nez v2, :cond_0

    .line 1107
    invoke-super {p0, p3, p4}, Luo;->a(Landroid/view/View;Ljb;)V

    .line 1117
    :goto_0
    return-void

    .line 1110
    :cond_0
    check-cast v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;

    .line 1111
    iget-object v2, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->a:Lvp;

    if-nez v2, :cond_1

    move v0, v1

    :goto_1
    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v0, v2, v1, v1, v3}, Ljk;->a(IIIIZ)Ljk;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljb;->a(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    iget-object v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->a:Lvp;

    iget v0, v0, Lvp;->d:I

    goto :goto_1
.end method

.method public final a(Landroid/support/v7/widget/RecyclerView$LayoutParams;)Z
    .locals 1
    .parameter

    .prologue
    .line 2002
    instance-of v0, p1, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;

    return v0
.end method

.method public final b(ILur;Luv;)I
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1838
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->d(ILur;Luv;)I

    move-result v0

    return v0
.end method

.method public final b(Lur;Luv;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1170
    invoke-super {p0, p1, p2}, Luo;->b(Lur;Luv;)I

    move-result v0

    return v0
.end method

.method public final b(Luv;)I
    .locals 1
    .parameter

    .prologue
    .line 945
    invoke-direct {p0, p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->g(Luv;)I

    move-result v0

    return v0
.end method

.method public final b(II)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1320
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b(III)V

    .line 1321
    return-void
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 796
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->m:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c(Luv;)I
    .locals 1
    .parameter

    .prologue
    .line 950
    invoke-direct {p0, p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h(Luv;)I

    move-result v0

    return v0
.end method

.method public final c()Landroid/os/Parcelable;
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v1, -0x1

    const/4 v3, 0x0

    .line 1053
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->m:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    if-eqz v0, :cond_0

    .line 1054
    new-instance v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->m:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    invoke-direct {v0, v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;-><init>(Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;)V

    .line 1099
    :goto_0
    return-object v0

    .line 1056
    :cond_0
    new-instance v2, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    invoke-direct {v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;-><init>()V

    .line 1057
    iget-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->g:Z

    iput-boolean v0, v2, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->h:Z

    .line 1058
    iget-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->k:Z

    iput-boolean v0, v2, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->i:Z

    .line 1059
    iget-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->l:Z

    iput-boolean v0, v2, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->j:Z

    .line 1061
    iput v3, v2, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->e:I

    .line 1069
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->l()I

    move-result v0

    if-lez v0, :cond_4

    .line 1070
    invoke-direct {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->f()V

    .line 1071
    iget-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->k:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->j()I

    move-result v0

    :goto_1
    iput v0, v2, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->a:I

    .line 1073
    iget-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h:Z

    if-eqz v0, :cond_2

    invoke-direct {p0, v4}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b(Z)Landroid/view/View;

    move-result-object v0

    :goto_2
    if-nez v0, :cond_3

    move v0, v1

    :goto_3
    iput v0, v2, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->b:I

    .line 1074
    iput v3, v2, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->c:I

    .line 1075
    new-array v0, v3, [I

    iput-object v0, v2, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->d:[I

    :goto_4
    move-object v0, v2

    .line 1099
    goto :goto_0

    .line 1071
    :cond_1
    invoke-direct {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->s()I

    move-result v0

    goto :goto_1

    .line 1073
    :cond_2
    invoke-direct {p0, v4}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(Z)Landroid/view/View;

    move-result-object v0

    goto :goto_2

    :cond_3
    invoke-static {v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(Landroid/view/View;)I

    move-result v0

    goto :goto_3

    .line 1092
    :cond_4
    iput v1, v2, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->a:I

    .line 1093
    iput v1, v2, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->b:I

    .line 1094
    iput v3, v2, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->c:I

    goto :goto_4
.end method

.method public final c(II)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1341
    const/4 v0, 0x2

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b(III)V

    .line 1342
    return-void
.end method

.method public final c(Lur;Luv;)V
    .locals 10
    .parameter
    .parameter

    .prologue
    const/high16 v9, -0x8000

    const/4 v8, 0x0

    const/4 v4, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 551
    invoke-direct {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->f()V

    .line 552
    iget-object v5, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->q:Laf;

    .line 553
    iput v4, v5, Laf;->f:I

    iput-boolean v2, v5, Laf;->g:Z

    .line 555
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->m:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    if-eqz v0, :cond_c

    .line 556
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->m:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    iget v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->c:I

    if-lez v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->m:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    iget v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->c:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->m:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    iput-object v8, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->d:[I

    iput v2, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->c:I

    iput v2, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->e:I

    iput-object v8, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->f:[I

    iput-object v8, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->g:Ljava/util/List;

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->m:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    iget-object v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->m:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    iget v3, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->b:I

    iput v3, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->a:I

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->m:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    iget-boolean v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->j:Z

    iput-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->l:Z

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->m:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    iget-boolean v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->h:Z

    invoke-virtual {p0, v8}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(Ljava/lang/String;)V

    iget-object v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->m:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    if-eqz v3, :cond_1

    iget-object v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->m:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    iget-boolean v3, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->h:Z

    if-eq v3, v0, :cond_1

    iget-object v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->m:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    iput-boolean v0, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->h:Z

    :cond_1
    iput-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->g:Z

    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->k()V

    invoke-direct {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->g()V

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->m:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    iget v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->a:I

    if-eq v0, v4, :cond_b

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->m:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    iget v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->a:I

    iput v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i:I

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->m:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    iget-boolean v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->i:Z

    iput-boolean v0, v5, Laf;->g:Z

    :goto_0
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->m:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    iget v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->e:I

    if-le v0, v1, :cond_2

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->m:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    iget-object v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->f:[I

    iput-object v0, v8, Laf;->i:[I

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->m:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    iget-object v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->g:Ljava/util/List;

    iput-object v0, v8, Laf;->j:Ljava/util/List;

    .line 562
    :cond_2
    :goto_1
    iget-boolean v0, p2, Luv;->j:Z

    if-nez v0, :cond_3

    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i:I

    if-ne v0, v4, :cond_d

    :cond_3
    move v0, v2

    :goto_2
    if-nez v0, :cond_5

    iget-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->k:Z

    if-eqz v0, :cond_22

    invoke-virtual {p2}, Luv;->a()I

    move-result v6

    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->l()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v3, v0

    :goto_3
    if-ltz v3, :cond_21

    invoke-virtual {p0, v3}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->c(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(Landroid/view/View;)I

    move-result v0

    if-ltz v0, :cond_20

    if-ge v0, v6, :cond_20

    :cond_4
    :goto_4
    iput v0, v5, Laf;->f:I

    .line 564
    :cond_5
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->m:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    if-nez v0, :cond_7

    .line 565
    iget-boolean v0, v5, Laf;->g:Z

    iget-boolean v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->k:Z

    if-ne v0, v3, :cond_6

    invoke-direct {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i()Z

    move-result v0

    iget-boolean v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->l:Z

    if-eq v0, v3, :cond_7

    .line 567
    :cond_6
    invoke-static {}, Laf;->a()V

    .line 568
    :cond_7
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->l()I

    move-result v0

    if-lez v0, :cond_8

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->m:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    if-eqz v0, :cond_8

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->m:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    iget v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->c:I

    .line 574
    :cond_8
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(Lur;)V

    .line 589
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Lub;

    invoke-virtual {v0}, Lub;->e()I

    move-result v0

    div-int/lit8 v0, v0, 0x0

    iput v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->c:I

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Lub;

    invoke-virtual {v0}, Lub;->e()I

    move-result v0

    const/high16 v3, 0x4000

    invoke-static {v0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->c:I

    const/high16 v3, 0x4000

    invoke-static {v0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->o:I

    invoke-static {v2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->n:I

    .line 591
    iget v0, v5, Laf;->f:I

    invoke-direct {p0, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(I)V

    .line 592
    iget-boolean v0, v5, Laf;->g:Z

    if-eqz v0, :cond_25

    .line 594
    invoke-direct {p0, v4}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->g(I)V

    .line 595
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->d:Ltj;

    invoke-direct {p0, p1, v0, p2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(Lur;Ltj;Luv;)I

    .line 597
    invoke-direct {p0, v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->g(I)V

    .line 598
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->d:Ltj;

    iget v3, v5, Laf;->f:I

    iget-object v6, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->d:Ltj;

    iget v6, v6, Ltj;->c:I

    add-int/2addr v3, v6

    iput v3, v0, Ltj;->b:I

    .line 599
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->d:Ltj;

    invoke-direct {p0, p1, v0, p2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(Lur;Ltj;Luv;)I

    .line 610
    :goto_5
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->l()I

    move-result v0

    if-lez v0, :cond_9

    .line 611
    iget-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h:Z

    if-eqz v0, :cond_26

    .line 612
    invoke-direct {p0, p1, p2, v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(Lur;Luv;Z)V

    .line 613
    invoke-direct {p0, p1, p2, v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b(Lur;Luv;Z)V

    .line 620
    :cond_9
    :goto_6
    iget-boolean v0, p2, Luv;->j:Z

    if-nez v0, :cond_a

    .line 621
    iput v4, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i:I

    .line 629
    iput v9, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->j:I

    .line 631
    :cond_a
    iget-boolean v0, v5, Laf;->g:Z

    iput-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->k:Z

    .line 632
    invoke-direct {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i()Z

    move-result v0

    iput-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->l:Z

    .line 633
    iput-object v8, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->m:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    .line 634
    return-void

    .line 556
    :cond_b
    iget-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h:Z

    iput-boolean v0, v5, Laf;->g:Z

    goto/16 :goto_0

    .line 558
    :cond_c
    invoke-direct {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->g()V

    .line 559
    iget-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h:Z

    iput-boolean v0, v5, Laf;->g:Z

    goto/16 :goto_1

    .line 562
    :cond_d
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i:I

    if-ltz v0, :cond_e

    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i:I

    invoke-virtual {p2}, Luv;->a()I

    move-result v3

    if-lt v0, v3, :cond_f

    :cond_e
    iput v4, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i:I

    iput v9, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->j:I

    move v0, v2

    goto/16 :goto_2

    :cond_f
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->m:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    if-eqz v0, :cond_10

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->m:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    iget v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->a:I

    if-eq v0, v4, :cond_10

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->m:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    iget v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->c:I

    if-gtz v0, :cond_1f

    :cond_10
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i:I

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_17

    iget-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h:Z

    if-eqz v0, :cond_11

    invoke-direct {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->j()I

    move-result v0

    :goto_7
    iput v0, v5, Laf;->f:I

    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->j:I

    if-eq v0, v9, :cond_13

    iget-boolean v0, v5, Laf;->g:Z

    if-eqz v0, :cond_12

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Lub;

    invoke-virtual {v0}, Lub;->c()I

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Lub;

    invoke-virtual {v0, v3}, Lub;->b(Landroid/view/View;)I

    :goto_8
    move v0, v1

    goto/16 :goto_2

    :cond_11
    invoke-direct {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->s()I

    move-result v0

    goto :goto_7

    :cond_12
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Lub;

    invoke-virtual {v0}, Lub;->b()I

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Lub;

    invoke-virtual {v0, v3}, Lub;->a(Landroid/view/View;)I

    goto :goto_8

    :cond_13
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Lub;

    invoke-virtual {v0, v3}, Lub;->c(Landroid/view/View;)I

    move-result v0

    iget-object v6, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Lub;

    invoke-virtual {v6}, Lub;->e()I

    move-result v6

    if-le v0, v6, :cond_16

    iget-boolean v0, v5, Laf;->g:Z

    if-eqz v0, :cond_15

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Lub;

    invoke-virtual {v0}, Lub;->c()I

    :cond_14
    :goto_9
    move v0, v1

    goto/16 :goto_2

    :cond_15
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Lub;

    invoke-virtual {v0}, Lub;->b()I

    goto :goto_9

    :cond_16
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Lub;

    invoke-virtual {v0, v3}, Lub;->a(Landroid/view/View;)I

    move-result v0

    iget-object v6, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Lub;

    invoke-virtual {v6}, Lub;->b()I

    move-result v6

    sub-int/2addr v0, v6

    if-ltz v0, :cond_14

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Lub;

    invoke-virtual {v0}, Lub;->c()I

    move-result v0

    iget-object v6, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Lub;

    invoke-virtual {v6, v3}, Lub;->b(Landroid/view/View;)I

    move-result v3

    sub-int/2addr v0, v3

    if-ltz v0, :cond_14

    goto :goto_9

    :cond_17
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i:I

    iput v0, v5, Laf;->f:I

    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->j:I

    if-ne v0, v9, :cond_1d

    iget v0, v5, Laf;->f:I

    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->l()I

    move-result v3

    if-nez v3, :cond_18

    iget-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h:Z

    if-nez v0, :cond_1a

    move v0, v4

    :goto_a
    if-ne v0, v1, :cond_1b

    move v0, v1

    :goto_b
    iput-boolean v0, v5, Laf;->g:Z

    iget-boolean v0, v5, Laf;->g:Z

    if-eqz v0, :cond_1c

    iget-object v0, v5, Laf;->h:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    iget-object v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Lub;

    invoke-virtual {v0}, Lub;->c()I

    goto :goto_9

    :cond_18
    invoke-direct {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->s()I

    move-result v3

    if-ge v0, v3, :cond_19

    move v0, v1

    :goto_c
    iget-boolean v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h:Z

    if-eq v0, v3, :cond_1a

    move v0, v4

    goto :goto_a

    :cond_19
    move v0, v2

    goto :goto_c

    :cond_1a
    move v0, v1

    goto :goto_a

    :cond_1b
    move v0, v2

    goto :goto_b

    :cond_1c
    iget-object v0, v5, Laf;->h:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    iget-object v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Lub;

    invoke-virtual {v0}, Lub;->b()I

    goto :goto_9

    :cond_1d
    iget-boolean v0, v5, Laf;->g:Z

    if-eqz v0, :cond_1e

    iget-object v0, v5, Laf;->h:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    iget-object v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Lub;

    invoke-virtual {v0}, Lub;->c()I

    goto :goto_9

    :cond_1e
    iget-object v0, v5, Laf;->h:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    iget-object v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Lub;

    invoke-virtual {v0}, Lub;->b()I

    goto :goto_9

    :cond_1f
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i:I

    iput v0, v5, Laf;->f:I

    goto/16 :goto_9

    :cond_20
    add-int/lit8 v0, v3, -0x1

    move v3, v0

    goto/16 :goto_3

    :cond_21
    move v0, v2

    goto/16 :goto_4

    :cond_22
    invoke-virtual {p2}, Luv;->a()I

    move-result v6

    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->l()I

    move-result v7

    move v3, v2

    :goto_d
    if-ge v3, v7, :cond_24

    invoke-virtual {p0, v3}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->c(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(Landroid/view/View;)I

    move-result v0

    if-ltz v0, :cond_23

    if-lt v0, v6, :cond_4

    :cond_23
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_d

    :cond_24
    move v0, v2

    goto/16 :goto_4

    .line 602
    :cond_25
    invoke-direct {p0, v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->g(I)V

    .line 603
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->d:Ltj;

    invoke-direct {p0, p1, v0, p2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(Lur;Ltj;Luv;)I

    .line 605
    invoke-direct {p0, v4}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->g(I)V

    .line 606
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->d:Ltj;

    iget v3, v5, Laf;->f:I

    iget-object v6, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->d:Ltj;

    iget v6, v6, Ltj;->c:I

    add-int/2addr v3, v6

    iput v3, v0, Ltj;->b:I

    .line 607
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->d:Ltj;

    invoke-direct {p0, p1, v0, p2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(Lur;Ltj;Luv;)I

    goto/16 :goto_5

    .line 615
    :cond_26
    invoke-direct {p0, p1, p2, v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b(Lur;Luv;Z)V

    .line 616
    invoke-direct {p0, p1, p2, v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(Lur;Luv;Z)V

    goto/16 :goto_6
.end method

.method public final d(Luv;)I
    .locals 1
    .parameter

    .prologue
    .line 966
    invoke-direct {p0, p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h(Luv;)I

    move-result v0

    return v0
.end method

.method public final d(I)V
    .locals 0
    .parameter

    .prologue
    .line 1304
    invoke-super {p0, p1}, Luo;->d(I)V

    .line 1305
    return-void
.end method

.method public final d(II)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1336
    const/4 v0, 0x3

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b(III)V

    .line 1337
    return-void
.end method

.method public final d()Z
    .locals 1

    .prologue
    .line 1826
    const/4 v0, 0x1

    return v0
.end method

.method public final e(Luv;)I
    .locals 1
    .parameter

    .prologue
    .line 971
    invoke-direct {p0, p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i(Luv;)I

    move-result v0

    return v0
.end method

.method public final e(I)V
    .locals 0
    .parameter

    .prologue
    .line 1312
    invoke-super {p0, p1}, Luo;->e(I)V

    .line 1313
    return-void
.end method

.method public final e()Z
    .locals 1

    .prologue
    .line 1821
    const/4 v0, 0x0

    return v0
.end method

.method public final f(Luv;)I
    .locals 1
    .parameter

    .prologue
    .line 987
    invoke-direct {p0, p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i(Luv;)I

    move-result v0

    return v0
.end method

.method public final f(I)V
    .locals 0
    .parameter

    .prologue
    .line 281
    if-nez p1, :cond_0

    .line 282
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->l()I

    .line 284
    :cond_0
    return-void
.end method

.method public final h()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 1872
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->m:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->m:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    iget v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->a:I

    if-eqz v0, :cond_0

    .line 1873
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->m:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    const/4 v1, 0x0

    iput-object v1, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->d:[I

    iput v3, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->c:I

    iput v2, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->a:I

    iput v2, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->b:I

    .line 1875
    :cond_0
    iput v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i:I

    .line 1876
    const/high16 v0, -0x8000

    iput v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->j:I

    .line 1877
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->k()V

    .line 1878
    return-void
.end method
