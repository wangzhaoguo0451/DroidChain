.class public Lcom/wandoujia/entities/startpage/SectionListInfo;
.super Ljava/lang/Object;
.source "SectionListInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x382a41c7f141f8bL


# instance fields
.field private action:Lcom/wandoujia/entities/startpage/StartFeedActionInfo;

.field private bannerImageUrl:Ljava/lang/String;

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

.field private defaultAction:Lcom/wandoujia/entities/startpage/StartFeedActionInfo;

.field private description:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private sectionType:Ljava/lang/String;

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
    .line 46
    iget-object v0, p0, Lcom/wandoujia/entities/startpage/SectionListInfo;->action:Lcom/wandoujia/entities/startpage/StartFeedActionInfo;

    return-object v0
.end method

.method public getBannerImageUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/wandoujia/entities/startpage/SectionListInfo;->bannerImageUrl:Ljava/lang/String;

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
    .line 50
    iget-object v0, p0, Lcom/wandoujia/entities/startpage/SectionListInfo;->cards:Ljava/util/List;

    return-object v0
.end method

.method public getDefaultAction()Lcom/wandoujia/entities/startpage/StartFeedActionInfo;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/wandoujia/entities/startpage/SectionListInfo;->defaultAction:Lcom/wandoujia/entities/startpage/StartFeedActionInfo;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/wandoujia/entities/startpage/SectionListInfo;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/wandoujia/entities/startpage/SectionListInfo;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getSectionType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/wandoujia/entities/startpage/SectionListInfo;->sectionType:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/wandoujia/entities/startpage/SectionListInfo;->title:Ljava/lang/String;

    return-object v0
.end method
