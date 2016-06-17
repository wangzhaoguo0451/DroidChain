.class public final Lbnr;
.super Ljava/lang/Object;
.source "Result.java"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:[B

.field public c:[Lbns;

.field public final d:Lcom/google/zxing/BarcodeFormat;

.field public e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/zxing/ResultMetadataType;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;[B[Lbns;Lcom/google/zxing/BarcodeFormat;)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 40
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lbnr;-><init>(Ljava/lang/String;[B[Lbns;Lcom/google/zxing/BarcodeFormat;B)V

    .line 41
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;[B[Lbns;Lcom/google/zxing/BarcodeFormat;B)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lbnr;->a:Ljava/lang/String;

    .line 49
    iput-object p2, p0, Lbnr;->b:[B

    .line 50
    iput-object p3, p0, Lbnr;->c:[Lbns;

    .line 51
    iput-object p4, p0, Lbnr;->d:Lcom/google/zxing/BarcodeFormat;

    .line 52
    const/4 v0, 0x0

    iput-object v0, p0, Lbnr;->e:Ljava/util/Map;

    .line 53
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/zxing/ResultMetadataType;Ljava/lang/Object;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 96
    iget-object v0, p0, Lbnr;->e:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 97
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/google/zxing/ResultMetadataType;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lbnr;->e:Ljava/util/Map;

    .line 99
    :cond_0
    iget-object v0, p0, Lbnr;->e:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    return-void
.end method

.method public final a(Ljava/util/Map;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lcom/google/zxing/ResultMetadataType;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 103
    if-eqz p1, :cond_0

    .line 104
    iget-object v0, p0, Lbnr;->e:Ljava/util/Map;

    if-nez v0, :cond_1

    .line 105
    iput-object p1, p0, Lbnr;->e:Ljava/util/Map;

    .line 110
    :cond_0
    :goto_0
    return-void

    .line 107
    :cond_1
    iget-object v0, p0, Lbnr;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    goto :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lbnr;->a:Ljava/lang/String;

    return-object v0
.end method
