.class public final Lbrf;
.super Ljava/lang/Object;
.source "ErrorCorrection.java"


# instance fields
.field public final a:Lbrg;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    sget-object v0, Lbrg;->a:Lbrg;

    iput-object v0, p0, Lbrf;->a:Lbrg;

    .line 36
    return-void
.end method


# virtual methods
.method public final a(Lbrh;)[I
    .locals 6
    .parameter

    .prologue
    .line 150
    iget-object v0, p1, Lbrh;->b:[I

    array-length v0, v0

    add-int/lit8 v2, v0, -0x1

    .line 151
    new-array v3, v2, [I

    .line 152
    const/4 v1, 0x0

    .line 153
    const/4 v0, 0x1

    move v5, v0

    move v0, v1

    move v1, v5

    :goto_0
    const/16 v4, 0x3a1

    if-ge v1, v4, :cond_1

    if-ge v0, v2, :cond_1

    .line 154
    invoke-virtual {p1, v1}, Lbrh;->b(I)I

    move-result v4

    if-nez v4, :cond_0

    .line 155
    iget-object v4, p0, Lbrf;->a:Lbrg;

    invoke-virtual {v4, v1}, Lbrg;->a(I)I

    move-result v4

    aput v4, v3, v0

    .line 156
    add-int/lit8 v0, v0, 0x1

    .line 153
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 159
    :cond_1
    if-eq v0, v2, :cond_2

    .line 160
    invoke-static {}, Lcom/google/zxing/ChecksumException;->getChecksumInstance()Lcom/google/zxing/ChecksumException;

    move-result-object v0

    throw v0

    .line 162
    :cond_2
    return-object v3
.end method

.method public final a(Lbrh;Lbrh;[I)[I
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 168
    iget-object v0, p2, Lbrh;->b:[I

    array-length v0, v0

    add-int/lit8 v2, v0, -0x1

    .line 169
    new-array v3, v2, [I

    .line 170
    const/4 v0, 0x1

    :goto_0
    if-gt v0, v2, :cond_0

    .line 171
    sub-int v4, v2, v0

    iget-object v5, p0, Lbrf;->a:Lbrg;

    invoke-virtual {p2, v0}, Lbrh;->a(I)I

    move-result v6

    invoke-virtual {v5, v0, v6}, Lbrg;->c(II)I

    move-result v5

    aput v5, v3, v4

    .line 170
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 174
    :cond_0
    new-instance v2, Lbrh;

    iget-object v0, p0, Lbrf;->a:Lbrg;

    invoke-direct {v2, v0, v3}, Lbrh;-><init>(Lbrg;[I)V

    .line 177
    array-length v3, p3

    .line 178
    new-array v4, v3, [I

    move v0, v1

    .line 179
    :goto_1
    if-ge v0, v3, :cond_1

    .line 180
    iget-object v5, p0, Lbrf;->a:Lbrg;

    aget v6, p3, v0

    invoke-virtual {v5, v6}, Lbrg;->a(I)I

    move-result v5

    .line 181
    invoke-virtual {p1, v5}, Lbrh;->b(I)I

    move-result v6

    invoke-static {v1, v6}, Lbrg;->b(II)I

    move-result v6

    .line 182
    iget-object v7, p0, Lbrf;->a:Lbrg;

    invoke-virtual {v2, v5}, Lbrh;->b(I)I

    move-result v5

    invoke-virtual {v7, v5}, Lbrg;->a(I)I

    move-result v5

    .line 183
    iget-object v7, p0, Lbrf;->a:Lbrg;

    invoke-virtual {v7, v6, v5}, Lbrg;->c(II)I

    move-result v5

    aput v5, v4, v0

    .line 179
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 185
    :cond_1
    return-object v4
.end method
