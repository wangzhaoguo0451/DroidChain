.class public Lcom/wandoujia/feed/model/Link;
.super Ljava/lang/Object;
.source "Link.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private href:Ljava/lang/String;

.field private rel:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getHref()Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/wandoujia/feed/model/Link;->href:Ljava/lang/String;

    return-object v0
.end method

.method public getRel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/wandoujia/feed/model/Link;->rel:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/wandoujia/feed/model/Link;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/wandoujia/feed/model/Link;->type:Ljava/lang/String;

    return-object v0
.end method

.method public setHref(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 21
    iput-object p1, p0, Lcom/wandoujia/feed/model/Link;->href:Ljava/lang/String;

    .line 22
    return-void
.end method

.method public setRel(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 29
    iput-object p1, p0, Lcom/wandoujia/feed/model/Link;->rel:Ljava/lang/String;

    .line 30
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 45
    iput-object p1, p0, Lcom/wandoujia/feed/model/Link;->title:Ljava/lang/String;

    .line 46
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 37
    iput-object p1, p0, Lcom/wandoujia/feed/model/Link;->type:Ljava/lang/String;

    .line 38
    return-void
.end method
