.class public Lcom/wandoujia/p4/video2/card/model/VideoDetailPersonIconModel;
.super Ljava/lang/Object;
.source "VideoDetailPersonIconModel.java"

# interfaces
.implements Lcom/wandoujia/mvc/BaseModel;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x2593b756be901e8eL


# instance fields
.field public final coverUrl:Ljava/lang/String;

.field public final labelList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final name:Ljava/lang/String;

.field public final personId:J

.field public final videoType:Lcom/wandoujia/p4/video/model/VideoType;


# direct methods
.method public constructor <init>(Lcom/wandoujia/p4/video/model/VideoType;Lcom/wandoujia/p4/video2/http/delegate/GetPersonListByVideoIdDelegate$VideoPersonInfo;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/wandoujia/p4/video2/card/model/VideoDetailPersonIconModel;->labelList:Ljava/util/List;

    .line 28
    iput-object p1, p0, Lcom/wandoujia/p4/video2/card/model/VideoDetailPersonIconModel;->videoType:Lcom/wandoujia/p4/video/model/VideoType;

    .line 29
    iget-object v1, p2, Lcom/wandoujia/p4/video2/http/delegate/GetPersonListByVideoIdDelegate$VideoPersonInfo;->item:Lcom/wandoujia/p4/person/model/PersonInfo;

    .line 30
    if-eqz v1, :cond_2

    .line 31
    iget-object v2, v1, Lcom/wandoujia/p4/person/model/PersonInfo;->cover:Lcom/wandoujia/p4/person/model/PersonInfo$PersonCover;

    if-nez v2, :cond_1

    :goto_0
    iput-object v0, p0, Lcom/wandoujia/p4/video2/card/model/VideoDetailPersonIconModel;->coverUrl:Ljava/lang/String;

    .line 32
    iget-object v0, v1, Lcom/wandoujia/p4/person/model/PersonInfo;->name:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/p4/video2/card/model/VideoDetailPersonIconModel;->name:Ljava/lang/String;

    .line 33
    iget-wide v0, v1, Lcom/wandoujia/p4/person/model/PersonInfo;->id:J

    iput-wide v0, p0, Lcom/wandoujia/p4/video2/card/model/VideoDetailPersonIconModel;->personId:J

    .line 39
    :goto_1
    iget-object v0, p2, Lcom/wandoujia/p4/video2/http/delegate/GetPersonListByVideoIdDelegate$VideoPersonInfo;->label:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 40
    iget-object v0, p0, Lcom/wandoujia/p4/video2/card/model/VideoDetailPersonIconModel;->labelList:Ljava/util/List;

    iget-object v1, p2, Lcom/wandoujia/p4/video2/http/delegate/GetPersonListByVideoIdDelegate$VideoPersonInfo;->label:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 43
    :cond_0
    return-void

    .line 31
    :cond_1
    iget-object v0, v1, Lcom/wandoujia/p4/person/model/PersonInfo;->cover:Lcom/wandoujia/p4/person/model/PersonInfo$PersonCover;

    invoke-virtual {v0}, Lcom/wandoujia/p4/person/model/PersonInfo$PersonCover;->getL()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 35
    :cond_2
    iput-object v0, p0, Lcom/wandoujia/p4/video2/card/model/VideoDetailPersonIconModel;->coverUrl:Ljava/lang/String;

    .line 36
    iput-object v0, p0, Lcom/wandoujia/p4/video2/card/model/VideoDetailPersonIconModel;->name:Ljava/lang/String;

    .line 37
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/wandoujia/p4/video2/card/model/VideoDetailPersonIconModel;->personId:J

    goto :goto_1
.end method
