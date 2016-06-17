.class public Lcom/wandoujia/p4/model/GoldenCardModel;
.super Ljava/lang/Object;
.source "GoldenCardModel.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private app:Lcom/wandoujia/entities/app/AppLiteInfo;

.field private cardType:Lcom/wandoujia/p4/model/GoldenCardModel$GoldenCardType;

.field private cornerMark:Lcom/wandoujia/p4/model/GoldenCardModel$CornerMarkType;

.field private id:I

.field private image:Ljava/lang/String;

.field private meta:Ljava/lang/String;

.field private showTitle:Z

.field private subtitle:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field private uri:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    return-void
.end method


# virtual methods
.method public getApp()Lcom/wandoujia/entities/app/AppLiteInfo;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/wandoujia/p4/model/GoldenCardModel;->app:Lcom/wandoujia/entities/app/AppLiteInfo;

    return-object v0
.end method

.method public getCardType()Lcom/wandoujia/p4/model/GoldenCardModel$GoldenCardType;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/wandoujia/p4/model/GoldenCardModel;->cardType:Lcom/wandoujia/p4/model/GoldenCardModel$GoldenCardType;

    return-object v0
.end method

.method public getCornerMark()Lcom/wandoujia/p4/model/GoldenCardModel$CornerMarkType;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/wandoujia/p4/model/GoldenCardModel;->cornerMark:Lcom/wandoujia/p4/model/GoldenCardModel$CornerMarkType;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 86
    iget v0, p0, Lcom/wandoujia/p4/model/GoldenCardModel;->id:I

    return v0
.end method

.method public getImage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/wandoujia/p4/model/GoldenCardModel;->image:Ljava/lang/String;

    return-object v0
.end method

.method public getMeta()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/wandoujia/p4/model/GoldenCardModel;->meta:Ljava/lang/String;

    return-object v0
.end method

.method public getSubtitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/wandoujia/p4/model/GoldenCardModel;->subtitle:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/wandoujia/p4/model/GoldenCardModel;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/wandoujia/p4/model/GoldenCardModel;->uri:Ljava/lang/String;

    return-object v0
.end method

.method public isShowTitle()Z
    .locals 1

    .prologue
    .line 62
    iget-boolean v0, p0, Lcom/wandoujia/p4/model/GoldenCardModel;->showTitle:Z

    return v0
.end method
