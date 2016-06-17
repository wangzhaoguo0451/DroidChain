.class public final Lcom/wandoujia/api/proto/FavorLogResponse$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "FavorLogResponse.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder",
        "<",
        "Lcom/wandoujia/api/proto/FavorLogResponse;",
        ">;"
    }
.end annotation


# instance fields
.field public head:Ljava/lang/Long;

.field public next_head:Ljava/lang/Long;

.field public nothing_commit:Ljava/lang/Boolean;

.field public pb_version:Ljava/lang/Integer;

.field public status:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 89
    return-void
.end method

.method public constructor <init>(Lcom/wandoujia/api/proto/FavorLogResponse;)V
    .locals 1
    .parameter

    .prologue
    .line 92
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message$Builder;-><init>(Lcom/squareup/wire/Message;)V

    .line 93
    if-nez p1, :cond_0

    .line 99
    :goto_0
    return-void

    .line 94
    :cond_0
    iget-object v0, p1, Lcom/wandoujia/api/proto/FavorLogResponse;->pb_version:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/wandoujia/api/proto/FavorLogResponse$Builder;->pb_version:Ljava/lang/Integer;

    .line 95
    iget-object v0, p1, Lcom/wandoujia/api/proto/FavorLogResponse;->head:Ljava/lang/Long;

    iput-object v0, p0, Lcom/wandoujia/api/proto/FavorLogResponse$Builder;->head:Ljava/lang/Long;

    .line 96
    iget-object v0, p1, Lcom/wandoujia/api/proto/FavorLogResponse;->next_head:Ljava/lang/Long;

    iput-object v0, p0, Lcom/wandoujia/api/proto/FavorLogResponse$Builder;->next_head:Ljava/lang/Long;

    .line 97
    iget-object v0, p1, Lcom/wandoujia/api/proto/FavorLogResponse;->status:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/wandoujia/api/proto/FavorLogResponse$Builder;->status:Ljava/lang/Integer;

    .line 98
    iget-object v0, p1, Lcom/wandoujia/api/proto/FavorLogResponse;->nothing_commit:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/wandoujia/api/proto/FavorLogResponse$Builder;->nothing_commit:Ljava/lang/Boolean;

    goto :goto_0
.end method


# virtual methods
.method public final bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .prologue
    .line 80
    invoke-virtual {p0}, Lcom/wandoujia/api/proto/FavorLogResponse$Builder;->build()Lcom/wandoujia/api/proto/FavorLogResponse;

    move-result-object v0

    return-object v0
.end method

.method public final build()Lcom/wandoujia/api/proto/FavorLogResponse;
    .locals 2

    .prologue
    .line 137
    invoke-virtual {p0}, Lcom/wandoujia/api/proto/FavorLogResponse$Builder;->checkRequiredFields()V

    .line 138
    new-instance v0, Lcom/wandoujia/api/proto/FavorLogResponse;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/wandoujia/api/proto/FavorLogResponse;-><init>(Lcom/wandoujia/api/proto/FavorLogResponse$Builder;Ld;)V

    return-object v0
.end method

.method public final head(Ljava/lang/Long;)Lcom/wandoujia/api/proto/FavorLogResponse$Builder;
    .locals 0
    .parameter

    .prologue
    .line 107
    iput-object p1, p0, Lcom/wandoujia/api/proto/FavorLogResponse$Builder;->head:Ljava/lang/Long;

    .line 108
    return-object p0
.end method

.method public final next_head(Ljava/lang/Long;)Lcom/wandoujia/api/proto/FavorLogResponse$Builder;
    .locals 0
    .parameter

    .prologue
    .line 115
    iput-object p1, p0, Lcom/wandoujia/api/proto/FavorLogResponse$Builder;->next_head:Ljava/lang/Long;

    .line 116
    return-object p0
.end method

.method public final nothing_commit(Ljava/lang/Boolean;)Lcom/wandoujia/api/proto/FavorLogResponse$Builder;
    .locals 0
    .parameter

    .prologue
    .line 131
    iput-object p1, p0, Lcom/wandoujia/api/proto/FavorLogResponse$Builder;->nothing_commit:Ljava/lang/Boolean;

    .line 132
    return-object p0
.end method

.method public final pb_version(Ljava/lang/Integer;)Lcom/wandoujia/api/proto/FavorLogResponse$Builder;
    .locals 0
    .parameter

    .prologue
    .line 102
    iput-object p1, p0, Lcom/wandoujia/api/proto/FavorLogResponse$Builder;->pb_version:Ljava/lang/Integer;

    .line 103
    return-object p0
.end method

.method public final status(Ljava/lang/Integer;)Lcom/wandoujia/api/proto/FavorLogResponse$Builder;
    .locals 0
    .parameter

    .prologue
    .line 123
    iput-object p1, p0, Lcom/wandoujia/api/proto/FavorLogResponse$Builder;->status:Ljava/lang/Integer;

    .line 124
    return-object p0
.end method
