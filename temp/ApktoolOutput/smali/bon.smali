.class public final Lbon;
.super Ljava/lang/Object;
.source "ReedSolomonDecoder.java"


# instance fields
.field private final a:Lbol;


# direct methods
.method public constructor <init>(Lbol;)V
    .locals 0
    .parameter

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lbon;->a:Lbol;

    .line 47
    return-void
.end method

.method private a(Lbom;)[I
    .locals 5
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 145
    iget-object v2, p1, Lbom;->b:[I

    array-length v2, v2

    add-int/lit8 v3, v2, -0x1

    .line 146
    if-ne v3, v0, :cond_0

    .line 147
    new-array v2, v0, [I

    invoke-virtual {p1, v0}, Lbom;->a(I)I

    move-result v0

    aput v0, v2, v1

    move-object v0, v2

    .line 160
    :goto_0
    return-object v0

    .line 149
    :cond_0
    new-array v2, v3, [I

    .line 151
    :goto_1
    iget-object v4, p0, Lbon;->a:Lbol;

    iget v4, v4, Lbol;->l:I

    if-ge v0, v4, :cond_2

    if-ge v1, v3, :cond_2

    .line 152
    invoke-virtual {p1, v0}, Lbom;->b(I)I

    move-result v4

    if-nez v4, :cond_1

    .line 153
    iget-object v4, p0, Lbon;->a:Lbol;

    invoke-virtual {v4, v0}, Lbol;->b(I)I

    move-result v4

    aput v4, v2, v1

    .line 154
    add-int/lit8 v1, v1, 0x1

    .line 151
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 157
    :cond_2
    if-eq v1, v3, :cond_3

    .line 158
    new-instance v0, Lcom/google/zxing/common/reedsolomon/ReedSolomonException;

    const-string v1, "Error locator degree does not match number of roots"

    invoke-direct {v0, v1}, Lcom/google/zxing/common/reedsolomon/ReedSolomonException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    move-object v0, v2

    .line 160
    goto :goto_0
.end method

.method private a(Lbom;[I)[I
    .locals 9
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 165
    array-length v5, p2

    .line 166
    new-array v6, v5, [I

    move v4, v3

    .line 167
    :goto_0
    if-ge v4, v5, :cond_3

    .line 168
    iget-object v0, p0, Lbon;->a:Lbol;

    aget v1, p2, v4

    invoke-virtual {v0, v1}, Lbol;->b(I)I

    move-result v7

    .line 169
    const/4 v1, 0x1

    move v2, v3

    .line 170
    :goto_1
    if-ge v2, v5, :cond_1

    .line 171
    if-eq v4, v2, :cond_4

    .line 176
    iget-object v0, p0, Lbon;->a:Lbol;

    aget v8, p2, v2

    invoke-virtual {v0, v8, v7}, Lbol;->c(II)I

    move-result v0

    .line 177
    and-int/lit8 v8, v0, 0x1

    if-nez v8, :cond_0

    or-int/lit8 v0, v0, 0x1

    .line 178
    :goto_2
    iget-object v8, p0, Lbon;->a:Lbol;

    invoke-virtual {v8, v1, v0}, Lbol;->c(II)I

    move-result v0

    .line 170
    :goto_3
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v0

    goto :goto_1

    .line 177
    :cond_0
    and-int/lit8 v0, v0, -0x2

    goto :goto_2

    .line 181
    :cond_1
    iget-object v0, p0, Lbon;->a:Lbol;

    invoke-virtual {p1, v7}, Lbom;->b(I)I

    move-result v2

    iget-object v8, p0, Lbon;->a:Lbol;

    invoke-virtual {v8, v1}, Lbol;->b(I)I

    move-result v1

    invoke-virtual {v0, v2, v1}, Lbol;->c(II)I

    move-result v0

    aput v0, v6, v4

    .line 183
    iget-object v0, p0, Lbon;->a:Lbol;

    iget v0, v0, Lbol;->m:I

    if-eqz v0, :cond_2

    .line 184
    iget-object v0, p0, Lbon;->a:Lbol;

    aget v1, v6, v4

    invoke-virtual {v0, v1, v7}, Lbol;->c(II)I

    move-result v0

    aput v0, v6, v4

    .line 167
    :cond_2
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_0

    .line 187
    :cond_3
    return-object v6

    :cond_4
    move v0, v1

    goto :goto_3
.end method


# virtual methods
.method public final a([II)V
    .locals 13
    .parameter
    .parameter

    .prologue
    .line 59
    new-instance v2, Lbom;

    iget-object v0, p0, Lbon;->a:Lbol;

    invoke-direct {v2, v0, p1}, Lbom;-><init>(Lbol;[I)V

    .line 60
    new-array v3, p2, [I

    .line 61
    const/4 v1, 0x1

    .line 62
    const/4 v0, 0x0

    move v12, v0

    move v0, v1

    move v1, v12

    :goto_0
    if-ge v1, p2, :cond_1

    .line 63
    iget-object v4, p0, Lbon;->a:Lbol;

    iget-object v5, p0, Lbon;->a:Lbol;

    iget v5, v5, Lbol;->m:I

    add-int/2addr v5, v1

    iget-object v4, v4, Lbol;->i:[I

    aget v4, v4, v5

    invoke-virtual {v2, v4}, Lbom;->b(I)I

    move-result v4

    .line 64
    array-length v5, v3

    add-int/lit8 v5, v5, -0x1

    sub-int/2addr v5, v1

    aput v4, v3, v5

    .line 65
    if-eqz v4, :cond_0

    .line 66
    const/4 v0, 0x0

    .line 62
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 69
    :cond_1
    if-eqz v0, :cond_3

    .line 86
    :cond_2
    return-void

    .line 72
    :cond_3
    new-instance v0, Lbom;

    iget-object v1, p0, Lbon;->a:Lbol;

    invoke-direct {v0, v1, v3}, Lbom;-><init>(Lbol;[I)V

    .line 73
    iget-object v1, p0, Lbon;->a:Lbol;

    const/4 v2, 0x1

    invoke-virtual {v1, p2, v2}, Lbol;->a(II)Lbom;

    move-result-object v1

    iget-object v2, v1, Lbom;->b:[I

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    iget-object v3, v0, Lbom;->b:[I

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_d

    :goto_1
    iget-object v2, p0, Lbon;->a:Lbol;

    iget-object v3, v2, Lbol;->j:Lbom;

    iget-object v2, p0, Lbon;->a:Lbol;

    iget-object v2, v2, Lbol;->k:Lbom;

    move-object v4, v3

    move-object v5, v1

    move-object v1, v0

    move-object v3, v2

    :goto_2
    iget-object v0, v5, Lbom;->b:[I

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    div-int/lit8 v2, p2, 0x2

    if-lt v0, v2, :cond_a

    invoke-virtual {v5}, Lbom;->a()Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Lcom/google/zxing/common/reedsolomon/ReedSolomonException;

    const-string v1, "r_{i-1} was zero"

    invoke-direct {v0, v1}, Lcom/google/zxing/common/reedsolomon/ReedSolomonException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    iget-object v0, p0, Lbon;->a:Lbol;

    iget-object v0, v0, Lbol;->j:Lbom;

    iget-object v2, v5, Lbom;->b:[I

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v5, v2}, Lbom;->a(I)I

    move-result v2

    iget-object v6, p0, Lbon;->a:Lbol;

    invoke-virtual {v6, v2}, Lbol;->b(I)I

    move-result v6

    :goto_3
    iget-object v2, v1, Lbom;->b:[I

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    iget-object v7, v5, Lbom;->b:[I

    array-length v7, v7

    add-int/lit8 v7, v7, -0x1

    if-lt v2, v7, :cond_8

    invoke-virtual {v1}, Lbom;->a()Z

    move-result v2

    if-nez v2, :cond_8

    iget-object v2, v1, Lbom;->b:[I

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    iget-object v7, v5, Lbom;->b:[I

    array-length v7, v7

    add-int/lit8 v7, v7, -0x1

    sub-int/2addr v2, v7

    iget-object v7, p0, Lbon;->a:Lbol;

    iget-object v8, v1, Lbom;->b:[I

    array-length v8, v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v1, v8}, Lbom;->a(I)I

    move-result v8

    invoke-virtual {v7, v8, v6}, Lbol;->c(II)I

    move-result v7

    iget-object v8, p0, Lbon;->a:Lbol;

    invoke-virtual {v8, v2, v7}, Lbol;->a(II)Lbom;

    move-result-object v8

    invoke-virtual {v0, v8}, Lbom;->a(Lbom;)Lbom;

    move-result-object v0

    if-gez v2, :cond_5

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_5
    if-nez v7, :cond_6

    iget-object v2, v5, Lbom;->a:Lbol;

    iget-object v2, v2, Lbol;->j:Lbom;

    :goto_4
    invoke-virtual {v1, v2}, Lbom;->a(Lbom;)Lbom;

    move-result-object v1

    goto :goto_3

    :cond_6
    iget-object v8, v5, Lbom;->b:[I

    array-length v8, v8

    add-int/2addr v2, v8

    new-array v9, v2, [I

    const/4 v2, 0x0

    :goto_5
    if-ge v2, v8, :cond_7

    iget-object v10, v5, Lbom;->a:Lbol;

    iget-object v11, v5, Lbom;->b:[I

    aget v11, v11, v2

    invoke-virtual {v10, v11, v7}, Lbol;->c(II)I

    move-result v10

    aput v10, v9, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_7
    new-instance v2, Lbom;

    iget-object v7, v5, Lbom;->a:Lbol;

    invoke-direct {v2, v7, v9}, Lbom;-><init>(Lbol;[I)V

    goto :goto_4

    :cond_8
    invoke-virtual {v0, v3}, Lbom;->b(Lbom;)Lbom;

    move-result-object v0

    invoke-virtual {v0, v4}, Lbom;->a(Lbom;)Lbom;

    move-result-object v0

    iget-object v2, v1, Lbom;->b:[I

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    iget-object v4, v5, Lbom;->b:[I

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    if-lt v2, v4, :cond_9

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Division algorithm failed to reduce polynomial?"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    move-object v4, v3

    move-object v3, v0

    move-object v12, v5

    move-object v5, v1

    move-object v1, v12

    goto/16 :goto_2

    :cond_a
    const/4 v0, 0x0

    invoke-virtual {v3, v0}, Lbom;->a(I)I

    move-result v0

    if-nez v0, :cond_b

    new-instance v0, Lcom/google/zxing/common/reedsolomon/ReedSolomonException;

    const-string v1, "sigmaTilde(0) was zero"

    invoke-direct {v0, v1}, Lcom/google/zxing/common/reedsolomon/ReedSolomonException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    iget-object v1, p0, Lbon;->a:Lbol;

    invoke-virtual {v1, v0}, Lbol;->b(I)I

    move-result v0

    invoke-virtual {v3, v0}, Lbom;->c(I)Lbom;

    move-result-object v1

    invoke-virtual {v5, v0}, Lbom;->c(I)Lbom;

    move-result-object v0

    const/4 v2, 0x2

    new-array v2, v2, [Lbom;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const/4 v1, 0x1

    aput-object v0, v2, v1

    .line 75
    const/4 v0, 0x0

    aget-object v0, v2, v0

    .line 76
    const/4 v1, 0x1

    aget-object v1, v2, v1

    .line 77
    invoke-direct {p0, v0}, Lbon;->a(Lbom;)[I

    move-result-object v2

    .line 78
    invoke-direct {p0, v1, v2}, Lbon;->a(Lbom;[I)[I

    move-result-object v1

    .line 79
    const/4 v0, 0x0

    :goto_6
    array-length v3, v2

    if-ge v0, v3, :cond_2

    .line 80
    array-length v3, p1

    add-int/lit8 v3, v3, -0x1

    iget-object v4, p0, Lbon;->a:Lbol;

    aget v5, v2, v0

    invoke-virtual {v4, v5}, Lbol;->a(I)I

    move-result v4

    sub-int/2addr v3, v4

    .line 81
    if-gez v3, :cond_c

    .line 82
    new-instance v0, Lcom/google/zxing/common/reedsolomon/ReedSolomonException;

    const-string v1, "Bad error location"

    invoke-direct {v0, v1}, Lcom/google/zxing/common/reedsolomon/ReedSolomonException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 84
    :cond_c
    aget v4, p1, v3

    aget v5, v1, v0

    invoke-static {v4, v5}, Lbol;->b(II)I

    move-result v4

    aput v4, p1, v3

    .line 79
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_d
    move-object v12, v1

    move-object v1, v0

    move-object v0, v12

    goto/16 :goto_1
.end method
