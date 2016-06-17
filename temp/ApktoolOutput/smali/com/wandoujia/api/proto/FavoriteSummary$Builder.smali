.class public final Lcom/wandoujia/api/proto/FavoriteSummary$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "FavoriteSummary.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder",
        "<",
        "Lcom/wandoujia/api/proto/FavoriteSummary;",
        ">;"
    }
.end annotation


# instance fields
.field public favorited:Ljava/lang/Boolean;

.field public friends_avatar:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public next_version:Ljava/lang/Long;

.field public total_count:Ljava/lang/Integer;

.field public update_time:Ljava/lang/Long;

.field public version:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 98
    return-void
.end method

.method public constructor <init>(Lcom/wandoujia/api/proto/FavoriteSummary;)V
    .locals 1
    .parameter

    .prologue
    .line 101
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message$Builder;-><init>(Lcom/squareup/wire/Message;)V

    .line 102
    if-nez p1, :cond_0

    .line 109
    :goto_0
    return-void

    .line 103
    :cond_0
    iget-object v0, p1, Lcom/wandoujia/api/proto/FavoriteSummary;->friends_avatar:Ljava/util/List;

    #calls: Lcom/wandoujia/api/proto/FavoriteSummary;->copyOf(Ljava/util/List;)Ljava/util/List;
    invoke-static {v0}, Lcom/wandoujia/api/proto/FavoriteSummary;->access$000(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/api/proto/FavoriteSummary$Builder;->friends_avatar:Ljava/util/List;

    .line 104
    iget-object v0, p1, Lcom/wandoujia/api/proto/FavoriteSummary;->total_count:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/wandoujia/api/proto/FavoriteSummary$Builder;->total_count:Ljava/lang/Integer;

    .line 105
    iget-object v0, p1, Lcom/wandoujia/api/proto/FavoriteSummary;->favorited:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/wandoujia/api/proto/FavoriteSummary$Builder;->favorited:Ljava/lang/Boolean;

    .line 106
    iget-object v0, p1, Lcom/wandoujia/api/proto/FavoriteSummary;->version:Ljava/lang/Long;

    iput-object v0, p0, Lcom/wandoujia/api/proto/FavoriteSummary$Builder;->version:Ljava/lang/Long;

    .line 107
    iget-object v0, p1, Lcom/wandoujia/api/proto/FavoriteSummary;->next_version:Ljava/lang/Long;

    iput-object v0, p0, Lcom/wandoujia/api/proto/FavoriteSummary$Builder;->next_version:Ljava/lang/Long;

    .line 108
    iget-object v0, p1, Lcom/wandoujia/api/proto/FavoriteSummary;->update_time:Ljava/lang/Long;

    iput-object v0, p0, Lcom/wandoujia/api/proto/FavoriteSummary$Builder;->update_time:Ljava/lang/Long;

    goto :goto_0
.end method


# virtual methods
.method public final bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .prologue
    .line 88
    invoke-virtual {p0}, Lcom/wandoujia/api/proto/FavoriteSummary$Builder;->build()Lcom/wandoujia/api/proto/FavoriteSummary;

    move-result-object v0

    return-object v0
.end method

.method public final build()Lcom/wandoujia/api/proto/FavoriteSummary;
    .locals 2

    .prologue
    .line 149
    invoke-virtual {p0}, Lcom/wandoujia/api/proto/FavoriteSummary$Builder;->checkRequiredFields()V

    .line 150
    new-instance v0, Lcom/wandoujia/api/proto/FavoriteSummary;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/wandoujia/api/proto/FavoriteSummary;-><init>(Lcom/wandoujia/api/proto/FavoriteSummary$Builder;Ld;)V

    return-object v0
.end method

.method public final favorited(Ljava/lang/Boolean;)Lcom/wandoujia/api/proto/FavoriteSummary$Builder;
    .locals 0
    .parameter

    .prologue
    .line 122
    iput-object p1, p0, Lcom/wandoujia/api/proto/FavoriteSummary$Builder;->favorited:Ljava/lang/Boolean;

    .line 123
    return-object p0
.end method

.method public final friends_avatar(Ljava/util/List;)Lcom/wandoujia/api/proto/FavoriteSummary$Builder;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/wandoujia/api/proto/FavoriteSummary$Builder;"
        }
    .end annotation

    .prologue
    .line 112
    invoke-static {p1}, Lcom/wandoujia/api/proto/FavoriteSummary$Builder;->checkForNulls(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/api/proto/FavoriteSummary$Builder;->friends_avatar:Ljava/util/List;

    .line 113
    return-object p0
.end method

.method public final next_version(Ljava/lang/Long;)Lcom/wandoujia/api/proto/FavoriteSummary$Builder;
    .locals 0
    .parameter

    .prologue
    .line 135
    iput-object p1, p0, Lcom/wandoujia/api/proto/FavoriteSummary$Builder;->next_version:Ljava/lang/Long;

    .line 136
    return-object p0
.end method

.method public final total_count(Ljava/lang/Integer;)Lcom/wandoujia/api/proto/FavoriteSummary$Builder;
    .locals 0
    .parameter

    .prologue
    .line 117
    iput-object p1, p0, Lcom/wandoujia/api/proto/FavoriteSummary$Builder;->total_count:Ljava/lang/Integer;

    .line 118
    return-object p0
.end method

.method public final update_time(Ljava/lang/Long;)Lcom/wandoujia/api/proto/FavoriteSummary$Builder;
    .locals 0
    .parameter

    .prologue
    .line 143
    iput-object p1, p0, Lcom/wandoujia/api/proto/FavoriteSummary$Builder;->update_time:Ljava/lang/Long;

    .line 144
    return-object p0
.end method

.method public final version(Ljava/lang/Long;)Lcom/wandoujia/api/proto/FavoriteSummary$Builder;
    .locals 0
    .parameter

    .prologue
    .line 127
    iput-object p1, p0, Lcom/wandoujia/api/proto/FavoriteSummary$Builder;->version:Ljava/lang/Long;

    .line 128
    return-object p0
.end method
