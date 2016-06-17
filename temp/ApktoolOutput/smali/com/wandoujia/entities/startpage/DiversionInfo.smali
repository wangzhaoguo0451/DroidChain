.class public Lcom/wandoujia/entities/startpage/DiversionInfo;
.super Ljava/lang/Object;
.source "DiversionInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private action:Lcom/wandoujia/entities/startpage/StartFeedActionInfo;

.field private defaultAction:Lcom/wandoujia/entities/startpage/StartFeedActionInfo;

.field private description:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private imageUrl:Ljava/lang/String;

.field private imageUrls:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

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
    .line 38
    iget-object v0, p0, Lcom/wandoujia/entities/startpage/DiversionInfo;->action:Lcom/wandoujia/entities/startpage/StartFeedActionInfo;

    return-object v0
.end method

.method public getDefaultAction()Lcom/wandoujia/entities/startpage/StartFeedActionInfo;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/wandoujia/entities/startpage/DiversionInfo;->defaultAction:Lcom/wandoujia/entities/startpage/StartFeedActionInfo;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/wandoujia/entities/startpage/DiversionInfo;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/wandoujia/entities/startpage/DiversionInfo;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getImageUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/wandoujia/entities/startpage/DiversionInfo;->imageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getImageUrls()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 34
    iget-object v0, p0, Lcom/wandoujia/entities/startpage/DiversionInfo;->imageUrls:Ljava/util/List;

    return-object v0
.end method

.method public getSecondaryAction()Lcom/wandoujia/entities/startpage/StartFeedActionInfo;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/wandoujia/entities/startpage/DiversionInfo;->secondaryAction:Lcom/wandoujia/entities/startpage/StartFeedActionInfo;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/wandoujia/entities/startpage/DiversionInfo;->title:Ljava/lang/String;

    return-object v0
.end method
