.class public Lcom/wandoujia/entities/startpage/StartCardInfo;
.super Ljava/lang/Object;
.source "StartCardInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x6f999406e770a4a3L


# instance fields
.field private feedDetail:Ljava/lang/String;

.field private feedItem:Lcwb;

.field private feedItemType:Ljava/lang/String;

.field private feedName:Ljava/lang/String;

.field private feedSubCardList:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private showButton:Z

.field private template:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getFeedDetail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/wandoujia/entities/startpage/StartCardInfo;->feedDetail:Ljava/lang/String;

    return-object v0
.end method

.method public getFeedItem()Lcwb;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/wandoujia/entities/startpage/StartCardInfo;->feedItem:Lcwb;

    return-object v0
.end method

.method public getFeedItemType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/wandoujia/entities/startpage/StartCardInfo;->feedItemType:Ljava/lang/String;

    return-object v0
.end method

.method public getFeedName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/wandoujia/entities/startpage/StartCardInfo;->feedName:Ljava/lang/String;

    return-object v0
.end method

.method public getFeedSubCardList()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/wandoujia/entities/startpage/StartCardInfo;->feedSubCardList:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/wandoujia/entities/startpage/StartCardInfo;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getTemplate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/wandoujia/entities/startpage/StartCardInfo;->template:Ljava/lang/String;

    return-object v0
.end method

.method public isShowButton()Z
    .locals 1

    .prologue
    .line 24
    iget-boolean v0, p0, Lcom/wandoujia/entities/startpage/StartCardInfo;->showButton:Z

    return v0
.end method
