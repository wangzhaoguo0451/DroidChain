.class public final Lcom/wandoujia/api/proto/AppTag$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "AppTag.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder",
        "<",
        "Lcom/wandoujia/api/proto/AppTag;",
        ">;"
    }
.end annotation


# instance fields
.field public tag:Ljava/lang/String;

.field public weight:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 54
    return-void
.end method

.method public constructor <init>(Lcom/wandoujia/api/proto/AppTag;)V
    .locals 1
    .parameter

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message$Builder;-><init>(Lcom/squareup/wire/Message;)V

    .line 58
    if-nez p1, :cond_0

    .line 61
    :goto_0
    return-void

    .line 59
    :cond_0
    iget-object v0, p1, Lcom/wandoujia/api/proto/AppTag;->tag:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/api/proto/AppTag$Builder;->tag:Ljava/lang/String;

    .line 60
    iget-object v0, p1, Lcom/wandoujia/api/proto/AppTag;->weight:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/wandoujia/api/proto/AppTag$Builder;->weight:Ljava/lang/Integer;

    goto :goto_0
.end method


# virtual methods
.method public final bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .prologue
    .line 48
    invoke-virtual {p0}, Lcom/wandoujia/api/proto/AppTag$Builder;->build()Lcom/wandoujia/api/proto/AppTag;

    move-result-object v0

    return-object v0
.end method

.method public final build()Lcom/wandoujia/api/proto/AppTag;
    .locals 2

    .prologue
    .line 75
    new-instance v0, Lcom/wandoujia/api/proto/AppTag;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/wandoujia/api/proto/AppTag;-><init>(Lcom/wandoujia/api/proto/AppTag$Builder;Ld;)V

    return-object v0
.end method

.method public final tag(Ljava/lang/String;)Lcom/wandoujia/api/proto/AppTag$Builder;
    .locals 0
    .parameter

    .prologue
    .line 64
    iput-object p1, p0, Lcom/wandoujia/api/proto/AppTag$Builder;->tag:Ljava/lang/String;

    .line 65
    return-object p0
.end method

.method public final weight(Ljava/lang/Integer;)Lcom/wandoujia/api/proto/AppTag$Builder;
    .locals 0
    .parameter

    .prologue
    .line 69
    iput-object p1, p0, Lcom/wandoujia/api/proto/AppTag$Builder;->weight:Ljava/lang/Integer;

    .line 70
    return-object p0
.end method
