.class public final Lcom/wandoujia/api/proto/Coordinate$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "Coordinate.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder",
        "<",
        "Lcom/wandoujia/api/proto/Coordinate;",
        ">;"
    }
.end annotation


# instance fields
.field public accuracy:Ljava/lang/Float;

.field public latitude:Ljava/lang/Double;

.field public longitude:Ljava/lang/Double;

.field public standard:Lcom/wandoujia/api/proto/Coordinate$CoordinateStandard;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 73
    return-void
.end method

.method public constructor <init>(Lcom/wandoujia/api/proto/Coordinate;)V
    .locals 1
    .parameter

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message$Builder;-><init>(Lcom/squareup/wire/Message;)V

    .line 77
    if-nez p1, :cond_0

    .line 82
    :goto_0
    return-void

    .line 78
    :cond_0
    iget-object v0, p1, Lcom/wandoujia/api/proto/Coordinate;->latitude:Ljava/lang/Double;

    iput-object v0, p0, Lcom/wandoujia/api/proto/Coordinate$Builder;->latitude:Ljava/lang/Double;

    .line 79
    iget-object v0, p1, Lcom/wandoujia/api/proto/Coordinate;->longitude:Ljava/lang/Double;

    iput-object v0, p0, Lcom/wandoujia/api/proto/Coordinate$Builder;->longitude:Ljava/lang/Double;

    .line 80
    iget-object v0, p1, Lcom/wandoujia/api/proto/Coordinate;->accuracy:Ljava/lang/Float;

    iput-object v0, p0, Lcom/wandoujia/api/proto/Coordinate$Builder;->accuracy:Ljava/lang/Float;

    .line 81
    iget-object v0, p1, Lcom/wandoujia/api/proto/Coordinate;->standard:Lcom/wandoujia/api/proto/Coordinate$CoordinateStandard;

    iput-object v0, p0, Lcom/wandoujia/api/proto/Coordinate$Builder;->standard:Lcom/wandoujia/api/proto/Coordinate$CoordinateStandard;

    goto :goto_0
.end method


# virtual methods
.method public final accuracy(Ljava/lang/Float;)Lcom/wandoujia/api/proto/Coordinate$Builder;
    .locals 0
    .parameter

    .prologue
    .line 95
    iput-object p1, p0, Lcom/wandoujia/api/proto/Coordinate$Builder;->accuracy:Ljava/lang/Float;

    .line 96
    return-object p0
.end method

.method public final bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .prologue
    .line 65
    invoke-virtual {p0}, Lcom/wandoujia/api/proto/Coordinate$Builder;->build()Lcom/wandoujia/api/proto/Coordinate;

    move-result-object v0

    return-object v0
.end method

.method public final build()Lcom/wandoujia/api/proto/Coordinate;
    .locals 2

    .prologue
    .line 106
    invoke-virtual {p0}, Lcom/wandoujia/api/proto/Coordinate$Builder;->checkRequiredFields()V

    .line 107
    new-instance v0, Lcom/wandoujia/api/proto/Coordinate;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/wandoujia/api/proto/Coordinate;-><init>(Lcom/wandoujia/api/proto/Coordinate$Builder;Ld;)V

    return-object v0
.end method

.method public final latitude(Ljava/lang/Double;)Lcom/wandoujia/api/proto/Coordinate$Builder;
    .locals 0
    .parameter

    .prologue
    .line 85
    iput-object p1, p0, Lcom/wandoujia/api/proto/Coordinate$Builder;->latitude:Ljava/lang/Double;

    .line 86
    return-object p0
.end method

.method public final longitude(Ljava/lang/Double;)Lcom/wandoujia/api/proto/Coordinate$Builder;
    .locals 0
    .parameter

    .prologue
    .line 90
    iput-object p1, p0, Lcom/wandoujia/api/proto/Coordinate$Builder;->longitude:Ljava/lang/Double;

    .line 91
    return-object p0
.end method

.method public final standard(Lcom/wandoujia/api/proto/Coordinate$CoordinateStandard;)Lcom/wandoujia/api/proto/Coordinate$Builder;
    .locals 0
    .parameter

    .prologue
    .line 100
    iput-object p1, p0, Lcom/wandoujia/api/proto/Coordinate$Builder;->standard:Lcom/wandoujia/api/proto/Coordinate$CoordinateStandard;

    .line 101
    return-object p0
.end method
