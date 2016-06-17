.class public abstract Lcom/squareup/wire/ExtendableMessage$ExtendableBuilder;
.super Lcom/squareup/wire/Message$Builder;
.source "ExtendableMessage.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/squareup/wire/ExtendableMessage",
        "<*>;>",
        "Lcom/squareup/wire/Message$Builder",
        "<TT;>;"
    }
.end annotation


# instance fields
.field extensionMap:Lcar;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcar",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    return-void
.end method

.method protected constructor <init>(Lcom/squareup/wire/ExtendableMessage;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/squareup/wire/ExtendableMessage",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 87
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message$Builder;-><init>(Lcom/squareup/wire/Message;)V

    .line 88
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/squareup/wire/ExtendableMessage;->extensionMap:Lcar;

    if-eqz v0, :cond_0

    .line 89
    new-instance v0, Lcar;

    iget-object v1, p1, Lcom/squareup/wire/ExtendableMessage;->extensionMap:Lcar;

    invoke-direct {v0, v1}, Lcar;-><init>(Lcar;)V

    iput-object v0, p0, Lcom/squareup/wire/ExtendableMessage$ExtendableBuilder;->extensionMap:Lcar;

    .line 91
    :cond_0
    return-void
.end method


# virtual methods
.method public getExtension(Lcom/squareup/wire/Extension;)Ljava/lang/Object;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/squareup/wire/Extension",
            "<TT;TE;>;)TE;"
        }
    .end annotation

    .prologue
    .line 98
    iget-object v0, p0, Lcom/squareup/wire/ExtendableMessage$ExtendableBuilder;->extensionMap:Lcar;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/squareup/wire/ExtendableMessage$ExtendableBuilder;->extensionMap:Lcar;

    invoke-virtual {v0, p1}, Lcar;->a(Lcom/squareup/wire/Extension;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public setExtension(Lcom/squareup/wire/Extension;Ljava/lang/Object;)Lcom/squareup/wire/ExtendableMessage$ExtendableBuilder;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/squareup/wire/Extension",
            "<TT;TE;>;TE;)",
            "Lcom/squareup/wire/ExtendableMessage$ExtendableBuilder",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 105
    iget-object v0, p0, Lcom/squareup/wire/ExtendableMessage$ExtendableBuilder;->extensionMap:Lcar;

    if-nez v0, :cond_0

    .line 106
    new-instance v0, Lcar;

    invoke-direct {v0}, Lcar;-><init>()V

    iput-object v0, p0, Lcom/squareup/wire/ExtendableMessage$ExtendableBuilder;->extensionMap:Lcar;

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/squareup/wire/ExtendableMessage$ExtendableBuilder;->extensionMap:Lcar;

    iget-object v0, v0, Lcar;->a:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    return-object p0
.end method
