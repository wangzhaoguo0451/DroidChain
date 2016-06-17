.class public final Lcom/wandoujia/api/proto/Color$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "Color.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder",
        "<",
        "Lcom/wandoujia/api/proto/Color;",
        ">;"
    }
.end annotation


# instance fields
.field public normal:Ljava/lang/Integer;

.field public pressed:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 60
    return-void
.end method

.method public constructor <init>(Lcom/wandoujia/api/proto/Color;)V
    .locals 1
    .parameter

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message$Builder;-><init>(Lcom/squareup/wire/Message;)V

    .line 64
    if-nez p1, :cond_0

    .line 67
    :goto_0
    return-void

    .line 65
    :cond_0
    iget-object v0, p1, Lcom/wandoujia/api/proto/Color;->normal:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/wandoujia/api/proto/Color$Builder;->normal:Ljava/lang/Integer;

    .line 66
    iget-object v0, p1, Lcom/wandoujia/api/proto/Color;->pressed:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/wandoujia/api/proto/Color$Builder;->pressed:Ljava/lang/Integer;

    goto :goto_0
.end method


# virtual methods
.method public final bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .prologue
    .line 54
    invoke-virtual {p0}, Lcom/wandoujia/api/proto/Color$Builder;->build()Lcom/wandoujia/api/proto/Color;

    move-result-object v0

    return-object v0
.end method

.method public final build()Lcom/wandoujia/api/proto/Color;
    .locals 2

    .prologue
    .line 87
    invoke-virtual {p0}, Lcom/wandoujia/api/proto/Color$Builder;->checkRequiredFields()V

    .line 88
    new-instance v0, Lcom/wandoujia/api/proto/Color;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/wandoujia/api/proto/Color;-><init>(Lcom/wandoujia/api/proto/Color$Builder;Ld;)V

    return-object v0
.end method

.method public final normal(Ljava/lang/Integer;)Lcom/wandoujia/api/proto/Color$Builder;
    .locals 0
    .parameter

    .prologue
    .line 73
    iput-object p1, p0, Lcom/wandoujia/api/proto/Color$Builder;->normal:Ljava/lang/Integer;

    .line 74
    return-object p0
.end method

.method public final pressed(Ljava/lang/Integer;)Lcom/wandoujia/api/proto/Color$Builder;
    .locals 0
    .parameter

    .prologue
    .line 81
    iput-object p1, p0, Lcom/wandoujia/api/proto/Color$Builder;->pressed:Ljava/lang/Integer;

    .line 82
    return-object p0
.end method
