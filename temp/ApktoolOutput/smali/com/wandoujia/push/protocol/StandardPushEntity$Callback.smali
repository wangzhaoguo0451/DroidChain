.class public Lcom/wandoujia/push/protocol/StandardPushEntity$Callback;
.super Ljava/lang/Object;
.source "StandardPushEntity.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private headers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/push/protocol/StandardPushEntity$Callback$Pair;",
            ">;"
        }
    .end annotation
.end field

.field private parameters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/push/protocol/StandardPushEntity$Callback$Pair;",
            ">;"
        }
    .end annotation
.end field

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    return-void
.end method


# virtual methods
.method public addHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 109
    iget-object v0, p0, Lcom/wandoujia/push/protocol/StandardPushEntity$Callback;->headers:Ljava/util/List;

    if-nez v0, :cond_0

    .line 110
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/wandoujia/push/protocol/StandardPushEntity$Callback;->headers:Ljava/util/List;

    .line 112
    :cond_0
    iget-object v0, p0, Lcom/wandoujia/push/protocol/StandardPushEntity$Callback;->headers:Ljava/util/List;

    new-instance v1, Lcom/wandoujia/push/protocol/StandardPushEntity$Callback$Pair;

    invoke-direct {v1, p1, p2}, Lcom/wandoujia/push/protocol/StandardPushEntity$Callback$Pair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 113
    return-void
.end method

.method public addParameter(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 124
    iget-object v0, p0, Lcom/wandoujia/push/protocol/StandardPushEntity$Callback;->parameters:Ljava/util/List;

    if-nez v0, :cond_0

    .line 125
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/wandoujia/push/protocol/StandardPushEntity$Callback;->parameters:Ljava/util/List;

    .line 127
    :cond_0
    iget-object v0, p0, Lcom/wandoujia/push/protocol/StandardPushEntity$Callback;->parameters:Ljava/util/List;

    new-instance v1, Lcom/wandoujia/push/protocol/StandardPushEntity$Callback$Pair;

    invoke-direct {v1, p1, p2}, Lcom/wandoujia/push/protocol/StandardPushEntity$Callback$Pair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 128
    return-void
.end method

.method public getHeaders()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/push/protocol/StandardPushEntity$Callback$Pair;",
            ">;"
        }
    .end annotation

    .prologue
    .line 101
    iget-object v0, p0, Lcom/wandoujia/push/protocol/StandardPushEntity$Callback;->headers:Ljava/util/List;

    return-object v0
.end method

.method public getParameters()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/push/protocol/StandardPushEntity$Callback$Pair;",
            ">;"
        }
    .end annotation

    .prologue
    .line 116
    iget-object v0, p0, Lcom/wandoujia/push/protocol/StandardPushEntity$Callback;->parameters:Ljava/util/List;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/wandoujia/push/protocol/StandardPushEntity$Callback;->url:Ljava/lang/String;

    return-object v0
.end method

.method public setHeaders(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/push/protocol/StandardPushEntity$Callback$Pair;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 105
    iput-object p1, p0, Lcom/wandoujia/push/protocol/StandardPushEntity$Callback;->headers:Ljava/util/List;

    .line 106
    return-void
.end method

.method public setParameters(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/push/protocol/StandardPushEntity$Callback$Pair;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 120
    iput-object p1, p0, Lcom/wandoujia/push/protocol/StandardPushEntity$Callback;->parameters:Ljava/util/List;

    .line 121
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 97
    iput-object p1, p0, Lcom/wandoujia/push/protocol/StandardPushEntity$Callback;->url:Ljava/lang/String;

    .line 98
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[ url is "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/wandoujia/push/protocol/StandardPushEntity$Callback;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", headers is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/wandoujia/push/protocol/StandardPushEntity$Callback;->headers:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", parameters is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/wandoujia/push/protocol/StandardPushEntity$Callback;->parameters:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
