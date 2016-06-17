.class public Lcom/wandoujia/p4/player/flv/FlvResult;
.super Ljava/lang/Object;
.source "FlvResult.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x27c690dd20fa362eL


# instance fields
.field public result:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/p4/player/flv/FlvResult$UrlResult;",
            ">;"
        }
    .end annotation
.end field

.field public target:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    return-void
.end method


# virtual methods
.method public getSharpness()Lcom/wandoujia/p4/video/model/VideoSharpness;
    .locals 3

    .prologue
    .line 19
    iget-object v0, p0, Lcom/wandoujia/p4/player/flv/FlvResult;->result:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/wandoujia/p4/player/flv/FlvResult;->result:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 20
    iget-object v0, p0, Lcom/wandoujia/p4/player/flv/FlvResult;->result:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/player/flv/FlvResult$UrlResult;

    .line 21
    if-eqz v0, :cond_0

    iget-object v2, v0, Lcom/wandoujia/p4/player/flv/FlvResult$UrlResult;->quality:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 22
    iget-object v0, v0, Lcom/wandoujia/p4/player/flv/FlvResult$UrlResult;->quality:Ljava/lang/String;

    invoke-static {v0}, Lcom/wandoujia/p4/video/model/VideoSharpness;->getVideoSharpness(Ljava/lang/String;)Lcom/wandoujia/p4/video/model/VideoSharpness;

    move-result-object v0

    .line 23
    if-eqz v0, :cond_0

    .line 29
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
