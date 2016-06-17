.class public final Ldcp;
.super Landroid/support/v7/widget/LinearLayoutManager;
.source "WrapContentLinearLayoutManager.java"


# instance fields
.field private final a:[I

.field private g:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(I)V

    .line 27
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Ldcp;->a:[I

    .line 30
    const/16 v0, 0x64

    iput v0, p0, Ldcp;->g:I

    .line 32
    return-void
.end method

.method private a(Lur;III[I)V
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 242
    invoke-virtual {p1, p2}, Lur;->b(I)Landroid/view/View;

    move-result-object v1

    .line 244
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    .line 246
    invoke-virtual {p0}, Ldcp;->o()I

    move-result v2

    invoke-virtual {p0}, Ldcp;->q()I

    move-result v3

    add-int/2addr v2, v3

    .line 247
    invoke-virtual {p0}, Ldcp;->p()I

    move-result v3

    invoke-virtual {p0}, Ldcp;->r()I

    move-result v4

    add-int/2addr v3, v4

    .line 249
    iget v4, v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->leftMargin:I

    iget v5, v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->rightMargin:I

    add-int/2addr v4, v5

    .line 250
    iget v5, v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->topMargin:I

    iget v6, v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->bottomMargin:I

    add-int/2addr v5, v6

    .line 252
    invoke-static {v1}, Ldcp;->g(Landroid/view/View;)I

    move-result v6

    invoke-static {v1}, Ldcp;->f(Landroid/view/View;)I

    move-result v7

    add-int/2addr v6, v7

    .line 253
    invoke-static {v1}, Ldcp;->d(Landroid/view/View;)I

    move-result v7

    invoke-static {v1}, Ldcp;->e(Landroid/view/View;)I

    move-result v8

    add-int/2addr v7, v8

    .line 255
    add-int/2addr v2, v4

    add-int/2addr v2, v6

    iget v4, v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->width:I

    invoke-virtual {p0}, Ldcp;->d()Z

    move-result v6

    invoke-static {p3, v2, v4, v6}, Ldcp;->a(IIIZ)I

    move-result v2

    .line 258
    add-int/2addr v3, v5

    add-int/2addr v3, v7

    iget v4, v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->height:I

    invoke-virtual {p0}, Ldcp;->e()Z

    move-result v5

    invoke-static {p4, v3, v4, v5}, Ldcp;->a(IIIZ)I

    move-result v3

    .line 262
    invoke-virtual {v1, v2, v3}, Landroid/view/View;->measure(II)V

    .line 264
    const/4 v2, 0x0

    invoke-static {v1}, Ldcp;->b(Landroid/view/View;)I

    move-result v3

    iget v4, v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->leftMargin:I

    add-int/2addr v3, v4

    iget v4, v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->rightMargin:I

    add-int/2addr v3, v4

    aput v3, p5, v2

    .line 265
    const/4 v2, 0x1

    invoke-static {v1}, Ldcp;->c(Landroid/view/View;)I

    move-result v3

    iget v4, v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->bottomMargin:I

    add-int/2addr v3, v4

    iget v0, v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->topMargin:I

    add-int/2addr v0, v3

    aput v0, p5, v2

    .line 267
    invoke-virtual {p1, v1}, Lur;->a(Landroid/view/View;)V

    .line 268
    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 218
    iget v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->b:I

    if-eq v0, p1, :cond_0

    .line 220
    iget-object v0, p0, Ldcp;->a:[I

    aput v2, v0, v2

    .line 221
    iget-object v0, p0, Ldcp;->a:[I

    const/4 v1, 0x1

    aput v2, v0, v1

    .line 224
    :cond_0
    invoke-super {p0, p1}, Landroid/support/v7/widget/LinearLayoutManager;->a(I)V

    .line 225
    return-void
.end method

.method public final a(Lur;Luv;II)V
    .locals 21
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 76
    invoke-static/range {p3 .. p3}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 77
    invoke-static/range {p4 .. p4}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 79
    invoke-static/range {p3 .. p3}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v16

    .line 80
    invoke-static/range {p4 .. p4}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v15

    .line 82
    const/high16 v3, 0x4000

    if-ne v1, v3, :cond_0

    const/4 v1, 0x1

    move/from16 v19, v1

    .line 83
    :goto_0
    const/high16 v1, 0x4000

    if-ne v2, v1, :cond_1

    const/4 v1, 0x1

    move v12, v1

    .line 85
    :goto_1
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 87
    if-eqz v19, :cond_2

    if-eqz v12, :cond_2

    .line 90
    invoke-super/range {p0 .. p4}, Landroid/support/v7/widget/LinearLayoutManager;->a(Lur;Luv;II)V

    .line 181
    :goto_2
    return-void

    .line 82
    :cond_0
    const/4 v1, 0x0

    move/from16 v19, v1

    goto :goto_0

    .line 83
    :cond_1
    const/4 v1, 0x0

    move v12, v1

    goto :goto_1

    .line 94
    :cond_2
    move-object/from16 v0, p0

    iget v1, v0, Landroid/support/v7/widget/LinearLayoutManager;->b:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_8

    const/4 v1, 0x1

    move v13, v1

    .line 96
    :goto_3
    move-object/from16 v0, p0

    iget-object v1, v0, Ldcp;->a:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    if-nez v1, :cond_3

    move-object/from16 v0, p0

    iget-object v1, v0, Ldcp;->a:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    if-eqz v1, :cond_9

    .line 98
    :cond_3
    :goto_4
    const/16 v18, 0x0

    .line 99
    const/16 v17, 0x0

    .line 108
    invoke-virtual/range {p1 .. p1}, Lur;->a()V

    .line 110
    invoke-virtual/range {p2 .. p2}, Luv;->a()I

    move-result v20

    .line 111
    move-object/from16 v0, p0

    iget-object v1, v0, Luo;->f:Landroid/support/v7/widget/RecyclerView;

    if-eqz v1, :cond_b

    move-object/from16 v0, p0

    iget-object v1, v0, Luo;->f:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Luh;

    move-result-object v1

    :goto_5
    if-eqz v1, :cond_c

    invoke-virtual {v1}, Luh;->a()I

    move-result v1

    move v14, v1

    .line 117
    :goto_6
    const/4 v3, 0x0

    :goto_7
    if-ge v3, v14, :cond_17

    .line 118
    if-eqz v13, :cond_d

    .line 119
    move/from16 v0, v20

    if-ge v3, v0, :cond_4

    .line 124
    move-object/from16 v0, p0

    iget-object v6, v0, Ldcp;->a:[I

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v4, p3

    invoke-direct/range {v1 .. v6}, Ldcp;->a(Lur;III[I)V

    .line 126
    :cond_4
    move-object/from16 v0, p0

    iget-object v1, v0, Ldcp;->a:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    add-int v1, v1, v17

    .line 130
    if-nez v3, :cond_16

    .line 131
    move-object/from16 v0, p0

    iget-object v2, v0, Ldcp;->a:[I

    const/4 v4, 0x0

    aget v2, v2, v4

    .line 133
    :goto_8
    if-lt v1, v15, :cond_f

    move v3, v1

    .line 157
    :goto_9
    if-eqz v13, :cond_5

    if-lt v3, v15, :cond_6

    :cond_5
    if-nez v13, :cond_10

    move/from16 v0, v16

    if-lt v2, v0, :cond_6

    if-nez v15, :cond_10

    :cond_6
    const/4 v1, 0x1

    .line 159
    :goto_a
    if-eqz v1, :cond_13

    .line 162
    if-nez v19, :cond_7

    move/from16 v0, v16

    if-le v2, v0, :cond_11

    if-lez v16, :cond_11

    :cond_7
    move/from16 v2, v16

    .line 168
    :goto_b
    if-eqz v12, :cond_12

    move v1, v15

    .line 174
    :goto_c
    move-object/from16 v0, p0

    iget-object v3, v0, Luo;->f:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v3, v2, v1}, Landroid/support/v7/widget/RecyclerView;->c(Landroid/support/v7/widget/RecyclerView;II)V

    goto/16 :goto_2

    .line 94
    :cond_8
    const/4 v1, 0x0

    move v13, v1

    goto/16 :goto_3

    .line 96
    :cond_9
    if-eqz v13, :cond_a

    move-object/from16 v0, p0

    iget-object v1, v0, Ldcp;->a:[I

    const/4 v2, 0x0

    aput v16, v1, v2

    move-object/from16 v0, p0

    iget-object v1, v0, Ldcp;->a:[I

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget v3, v0, Ldcp;->g:I

    aput v3, v1, v2

    goto/16 :goto_4

    :cond_a
    move-object/from16 v0, p0

    iget-object v1, v0, Ldcp;->a:[I

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget v3, v0, Ldcp;->g:I

    aput v3, v1, v2

    move-object/from16 v0, p0

    iget-object v1, v0, Ldcp;->a:[I

    const/4 v2, 0x1

    aput v15, v1, v2

    goto/16 :goto_4

    .line 111
    :cond_b
    const/4 v1, 0x0

    goto/16 :goto_5

    :cond_c
    const/4 v1, 0x0

    move v14, v1

    goto/16 :goto_6

    .line 137
    :cond_d
    move/from16 v0, v20

    if-ge v3, v0, :cond_e

    .line 142
    move-object/from16 v0, p0

    iget-object v11, v0, Ldcp;->a:[I

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move v8, v3

    move v9, v5

    move/from16 v10, p4

    invoke-direct/range {v6 .. v11}, Ldcp;->a(Lur;III[I)V

    .line 144
    :cond_e
    move-object/from16 v0, p0

    iget-object v1, v0, Ldcp;->a:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    add-int v2, v18, v1

    .line 148
    if-nez v3, :cond_15

    .line 149
    move-object/from16 v0, p0

    iget-object v1, v0, Ldcp;->a:[I

    const/4 v4, 0x1

    aget v1, v1, v4

    .line 151
    :goto_d
    move/from16 v0, v16

    if-ge v2, v0, :cond_14

    .line 152
    :cond_f
    add-int/lit8 v3, v3, 0x1

    move/from16 v17, v1

    move/from16 v18, v2

    goto/16 :goto_7

    .line 157
    :cond_10
    const/4 v1, 0x0

    goto :goto_a

    .line 165
    :cond_11
    invoke-virtual/range {p0 .. p0}, Ldcp;->o()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Ldcp;->q()I

    move-result v4

    add-int/2addr v1, v4

    add-int/2addr v1, v2

    move v2, v1

    goto :goto_b

    .line 171
    :cond_12
    invoke-virtual/range {p0 .. p0}, Ldcp;->p()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Ldcp;->r()I

    move-result v4

    add-int/2addr v1, v4

    add-int/2addr v1, v3

    goto/16 :goto_c

    .line 178
    :cond_13
    invoke-super/range {p0 .. p4}, Landroid/support/v7/widget/LinearLayoutManager;->a(Lur;Luv;II)V

    goto/16 :goto_2

    :cond_14
    move v3, v1

    goto/16 :goto_9

    :cond_15
    move/from16 v1, v17

    goto :goto_d

    :cond_16
    move/from16 v2, v18

    goto/16 :goto_8

    :cond_17
    move/from16 v3, v17

    move/from16 v2, v18

    goto/16 :goto_9
.end method
