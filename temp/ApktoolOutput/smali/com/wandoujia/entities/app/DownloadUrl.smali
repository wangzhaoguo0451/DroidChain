.class public Lcom/wandoujia/entities/app/DownloadUrl;
.super Ljava/lang/Object;
.source "DownloadUrl.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private aggrWeight:I

.field private market:Ljava/lang/String;

.field private referUrl:Ljava/lang/String;

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAggrWeight()I
    .locals 1

    .prologue
    .line 12
    iget v0, p0, Lcom/wandoujia/entities/app/DownloadUrl;->aggrWeight:I

    return v0
.end method

.method public getMarket()Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/wandoujia/entities/app/DownloadUrl;->market:Ljava/lang/String;

    return-object v0
.end method

.method public getReferUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/wandoujia/entities/app/DownloadUrl;->referUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/wandoujia/entities/app/DownloadUrl;->url:Ljava/lang/String;

    return-object v0
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 28
    iput-object p1, p0, Lcom/wandoujia/entities/app/DownloadUrl;->url:Ljava/lang/String;

    .line 29
    return-void
.end method
