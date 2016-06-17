.class public final Lcom/wandoujia/base/models/Bitmap$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "Bitmap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder",
        "<",
        "Lcom/wandoujia/base/models/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field public content:Lcom/squareup/wire/ByteString;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 42
    return-void
.end method

.method public constructor <init>(Lcom/wandoujia/base/models/Bitmap;)V
    .locals 1
    .parameter

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message$Builder;-><init>(Lcom/squareup/wire/Message;)V

    .line 46
    if-nez p1, :cond_0

    .line 48
    :goto_0
    return-void

    .line 47
    :cond_0
    iget-object v0, p1, Lcom/wandoujia/base/models/Bitmap;->content:Lcom/squareup/wire/ByteString;

    iput-object v0, p0, Lcom/wandoujia/base/models/Bitmap$Builder;->content:Lcom/squareup/wire/ByteString;

    goto :goto_0
.end method


# virtual methods
.method public final bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .prologue
    .line 37
    invoke-virtual {p0}, Lcom/wandoujia/base/models/Bitmap$Builder;->build()Lcom/wandoujia/base/models/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public final build()Lcom/wandoujia/base/models/Bitmap;
    .locals 2

    .prologue
    .line 57
    invoke-virtual {p0}, Lcom/wandoujia/base/models/Bitmap$Builder;->checkRequiredFields()V

    .line 58
    new-instance v0, Lcom/wandoujia/base/models/Bitmap;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/wandoujia/base/models/Bitmap;-><init>(Lcom/wandoujia/base/models/Bitmap$Builder;Ld;)V

    return-object v0
.end method

.method public final content(Lcom/squareup/wire/ByteString;)Lcom/wandoujia/base/models/Bitmap$Builder;
    .locals 0
    .parameter

    .prologue
    .line 51
    iput-object p1, p0, Lcom/wandoujia/base/models/Bitmap$Builder;->content:Lcom/squareup/wire/ByteString;

    .line 52
    return-object p0
.end method
