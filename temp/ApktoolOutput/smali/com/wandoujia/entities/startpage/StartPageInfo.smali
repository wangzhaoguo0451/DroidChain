.class public Lcom/wandoujia/entities/startpage/StartPageInfo;
.super Ljava/lang/Object;
.source "StartPageInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x62abd229d508acdcL


# instance fields
.field private cards:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/entities/startpage/StartCardInfo;",
            ">;"
        }
    .end annotation
.end field

.field private endTime:Ljava/lang/String;

.field private nextPageToken:Ljava/lang/String;

.field private sessionId:Ljava/lang/String;

.field private type:Lcom/wandoujia/entities/startpage/StartPageInfo$ContentType;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    return-void
.end method


# virtual methods
.method public getCards()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/entities/startpage/StartCardInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 22
    iget-object v0, p0, Lcom/wandoujia/entities/startpage/StartPageInfo;->cards:Ljava/util/List;

    return-object v0
.end method

.method public getEndTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/wandoujia/entities/startpage/StartPageInfo;->endTime:Ljava/lang/String;

    return-object v0
.end method

.method public getNextPageToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/wandoujia/entities/startpage/StartPageInfo;->nextPageToken:Ljava/lang/String;

    return-object v0
.end method

.method public getSessionId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/wandoujia/entities/startpage/StartPageInfo;->sessionId:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Lcom/wandoujia/entities/startpage/StartPageInfo$ContentType;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/wandoujia/entities/startpage/StartPageInfo;->type:Lcom/wandoujia/entities/startpage/StartPageInfo$ContentType;

    return-object v0
.end method
