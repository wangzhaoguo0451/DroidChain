.class public final Lbnv;
.super Ljava/lang/Object;
.source "AztecReader.java"

# interfaces
.implements Lbnq;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lbnn;Ljava/util/Map;)Lbnr;
    .locals 7
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbnn;",
            "Ljava/util/Map",
            "<",
            "Lcom/google/zxing/DecodeHintType;",
            "*>;)",
            "Lbnr;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 59
    .line 61
    new-instance v5, Lbnx;

    invoke-virtual {p1}, Lbnn;->a()Lboa;

    move-result-object v0

    invoke-direct {v5, v0}, Lbnx;-><init>(Lboa;)V

    .line 65
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {v5, v0}, Lbnx;->a(Z)Lbnu;

    move-result-object v0

    .line 66
    iget-object v1, v0, Lboe;->e:[Lbns;
    :try_end_0
    .catch Lcom/google/zxing/NotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/zxing/FormatException; {:try_start_0 .. :try_end_0} :catch_1

    .line 67
    :try_start_1
    new-instance v4, Lcom/google/zxing/aztec/decoder/Decoder;

    invoke-direct {v4}, Lcom/google/zxing/aztec/decoder/Decoder;-><init>()V

    invoke-virtual {v4, v0}, Lcom/google/zxing/aztec/decoder/Decoder;->a(Lbnu;)Lboc;
    :try_end_1
    .catch Lcom/google/zxing/NotFoundException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Lcom/google/zxing/FormatException; {:try_start_1 .. :try_end_1} :catch_4

    move-result-object v0

    move-object v4, v2

    .line 73
    :goto_0
    if-nez v0, :cond_5

    .line 75
    const/4 v0, 0x1

    :try_start_2
    invoke-virtual {v5, v0}, Lbnx;->a(Z)Lbnu;

    move-result-object v0

    .line 76
    iget-object v1, v0, Lboe;->e:[Lbns;

    .line 77
    new-instance v5, Lcom/google/zxing/aztec/decoder/Decoder;

    invoke-direct {v5}, Lcom/google/zxing/aztec/decoder/Decoder;-><init>()V

    invoke-virtual {v5, v0}, Lcom/google/zxing/aztec/decoder/Decoder;->a(Lbnu;)Lboc;
    :try_end_2
    .catch Lcom/google/zxing/NotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lcom/google/zxing/FormatException; {:try_start_2 .. :try_end_2} :catch_3

    move-result-object v0

    move-object v2, v0

    move-object v4, v1

    .line 89
    :goto_1
    if-eqz p2, :cond_2

    .line 90
    sget-object v0, Lcom/google/zxing/DecodeHintType;->NEED_RESULT_POINT_CALLBACK:Lcom/google/zxing/DecodeHintType;

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbnt;

    .line 91
    if-eqz v0, :cond_2

    .line 92
    array-length v5, v4

    move v1, v3

    :goto_2
    if-ge v1, v5, :cond_2

    aget-object v3, v4, v1

    .line 93
    invoke-virtual {v0, v3}, Lbnt;->a(Lbns;)V

    .line 92
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 68
    :catch_0
    move-exception v0

    move-object v1, v2

    :goto_3
    move-object v4, v0

    move-object v0, v2

    .line 72
    goto :goto_0

    .line 70
    :catch_1
    move-exception v0

    move-object v1, v2

    :goto_4
    move-object v4, v2

    move-object v6, v0

    move-object v0, v2

    move-object v2, v6

    goto :goto_0

    .line 78
    :catch_2
    move-exception v0

    .line 79
    :goto_5
    if-eqz v4, :cond_0

    .line 80
    throw v4

    .line 82
    :cond_0
    if-eqz v2, :cond_1

    .line 83
    throw v2

    .line 85
    :cond_1
    throw v0

    .line 98
    :cond_2
    new-instance v0, Lbnr;

    iget-object v1, v2, Lboc;->b:Ljava/lang/String;

    iget-object v3, v2, Lboc;->a:[B

    sget-object v5, Lcom/google/zxing/BarcodeFormat;->AZTEC:Lcom/google/zxing/BarcodeFormat;

    invoke-direct {v0, v1, v3, v4, v5}, Lbnr;-><init>(Ljava/lang/String;[B[Lbns;Lcom/google/zxing/BarcodeFormat;)V

    .line 100
    iget-object v1, v2, Lboc;->c:Ljava/util/List;

    .line 101
    if-eqz v1, :cond_3

    .line 102
    sget-object v3, Lcom/google/zxing/ResultMetadataType;->BYTE_SEGMENTS:Lcom/google/zxing/ResultMetadataType;

    invoke-virtual {v0, v3, v1}, Lbnr;->a(Lcom/google/zxing/ResultMetadataType;Ljava/lang/Object;)V

    .line 104
    :cond_3
    iget-object v1, v2, Lboc;->d:Ljava/lang/String;

    .line 105
    if-eqz v1, :cond_4

    .line 106
    sget-object v2, Lcom/google/zxing/ResultMetadataType;->ERROR_CORRECTION_LEVEL:Lcom/google/zxing/ResultMetadataType;

    invoke-virtual {v0, v2, v1}, Lbnr;->a(Lcom/google/zxing/ResultMetadataType;Ljava/lang/Object;)V

    .line 109
    :cond_4
    return-object v0

    .line 78
    :catch_3
    move-exception v0

    goto :goto_5

    .line 70
    :catch_4
    move-exception v0

    goto :goto_4

    .line 68
    :catch_5
    move-exception v0

    goto :goto_3

    :cond_5
    move-object v2, v0

    move-object v4, v1

    goto :goto_1
.end method

.method public final a()V
    .locals 0

    .prologue
    .line 115
    return-void
.end method
