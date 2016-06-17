.class public final Lbpm;
.super Lbpq;
.source "UPCAReader.java"


# instance fields
.field private final d:Lbpq;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Lbpq;-><init>()V

    .line 38
    new-instance v0, Lbpf;

    invoke-direct {v0}, Lbpf;-><init>()V

    iput-object v0, p0, Lbpm;->d:Lbpq;

    return-void
.end method

.method private static a(Lbnr;)Lbnr;
    .locals 5
    .parameter

    .prologue
    .line 78
    iget-object v0, p0, Lbnr;->a:Ljava/lang/String;

    .line 79
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x30

    if-ne v1, v2, :cond_0

    .line 80
    new-instance v1, Lbnr;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    iget-object v3, p0, Lbnr;->c:[Lbns;

    sget-object v4, Lcom/google/zxing/BarcodeFormat;->UPC_A:Lcom/google/zxing/BarcodeFormat;

    invoke-direct {v1, v0, v2, v3, v4}, Lbnr;-><init>(Ljava/lang/String;[B[Lbns;Lcom/google/zxing/BarcodeFormat;)V

    return-object v1

    .line 82
    :cond_0
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v0

    throw v0
.end method


# virtual methods
.method protected final a(Lbnz;[ILjava/lang/StringBuilder;)I
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 74
    iget-object v0, p0, Lbpm;->d:Lbpq;

    invoke-virtual {v0, p1, p2, p3}, Lbpq;->a(Lbnz;[ILjava/lang/StringBuilder;)I

    move-result v0

    return v0
.end method

.method public final a(ILbnz;Ljava/util/Map;)Lbnr;
    .locals 1
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lbnz;",
            "Ljava/util/Map",
            "<",
            "Lcom/google/zxing/DecodeHintType;",
            "*>;)",
            "Lbnr;"
        }
    .end annotation

    .prologue
    .line 52
    iget-object v0, p0, Lbpm;->d:Lbpq;

    invoke-virtual {v0, p1, p2, p3}, Lbpq;->a(ILbnz;Ljava/util/Map;)Lbnr;

    move-result-object v0

    invoke-static {v0}, Lbpm;->a(Lbnr;)Lbnr;

    move-result-object v0

    return-object v0
.end method

.method public final a(ILbnz;[ILjava/util/Map;)Lbnr;
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lbnz;",
            "[I",
            "Ljava/util/Map",
            "<",
            "Lcom/google/zxing/DecodeHintType;",
            "*>;)",
            "Lbnr;"
        }
    .end annotation

    .prologue
    .line 46
    iget-object v0, p0, Lbpm;->d:Lbpq;

    invoke-virtual {v0, p1, p2, p3, p4}, Lbpq;->a(ILbnz;[ILjava/util/Map;)Lbnr;

    move-result-object v0

    invoke-static {v0}, Lbpm;->a(Lbnr;)Lbnr;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lbnn;Ljava/util/Map;)Lbnr;
    .locals 1
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
    .line 63
    iget-object v0, p0, Lbpm;->d:Lbpq;

    invoke-virtual {v0, p1, p2}, Lbpq;->a(Lbnn;Ljava/util/Map;)Lbnr;

    move-result-object v0

    invoke-static {v0}, Lbpm;->a(Lbnr;)Lbnr;

    move-result-object v0

    return-object v0
.end method

.method final b()Lcom/google/zxing/BarcodeFormat;
    .locals 1

    .prologue
    .line 68
    sget-object v0, Lcom/google/zxing/BarcodeFormat;->UPC_A:Lcom/google/zxing/BarcodeFormat;

    return-object v0
.end method
