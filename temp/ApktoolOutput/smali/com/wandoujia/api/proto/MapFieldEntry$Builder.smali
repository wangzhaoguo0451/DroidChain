.class public final Lcom/wandoujia/api/proto/MapFieldEntry$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "MapFieldEntry.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder",
        "<",
        "Lcom/wandoujia/api/proto/MapFieldEntry;",
        ">;"
    }
.end annotation


# instance fields
.field public key:Ljava/lang/String;

.field public value:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 58
    return-void
.end method

.method public constructor <init>(Lcom/wandoujia/api/proto/MapFieldEntry;)V
    .locals 1
    .parameter

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message$Builder;-><init>(Lcom/squareup/wire/Message;)V

    .line 62
    if-nez p1, :cond_0

    .line 65
    :goto_0
    return-void

    .line 63
    :cond_0
    iget-object v0, p1, Lcom/wandoujia/api/proto/MapFieldEntry;->key:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/api/proto/MapFieldEntry$Builder;->key:Ljava/lang/String;

    .line 64
    iget-object v0, p1, Lcom/wandoujia/api/proto/MapFieldEntry;->value:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/api/proto/MapFieldEntry$Builder;->value:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public final bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .prologue
    .line 52
    invoke-virtual {p0}, Lcom/wandoujia/api/proto/MapFieldEntry$Builder;->build()Lcom/wandoujia/api/proto/MapFieldEntry;

    move-result-object v0

    return-object v0
.end method

.method public final build()Lcom/wandoujia/api/proto/MapFieldEntry;
    .locals 2

    .prologue
    .line 79
    invoke-virtual {p0}, Lcom/wandoujia/api/proto/MapFieldEntry$Builder;->checkRequiredFields()V

    .line 80
    new-instance v0, Lcom/wandoujia/api/proto/MapFieldEntry;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/wandoujia/api/proto/MapFieldEntry;-><init>(Lcom/wandoujia/api/proto/MapFieldEntry$Builder;Ld;)V

    return-object v0
.end method

.method public final key(Ljava/lang/String;)Lcom/wandoujia/api/proto/MapFieldEntry$Builder;
    .locals 0
    .parameter

    .prologue
    .line 68
    iput-object p1, p0, Lcom/wandoujia/api/proto/MapFieldEntry$Builder;->key:Ljava/lang/String;

    .line 69
    return-object p0
.end method

.method public final value(Ljava/lang/String;)Lcom/wandoujia/api/proto/MapFieldEntry$Builder;
    .locals 0
    .parameter

    .prologue
    .line 73
    iput-object p1, p0, Lcom/wandoujia/api/proto/MapFieldEntry$Builder;->value:Ljava/lang/String;

    .line 74
    return-object p0
.end method
