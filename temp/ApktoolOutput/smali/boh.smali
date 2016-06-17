.class public final Lboh;
.super Lbof;
.source "HybridBinarizer.java"


# instance fields
.field private b:Lboa;


# direct methods
.method public constructor <init>(Lbno;)V
    .locals 0
    .parameter

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lbof;-><init>(Lbno;)V

    .line 54
    return-void
.end method

.method private static a(II)I
    .locals 1
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x2

    .line 134
    if-ge p0, v0, :cond_1

    move p1, v0

    :cond_0
    :goto_0
    return p1

    :cond_1
    if-gt p0, p1, :cond_0

    move p1, p0

    goto :goto_0
.end method


# virtual methods
.method public final a()Lboa;
    .locals 20

    .prologue
    .line 63
    move-object/from16 v0, p0

    iget-object v1, v0, Lboh;->b:Lboa;

    if-eqz v1, :cond_0

    .line 64
    move-object/from16 v0, p0

    iget-object v1, v0, Lboh;->b:Lboa;

    .line 88
    :goto_0
    return-object v1

    .line 66
    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lbnm;->a:Lbno;

    .line 67
    iget v15, v1, Lbno;->a:I

    .line 68
    iget v0, v1, Lbno;->b:I

    move/from16 v16, v0

    .line 69
    const/16 v2, 0x28

    if-lt v15, v2, :cond_f

    const/16 v2, 0x28

    move/from16 v0, v16

    if-lt v0, v2, :cond_f

    .line 70
    invoke-virtual {v1}, Lbno;->a()[B

    move-result-object v17

    .line 71
    shr-int/lit8 v1, v15, 0x3

    .line 72
    and-int/lit8 v2, v15, 0x7

    if-eqz v2, :cond_18

    .line 73
    add-int/lit8 v1, v1, 0x1

    move v14, v1

    .line 75
    :goto_1
    shr-int/lit8 v1, v16, 0x3

    .line 76
    and-int/lit8 v2, v16, 0x7

    if-eqz v2, :cond_17

    .line 77
    add-int/lit8 v1, v1, 0x1

    move v2, v1

    .line 79
    :goto_2
    filled-new-array {v2, v14}, [I

    move-result-object v1

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[I

    const/4 v3, 0x0

    move v13, v3

    :goto_3
    if-ge v13, v2, :cond_8

    shl-int/lit8 v4, v13, 0x3

    add-int/lit8 v3, v16, -0x8

    if-le v4, v3, :cond_16

    :goto_4
    const/4 v4, 0x0

    move v12, v4

    :goto_5
    if-ge v12, v14, :cond_7

    shl-int/lit8 v5, v12, 0x3

    add-int/lit8 v4, v15, -0x8

    if-le v5, v4, :cond_15

    :goto_6
    const/4 v8, 0x0

    const/16 v9, 0xff

    const/4 v5, 0x0

    const/4 v7, 0x0

    mul-int v6, v3, v15

    add-int/2addr v6, v4

    :goto_7
    const/16 v4, 0x8

    if-ge v7, v4, :cond_5

    const/4 v4, 0x0

    move v10, v4

    :goto_8
    const/16 v4, 0x8

    if-ge v10, v4, :cond_1

    add-int v4, v6, v10

    aget-byte v4, v17, v4

    and-int/lit16 v4, v4, 0xff

    add-int v11, v8, v4

    if-ge v4, v9, :cond_14

    move v8, v4

    :goto_9
    if-le v4, v5, :cond_13

    :goto_a
    add-int/lit8 v5, v10, 0x1

    move v10, v5

    move v9, v8

    move v5, v4

    move v8, v11

    goto :goto_8

    :cond_1
    sub-int v4, v5, v9

    const/16 v10, 0x18

    if-le v4, v10, :cond_3

    add-int/lit8 v7, v7, 0x1

    add-int v4, v6, v15

    move v6, v7

    move v7, v8

    :goto_b
    const/16 v8, 0x8

    if-ge v6, v8, :cond_4

    const/4 v8, 0x0

    move/from16 v19, v8

    move v8, v7

    move/from16 v7, v19

    :goto_c
    const/16 v10, 0x8

    if-ge v7, v10, :cond_2

    add-int v10, v4, v7

    aget-byte v10, v17, v10

    and-int/lit16 v10, v10, 0xff

    add-int/2addr v8, v10

    add-int/lit8 v7, v7, 0x1

    goto :goto_c

    :cond_2
    add-int/lit8 v6, v6, 0x1

    add-int/2addr v4, v15

    move v7, v8

    goto :goto_b

    :cond_3
    move v4, v6

    move v6, v7

    move v7, v8

    :cond_4
    add-int/lit8 v8, v6, 0x1

    add-int v6, v4, v15

    move/from16 v19, v8

    move v8, v7

    move/from16 v7, v19

    goto :goto_7

    :cond_5
    shr-int/lit8 v4, v8, 0x6

    sub-int/2addr v5, v9

    const/16 v6, 0x18

    if-gt v5, v6, :cond_6

    div-int/lit8 v5, v9, 0x2

    if-lez v13, :cond_12

    if-lez v12, :cond_12

    add-int/lit8 v4, v13, -0x1

    aget-object v4, v1, v4

    aget v4, v4, v12

    aget-object v6, v1, v13

    add-int/lit8 v7, v12, -0x1

    aget v6, v6, v7

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v4, v6

    add-int/lit8 v6, v13, -0x1

    aget-object v6, v1, v6

    add-int/lit8 v7, v12, -0x1

    aget v6, v6, v7

    add-int/2addr v4, v6

    div-int/lit8 v4, v4, 0x4

    if-ge v9, v4, :cond_12

    :cond_6
    :goto_d
    aget-object v5, v1, v13

    aput v4, v5, v12

    add-int/lit8 v4, v12, 0x1

    move v12, v4

    goto/16 :goto_5

    :cond_7
    add-int/lit8 v3, v13, 0x1

    move v13, v3

    goto/16 :goto_3

    .line 81
    :cond_8
    new-instance v10, Lboa;

    move/from16 v0, v16

    invoke-direct {v10, v15, v0}, Lboa;-><init>(II)V

    .line 82
    const/4 v3, 0x0

    move v6, v3

    :goto_e
    if-ge v6, v2, :cond_e

    shl-int/lit8 v4, v6, 0x3

    add-int/lit8 v3, v16, -0x8

    if-le v4, v3, :cond_10

    move v5, v3

    :goto_f
    const/4 v3, 0x0

    move v8, v3

    :goto_10
    if-ge v8, v14, :cond_d

    shl-int/lit8 v4, v8, 0x3

    add-int/lit8 v3, v15, -0x8

    if-le v4, v3, :cond_11

    :goto_11
    add-int/lit8 v4, v14, -0x3

    invoke-static {v8, v4}, Lboh;->a(II)I

    move-result v9

    add-int/lit8 v4, v2, -0x3

    invoke-static {v6, v4}, Lboh;->a(II)I

    move-result v11

    const/4 v7, 0x0

    const/4 v4, -0x2

    :goto_12
    const/4 v12, 0x2

    if-gt v4, v12, :cond_9

    add-int v12, v11, v4

    aget-object v12, v1, v12

    add-int/lit8 v13, v9, -0x2

    aget v13, v12, v13

    add-int/lit8 v18, v9, -0x1

    aget v18, v12, v18

    add-int v13, v13, v18

    aget v18, v12, v9

    add-int v13, v13, v18

    add-int/lit8 v18, v9, 0x1

    aget v18, v12, v18

    add-int v13, v13, v18

    add-int/lit8 v18, v9, 0x2

    aget v12, v12, v18

    add-int/2addr v12, v13

    add-int/2addr v7, v12

    add-int/lit8 v4, v4, 0x1

    goto :goto_12

    :cond_9
    div-int/lit8 v11, v7, 0x19

    const/4 v7, 0x0

    mul-int v4, v5, v15

    add-int/2addr v4, v3

    move v9, v7

    move v7, v4

    :goto_13
    const/16 v4, 0x8

    if-ge v9, v4, :cond_c

    const/4 v4, 0x0

    :goto_14
    const/16 v12, 0x8

    if-ge v4, v12, :cond_b

    add-int v12, v7, v4

    aget-byte v12, v17, v12

    and-int/lit16 v12, v12, 0xff

    if-gt v12, v11, :cond_a

    add-int v12, v3, v4

    add-int v13, v5, v9

    invoke-virtual {v10, v12, v13}, Lboa;->b(II)V

    :cond_a
    add-int/lit8 v4, v4, 0x1

    goto :goto_14

    :cond_b
    add-int/lit8 v9, v9, 0x1

    add-int v4, v7, v15

    move v7, v4

    goto :goto_13

    :cond_c
    add-int/lit8 v3, v8, 0x1

    move v8, v3

    goto :goto_10

    :cond_d
    add-int/lit8 v3, v6, 0x1

    move v6, v3

    goto :goto_e

    .line 83
    :cond_e
    move-object/from16 v0, p0

    iput-object v10, v0, Lboh;->b:Lboa;

    .line 88
    :goto_15
    move-object/from16 v0, p0

    iget-object v1, v0, Lboh;->b:Lboa;

    goto/16 :goto_0

    .line 86
    :cond_f
    invoke-super/range {p0 .. p0}, Lbof;->a()Lboa;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lboh;->b:Lboa;

    goto :goto_15

    :cond_10
    move v5, v4

    goto/16 :goto_f

    :cond_11
    move v3, v4

    goto :goto_11

    :cond_12
    move v4, v5

    goto/16 :goto_d

    :cond_13
    move v4, v5

    goto/16 :goto_a

    :cond_14
    move v8, v9

    goto/16 :goto_9

    :cond_15
    move v4, v5

    goto/16 :goto_6

    :cond_16
    move v3, v4

    goto/16 :goto_4

    :cond_17
    move v2, v1

    goto/16 :goto_2

    :cond_18
    move v14, v1

    goto/16 :goto_1
.end method
