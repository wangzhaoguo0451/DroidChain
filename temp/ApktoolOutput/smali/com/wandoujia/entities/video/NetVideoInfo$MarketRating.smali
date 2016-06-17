.class public Lcom/wandoujia/entities/video/NetVideoInfo$MarketRating;
.super Ljava/lang/Object;
.source "NetVideoInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x56fc9c6fc826b8b1L


# instance fields
.field public providerAlias:Ljava/lang/String;

.field public providerName:Ljava/lang/String;

.field public rating:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 296
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getProviderAlias()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 309
    iget-object v0, p0, Lcom/wandoujia/entities/video/NetVideoInfo$MarketRating;->providerAlias:Ljava/lang/String;

    return-object v0
.end method

.method public getProviderName()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 304
    iget-object v0, p0, Lcom/wandoujia/entities/video/NetVideoInfo$MarketRating;->providerName:Ljava/lang/String;

    return-object v0
.end method

.method public getRating()F
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 314
    iget v0, p0, Lcom/wandoujia/entities/video/NetVideoInfo$MarketRating;->rating:F

    return v0
.end method
