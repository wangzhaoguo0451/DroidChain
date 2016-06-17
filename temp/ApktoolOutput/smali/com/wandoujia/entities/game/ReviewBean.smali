.class public Lcom/wandoujia/entities/game/ReviewBean;
.super Ljava/lang/Object;
.source "ReviewBean.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x343bf2bf811cfbe9L


# instance fields
.field private headImage:Ljava/lang/String;

.field private operationTitle:Ljava/lang/String;

.field private recommendWording:Ljava/lang/String;

.field private story:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/entities/game/StoryParagraph;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getHeadImage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/wandoujia/entities/game/ReviewBean;->headImage:Ljava/lang/String;

    return-object v0
.end method

.method public getOperationTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/wandoujia/entities/game/ReviewBean;->operationTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getRecommendWording()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/wandoujia/entities/game/ReviewBean;->recommendWording:Ljava/lang/String;

    return-object v0
.end method

.method public getStory()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/entities/game/StoryParagraph;",
            ">;"
        }
    .end annotation

    .prologue
    .line 35
    iget-object v0, p0, Lcom/wandoujia/entities/game/ReviewBean;->story:Ljava/util/List;

    return-object v0
.end method

.method public setHeadImage(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 31
    iput-object p1, p0, Lcom/wandoujia/entities/game/ReviewBean;->headImage:Ljava/lang/String;

    .line 32
    return-void
.end method

.method public setOperationTitle(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 23
    iput-object p1, p0, Lcom/wandoujia/entities/game/ReviewBean;->operationTitle:Ljava/lang/String;

    .line 24
    return-void
.end method

.method public setRecommendWording(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 47
    iput-object p1, p0, Lcom/wandoujia/entities/game/ReviewBean;->recommendWording:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public setStory(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/entities/game/StoryParagraph;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 39
    iput-object p1, p0, Lcom/wandoujia/entities/game/ReviewBean;->story:Ljava/util/List;

    .line 40
    return-void
.end method
