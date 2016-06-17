.class public final Lbpr;
.super Lbpq;
.source "UPCEReader.java"


# static fields
.field private static final d:[I

.field private static final e:[[I


# instance fields
.field private final f:[I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/16 v3, 0xa

    .line 37
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lbpr;->d:[I

    .line 44
    const/4 v0, 0x2

    new-array v0, v0, [[I

    const/4 v1, 0x0

    new-array v2, v3, [I

    fill-array-data v2, :array_1

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-array v2, v3, [I

    fill-array-data v2, :array_2

    aput-object v2, v0, v1

    sput-object v0, Lbpr;->e:[[I

    return-void

    .line 37
    :array_0
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    .line 44
    :array_1
    .array-data 0x4
        0x38t 0x0t 0x0t 0x0t
        0x34t 0x0t 0x0t 0x0t
        0x32t 0x0t 0x0t 0x0t
        0x31t 0x0t 0x0t 0x0t
        0x2ct 0x0t 0x0t 0x0t
        0x26t 0x0t 0x0t 0x0t
        0x23t 0x0t 0x0t 0x0t
        0x2at 0x0t 0x0t 0x0t
        0x29t 0x0t 0x0t 0x0t
        0x25t 0x0t 0x0t 0x0t
    .end array-data

    :array_2
    .array-data 0x4
        0x7t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0xdt 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
        0x13t 0x0t 0x0t 0x0t
        0x19t 0x0t 0x0t 0x0t
        0x1ct 0x0t 0x0t 0x0t
        0x15t 0x0t 0x0t 0x0t
        0x16t 0x0t 0x0t 0x0t
        0x1at 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0}, Lbpq;-><init>()V

    .line 52
    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Lbpr;->f:[I

    .line 53
    return-void
.end method


# virtual methods
.method protected final a(Lbnz;[ILjava/lang/StringBuilder;)I
    .locals 11
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v10, 0xa

    const/4 v9, 0x1

    const/4 v2, 0x0

    .line 58
    iget-object v6, p0, Lbpr;->f:[I

    .line 59
    aput v2, v6, v2

    .line 60
    aput v2, v6, v9

    .line 61
    const/4 v0, 0x2

    aput v2, v6, v0

    .line 62
    const/4 v0, 0x3

    aput v2, v6, v0

    .line 63
    iget v7, p1, Lbnz;->b:I

    .line 64
    aget v4, p2, v9

    move v5, v2

    move v0, v2

    .line 68
    :goto_0
    const/4 v1, 0x6

    if-ge v5, v1, :cond_2

    if-ge v4, v7, :cond_2

    .line 69
    sget-object v1, Lbpr;->c:[[I

    invoke-static {p1, v6, v4, v1}, Lbpr;->a(Lbnz;[II[[I)I

    move-result v8

    .line 70
    rem-int/lit8 v1, v8, 0xa

    add-int/lit8 v1, v1, 0x30

    int-to-char v1, v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v1, v2

    move v3, v4

    .line 71
    :goto_1
    const/4 v4, 0x4

    if-ge v1, v4, :cond_0

    aget v4, v6, v1

    .line 72
    add-int/2addr v3, v4

    .line 71
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 74
    :cond_0
    if-lt v8, v10, :cond_1

    .line 75
    rsub-int/lit8 v1, v5, 0x5

    shl-int v1, v9, v1

    or-int/2addr v0, v1

    .line 68
    :cond_1
    add-int/lit8 v1, v5, 0x1

    move v5, v1

    move v4, v3

    goto :goto_0

    :cond_2
    move v3, v2

    .line 79
    :goto_2
    if-gt v3, v9, :cond_5

    move v1, v2

    :goto_3
    if-ge v1, v10, :cond_4

    sget-object v5, Lbpr;->e:[[I

    aget-object v5, v5, v3

    aget v5, v5, v1

    if-ne v0, v5, :cond_3

    add-int/lit8 v0, v3, 0x30

    int-to-char v0, v0

    invoke-virtual {p3, v2, v0}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v1, 0x30

    int-to-char v0, v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 81
    return v4

    .line 79
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_4
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_2

    :cond_5
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0
.end method

.method protected final a(Ljava/lang/String;)Z
    .locals 8
    .parameter

    .prologue
    const/4 v7, 0x5

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 91
    const/4 v0, 0x6

    new-array v0, v0, [C

    const/4 v1, 0x1

    const/4 v2, 0x7

    invoke-virtual {p1, v1, v2, v0, v3}, Ljava/lang/String;->getChars(II[CI)V

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0xc

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    aget-char v2, v0, v7

    packed-switch v2, :pswitch_data_0

    invoke-virtual {v1, v0, v3, v7}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    const-string v0, "0000"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_0
    const/4 v0, 0x7

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, v0}, Lbpq;->a(Ljava/lang/String;)Z

    move-result v0

    return v0

    :pswitch_0
    invoke-virtual {v1, v0, v3, v4}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, "0000"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0, v4, v5}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    goto :goto_0

    :pswitch_1
    invoke-virtual {v1, v0, v3, v5}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    const-string v2, "00000"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0, v5, v4}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    goto :goto_0

    :pswitch_2
    invoke-virtual {v1, v0, v3, v6}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    const-string v2, "00000"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-char v0, v0, v6

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected final a(Lbnz;I)[I
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 86
    const/4 v0, 0x1

    sget-object v1, Lbpr;->d:[I

    invoke-static {p1, p2, v0, v1}, Lbpr;->a(Lbnz;IZ[I)[I

    move-result-object v0

    return-object v0
.end method

.method final b()Lcom/google/zxing/BarcodeFormat;
    .locals 1

    .prologue
    .line 111
    sget-object v0, Lcom/google/zxing/BarcodeFormat;->UPC_E:Lcom/google/zxing/BarcodeFormat;

    return-object v0
.end method
