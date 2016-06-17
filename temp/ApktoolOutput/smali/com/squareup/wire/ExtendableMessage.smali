.class public abstract Lcom/squareup/wire/ExtendableMessage;
.super Lcom/squareup/wire/Message;
.source "ExtendableMessage.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/squareup/wire/ExtendableMessage",
        "<*>;>",
        "Lcom/squareup/wire/Message;"
    }
.end annotation


# instance fields
.field transient extensionMap:Lcar;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcar",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lcom/squareup/wire/ExtendableMessage$ExtendableBuilder;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/squareup/wire/ExtendableMessage$ExtendableBuilder",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/Message$Builder;)V

    .line 30
    iget-object v0, p1, Lcom/squareup/wire/ExtendableMessage$ExtendableBuilder;->extensionMap:Lcar;

    if-eqz v0, :cond_0

    .line 31
    new-instance v0, Lcar;

    iget-object v1, p1, Lcom/squareup/wire/ExtendableMessage$ExtendableBuilder;->extensionMap:Lcar;

    invoke-direct {v0, v1}, Lcar;-><init>(Lcar;)V

    iput-object v0, p0, Lcom/squareup/wire/ExtendableMessage;->extensionMap:Lcar;

    .line 33
    :cond_0
    return-void
.end method


# virtual methods
.method protected extensionsEqual(Lcom/squareup/wire/ExtendableMessage;)Z
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/squareup/wire/ExtendableMessage",
            "<TT;>;)Z"
        }
    .end annotation

    .prologue
    .line 55
    iget-object v0, p0, Lcom/squareup/wire/ExtendableMessage;->extensionMap:Lcar;

    if-nez v0, :cond_1

    .line 56
    iget-object v0, p1, Lcom/squareup/wire/ExtendableMessage;->extensionMap:Lcar;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 58
    :goto_0
    return v0

    .line 56
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 58
    :cond_1
    iget-object v0, p0, Lcom/squareup/wire/ExtendableMessage;->extensionMap:Lcar;

    iget-object v1, p1, Lcom/squareup/wire/ExtendableMessage;->extensionMap:Lcar;

    invoke-virtual {v0, v1}, Lcar;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method protected extensionsHashCode()I
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/squareup/wire/ExtendableMessage;->extensionMap:Lcar;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/squareup/wire/ExtendableMessage;->extensionMap:Lcar;

    invoke-virtual {v0}, Lcar;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method extensionsToString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/squareup/wire/ExtendableMessage;->extensionMap:Lcar;

    if-nez v0, :cond_0

    const-string v0, "{}"

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/squareup/wire/ExtendableMessage;->extensionMap:Lcar;

    invoke-virtual {v0}, Lcar;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

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
    .line 48
    iget-object v0, p0, Lcom/squareup/wire/ExtendableMessage;->extensionMap:Lcar;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/squareup/wire/ExtendableMessage;->extensionMap:Lcar;

    invoke-virtual {v0, p1}, Lcar;->a(Lcom/squareup/wire/Extension;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getExtensions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/squareup/wire/Extension",
            "<TT;*>;>;"
        }
    .end annotation

    .prologue
    .line 39
    iget-object v0, p0, Lcom/squareup/wire/ExtendableMessage;->extensionMap:Lcar;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/squareup/wire/ExtendableMessage;->extensionMap:Lcar;

    invoke-virtual {v0}, Lcar;->a()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method
