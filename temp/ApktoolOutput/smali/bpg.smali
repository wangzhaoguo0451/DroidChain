.class public final Lbpg;
.super Lbpq;
.source "EAN8Reader.java"


# instance fields
.field private final d:[I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Lbpq;-><init>()V

    .line 33
    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Lbpg;->d:[I

    .line 34
    return-void
.end method


# virtual methods
.method protected final a(Lbnz;[ILjava/lang/StringBuilder;)I
    .locals 9
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x1

    const/4 v1, 0x0

    .line 40
    iget-object v5, p0, Lbpg;->d:[I

    .line 41
    aput v1, v5, v1

    .line 42
    aput v1, v5, v7

    .line 43
    const/4 v0, 0x2

    aput v1, v5, v0

    .line 44
    const/4 v0, 0x3

    aput v1, v5, v0

    .line 45
    iget v6, p1, Lbnz;->b:I

    .line 46
    aget v0, p2, v7

    move v3, v1

    .line 48
    :goto_0
    if-ge v3, v8, :cond_1

    if-ge v0, v6, :cond_1

    .line 49
    sget-object v2, Lbpg;->b:[[I

    invoke-static {p1, v5, v0, v2}, Lbpg;->a(Lbnz;[II[[I)I

    move-result v2

    .line 50
    add-int/lit8 v2, v2, 0x30

    int-to-char v2, v2

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v2, v0

    move v0, v1

    .line 51
    :goto_1
    if-ge v0, v8, :cond_0

    aget v4, v5, v0

    .line 52
    add-int/2addr v2, v4

    .line 51
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 48
    :cond_0
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    move v0, v2

    goto :goto_0

    .line 56
    :cond_1
    sget-object v2, Lbpg;->a:[I

    invoke-static {p1, v0, v7, v2}, Lbpg;->a(Lbnz;IZ[I)[I

    move-result-object v0

    .line 57
    aget v0, v0, v7

    move v2, v0

    move v0, v1

    .line 59
    :goto_2
    if-ge v0, v8, :cond_3

    if-ge v2, v6, :cond_3

    .line 60
    sget-object v3, Lbpg;->b:[[I

    invoke-static {p1, v5, v2, v3}, Lbpg;->a(Lbnz;[II[[I)I

    move-result v3

    .line 61
    add-int/lit8 v3, v3, 0x30

    int-to-char v3, v3

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v3, v1

    .line 62
    :goto_3
    if-ge v3, v8, :cond_2

    aget v4, v5, v3

    .line 63
    add-int/2addr v4, v2

    .line 62
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move v2, v4

    goto :goto_3

    .line 59
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 67
    :cond_3
    return v2
.end method

.method final b()Lcom/google/zxing/BarcodeFormat;
    .locals 1

    .prologue
    .line 72
    sget-object v0, Lcom/google/zxing/BarcodeFormat;->EAN_8:Lcom/google/zxing/BarcodeFormat;

    return-object v0
.end method
