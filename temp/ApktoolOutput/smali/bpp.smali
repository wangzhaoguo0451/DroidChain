.class final Lbpp;
.super Ljava/lang/Object;
.source "UPCEANExtensionSupport.java"


# static fields
.field private static final a:[I


# instance fields
.field private final b:Lbpn;

.field private final c:Lbpo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lbpp;->a:[I

    return-void

    nop

    :array_0
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Lbpn;

    invoke-direct {v0}, Lbpn;-><init>()V

    iput-object v0, p0, Lbpp;->b:Lbpn;

    .line 29
    new-instance v0, Lbpo;

    invoke-direct {v0}, Lbpo;-><init>()V

    iput-object v0, p0, Lbpp;->c:Lbpo;

    return-void
.end method


# virtual methods
.method final a(ILbnz;I)Lbnr;
    .locals 11
    .parameter
    .parameter
    .parameter

    .prologue
    .line 32
    const/4 v0, 0x0

    sget-object v1, Lbpp;->a:[I

    invoke-static {p2, p3, v0, v1}, Lbpq;->a(Lbnz;IZ[I)[I

    move-result-object v5

    .line 34
    :try_start_0
    iget-object v0, p0, Lbpp;->c:Lbpo;

    iget-object v6, v0, Lbpo;->c:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    iget-object v7, v0, Lbpo;->b:[I

    const/4 v0, 0x0

    const/4 v1, 0x0

    aput v1, v7, v0

    const/4 v0, 0x1

    const/4 v1, 0x0

    aput v1, v7, v0

    const/4 v0, 0x2

    const/4 v1, 0x0

    aput v1, v7, v0

    const/4 v0, 0x3

    const/4 v1, 0x0

    aput v1, v7, v0

    iget v8, p2, Lbnz;->b:I

    const/4 v0, 0x1

    aget v2, v5, v0

    const/4 v1, 0x0

    const/4 v0, 0x0

    move v3, v1

    move v4, v2

    move v1, v0

    :goto_0
    const/4 v0, 0x5

    if-ge v1, v0, :cond_2

    if-ge v4, v8, :cond_2

    sget-object v0, Lbpq;->c:[[I

    invoke-static {p2, v7, v4, v0}, Lbpq;->a(Lbnz;[II[[I)I

    move-result v9

    rem-int/lit8 v0, v9, 0xa

    add-int/lit8 v0, v0, 0x30

    int-to-char v0, v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    move v2, v0

    move v0, v4

    :goto_1
    const/4 v4, 0x4

    if-ge v2, v4, :cond_0

    aget v4, v7, v2

    add-int/2addr v4, v0

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move v0, v4

    goto :goto_1

    :cond_0
    const/16 v2, 0xa

    if-lt v9, v2, :cond_10

    const/4 v2, 0x1

    rsub-int/lit8 v4, v1, 0x4

    shl-int/2addr v2, v4

    or-int/2addr v2, v3

    :goto_2
    const/4 v3, 0x4

    if-eq v1, v3, :cond_1

    invoke-virtual {p2, v0}, Lbnz;->c(I)I

    move-result v0

    invoke-virtual {p2, v0}, Lbnz;->d(I)I

    move-result v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    move v3, v2

    move v4, v0

    goto :goto_0

    :cond_2
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_4

    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0
    :try_end_0
    .catch Lcom/google/zxing/ReaderException; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    :catch_0
    move-exception v0

    iget-object v0, p0, Lbpp;->b:Lbpn;

    invoke-virtual {v0, p1, p2, v5}, Lbpn;->a(ILbnz;[I)Lbnr;

    move-result-object v0

    :cond_3
    :goto_3
    return-object v0

    .line 34
    :cond_4
    const/4 v0, 0x0

    move v2, v0

    :goto_4
    const/16 v0, 0xa

    if-ge v2, v0, :cond_6

    :try_start_1
    sget-object v0, Lbpo;->a:[I

    aget v0, v0, v2

    if-ne v3, v0, :cond_5

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v7

    const/4 v1, 0x0

    add-int/lit8 v0, v7, -0x2

    :goto_5
    if-ltz v0, :cond_7

    invoke-interface {v3, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v8

    add-int/lit8 v8, v8, -0x30

    add-int/2addr v1, v8

    add-int/lit8 v0, v0, -0x2

    goto :goto_5

    :cond_5
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_4

    :cond_6
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    :cond_7
    mul-int/lit8 v1, v1, 0x3

    add-int/lit8 v0, v7, -0x1

    :goto_6
    if-ltz v0, :cond_8

    invoke-interface {v3, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    add-int/lit8 v7, v7, -0x30

    add-int/2addr v1, v7

    add-int/lit8 v0, v0, -0x2

    goto :goto_6

    :cond_8
    mul-int/lit8 v0, v1, 0x3

    rem-int/lit8 v0, v0, 0xa

    if-eq v0, v2, :cond_9

    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    :cond_9
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_a

    const/4 v0, 0x0

    move-object v1, v0

    :goto_7
    new-instance v0, Lbnr;

    const/4 v3, 0x0

    const/4 v6, 0x2

    new-array v6, v6, [Lbns;

    const/4 v7, 0x0

    new-instance v8, Lbns;

    const/4 v9, 0x0

    aget v9, v5, v9

    const/4 v10, 0x1

    aget v10, v5, v10

    add-int/2addr v9, v10

    int-to-float v9, v9

    const/high16 v10, 0x4000

    div-float/2addr v9, v10

    int-to-float v10, p1

    invoke-direct {v8, v9, v10}, Lbns;-><init>(FF)V

    aput-object v8, v6, v7

    const/4 v7, 0x1

    new-instance v8, Lbns;

    int-to-float v4, v4

    int-to-float v9, p1

    invoke-direct {v8, v4, v9}, Lbns;-><init>(FF)V

    aput-object v8, v6, v7

    sget-object v4, Lcom/google/zxing/BarcodeFormat;->UPC_EAN_EXTENSION:Lcom/google/zxing/BarcodeFormat;

    invoke-direct {v0, v2, v3, v6, v4}, Lbnr;-><init>(Ljava/lang/String;[B[Lbns;Lcom/google/zxing/BarcodeFormat;)V

    if-eqz v1, :cond_3

    invoke-virtual {v0, v1}, Lbnr;->a(Ljava/util/Map;)V

    goto/16 :goto_3

    :cond_a
    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    sparse-switch v0, :sswitch_data_0

    const-string v0, ""

    move-object v1, v0

    :goto_8
    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    div-int/lit8 v3, v0, 0x64

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    rem-int/lit8 v0, v0, 0x64

    const/16 v6, 0xa

    if-ge v0, v6, :cond_e

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "0"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_9
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v3, 0x2e

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    :goto_a
    if-nez v1, :cond_f

    const/4 v0, 0x0

    move-object v1, v0

    goto :goto_7

    :sswitch_0
    const-string v0, "\u00a3"

    move-object v1, v0

    goto :goto_8

    :sswitch_1
    const-string v0, "$"

    move-object v1, v0

    goto :goto_8

    :sswitch_2
    const-string v0, "90000"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    const/4 v0, 0x0

    move-object v1, v0

    goto :goto_a

    :cond_b
    const-string v0, "99991"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    const-string v0, "0.00"

    move-object v1, v0

    goto :goto_a

    :cond_c
    const-string v0, "99990"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    const-string v0, "Used"

    move-object v1, v0

    goto :goto_a

    :cond_d
    const-string v0, ""

    move-object v1, v0

    goto :goto_8

    :cond_e
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_9

    :cond_f
    new-instance v0, Ljava/util/EnumMap;

    const-class v3, Lcom/google/zxing/ResultMetadataType;

    invoke-direct {v0, v3}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    sget-object v3, Lcom/google/zxing/ResultMetadataType;->SUGGESTED_PRICE:Lcom/google/zxing/ResultMetadataType;

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Lcom/google/zxing/ReaderException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v1, v0

    goto/16 :goto_7

    :cond_10
    move v2, v3

    goto/16 :goto_2

    nop

    :sswitch_data_0
    .sparse-switch
        0x30 -> :sswitch_0
        0x35 -> :sswitch_1
        0x39 -> :sswitch_2
    .end sparse-switch
.end method
