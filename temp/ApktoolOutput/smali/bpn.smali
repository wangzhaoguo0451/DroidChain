.class final Lbpn;
.super Ljava/lang/Object;
.source "UPCEANExtension2Support.java"


# instance fields
.field private final a:[I

.field private final b:Ljava/lang/StringBuilder;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Lbpn;->a:[I

    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lbpn;->b:Ljava/lang/StringBuilder;

    return-void
.end method


# virtual methods
.method final a(ILbnz;[I)Lbnr;
    .locals 11
    .parameter
    .parameter
    .parameter

    .prologue
    .line 39
    iget-object v5, p0, Lbpn;->b:Ljava/lang/StringBuilder;

    .line 40
    const/4 v0, 0x0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 41
    iget-object v6, p0, Lbpn;->a:[I

    const/4 v0, 0x0

    const/4 v1, 0x0

    aput v1, v6, v0

    const/4 v0, 0x1

    const/4 v1, 0x0

    aput v1, v6, v0

    const/4 v0, 0x2

    const/4 v1, 0x0

    aput v1, v6, v0

    const/4 v0, 0x3

    const/4 v1, 0x0

    aput v1, v6, v0

    iget v7, p2, Lbnz;->b:I

    const/4 v0, 0x1

    aget v2, p3, v0

    const/4 v1, 0x0

    const/4 v0, 0x0

    move v4, v0

    :goto_0
    const/4 v0, 0x2

    if-ge v4, v0, :cond_3

    if-ge v2, v7, :cond_3

    sget-object v0, Lbpq;->c:[[I

    invoke-static {p2, v6, v2, v0}, Lbpq;->a(Lbnz;[II[[I)I

    move-result v8

    rem-int/lit8 v0, v8, 0xa

    add-int/lit8 v0, v0, 0x30

    int-to-char v0, v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    move v10, v0

    move v0, v2

    move v2, v10

    :goto_1
    const/4 v3, 0x4

    if-ge v2, v3, :cond_0

    aget v3, v6, v2

    add-int/2addr v3, v0

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move v0, v3

    goto :goto_1

    :cond_0
    const/16 v2, 0xa

    if-lt v8, v2, :cond_1

    const/4 v2, 0x1

    rsub-int/lit8 v3, v4, 0x1

    shl-int/2addr v2, v3

    or-int/2addr v1, v2

    :cond_1
    const/4 v2, 0x1

    if-eq v4, v2, :cond_2

    invoke-virtual {p2, v0}, Lbnz;->c(I)I

    move-result v0

    invoke-virtual {p2, v0}, Lbnz;->d(I)I

    move-result v0

    :cond_2
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    move v2, v0

    goto :goto_0

    :cond_3
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    const/4 v3, 0x2

    if-eq v0, v3, :cond_4

    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    :cond_4
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    rem-int/lit8 v0, v0, 0x4

    if-eq v0, v1, :cond_5

    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    .line 43
    :cond_5
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 44
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v3, 0x2

    if-eq v0, v3, :cond_7

    const/4 v0, 0x0

    .line 46
    :goto_2
    new-instance v3, Lbnr;

    const/4 v4, 0x0

    const/4 v5, 0x2

    new-array v5, v5, [Lbns;

    const/4 v6, 0x0

    new-instance v7, Lbns;

    const/4 v8, 0x0

    aget v8, p3, v8

    const/4 v9, 0x1

    aget v9, p3, v9

    add-int/2addr v8, v9

    int-to-float v8, v8

    const/high16 v9, 0x4000

    div-float/2addr v8, v9

    int-to-float v9, p1

    invoke-direct {v7, v8, v9}, Lbns;-><init>(FF)V

    aput-object v7, v5, v6

    const/4 v6, 0x1

    new-instance v7, Lbns;

    int-to-float v2, v2

    int-to-float v8, p1

    invoke-direct {v7, v2, v8}, Lbns;-><init>(FF)V

    aput-object v7, v5, v6

    sget-object v2, Lcom/google/zxing/BarcodeFormat;->UPC_EAN_EXTENSION:Lcom/google/zxing/BarcodeFormat;

    invoke-direct {v3, v1, v4, v5, v2}, Lbnr;-><init>(Ljava/lang/String;[B[Lbns;Lcom/google/zxing/BarcodeFormat;)V

    .line 54
    if-eqz v0, :cond_6

    .line 55
    invoke-virtual {v3, v0}, Lbnr;->a(Ljava/util/Map;)V

    .line 57
    :cond_6
    return-object v3

    .line 44
    :cond_7
    new-instance v0, Ljava/util/EnumMap;

    const-class v3, Lcom/google/zxing/ResultMetadataType;

    invoke-direct {v0, v3}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    sget-object v3, Lcom/google/zxing/ResultMetadataType;->ISSUE_NUMBER:Lcom/google/zxing/ResultMetadataType;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2
.end method
