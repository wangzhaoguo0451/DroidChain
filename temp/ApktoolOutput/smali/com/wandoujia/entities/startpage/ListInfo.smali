.class public Lcom/wandoujia/entities/startpage/ListInfo;
.super Ljava/lang/Object;
.source "ListInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private action:Lcom/wandoujia/entities/startpage/StartFeedActionInfo;

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

.field private description:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private secondaryAction:Lcom/wandoujia/entities/startpage/StartFeedActionInfo;

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAction()Lcom/wandoujia/entities/startpage/StartFeedActionInfo;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/wandoujia/entities/startpage/ListInfo;->action:Lcom/wandoujia/entities/startpage/StartFeedActionInfo;

    return-object v0
.end method

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
    .line 39
    iget-object v0, p0, Lcom/wandoujia/entities/startpage/ListInfo;->cards:Ljava/util/List;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/wandoujia/entities/startpage/ListInfo;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/wandoujia/entities/startpage/ListInfo;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getSecondaryAction()Lcom/wandoujia/entities/startpage/StartFeedActionInfo;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/wandoujia/entities/startpage/ListInfo;->secondaryAction:Lcom/wandoujia/entities/startpage/StartFeedActionInfo;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/wandoujia/entities/startpage/ListInfo;->title:Ljava/lang/String;

    return-object v0
.end method
