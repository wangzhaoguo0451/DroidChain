.class public final Lcom/wandoujia/api/proto/HttpResponse$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "HttpResponse.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder",
        "<",
        "Lcom/wandoujia/api/proto/HttpResponse;",
        ">;"
    }
.end annotation


# instance fields
.field public entity:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/api/proto/Entity;",
            ">;"
        }
    .end annotation
.end field

.field public favor_head:Ljava/lang/Long;

.field public favor_next_head:Ljava/lang/Long;

.field public has_more:Ljava/lang/Boolean;

.field public next_url:Ljava/lang/String;

.field public pb_version:Ljava/lang/Integer;

.field public pre_url:Ljava/lang/String;

.field public session_id:Ljava/lang/Long;

.field public status:Ljava/lang/Integer;

.field public timestamp:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 154
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 155
    return-void
.end method

.method public constructor <init>(Lcom/wandoujia/api/proto/HttpResponse;)V
    .locals 1
    .parameter

    .prologue
    .line 158
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message$Builder;-><init>(Lcom/squareup/wire/Message;)V

    .line 159
    if-nez p1, :cond_0

    .line 170
    :goto_0
    return-void

    .line 160
    :cond_0
    iget-object v0, p1, Lcom/wandoujia/api/proto/HttpResponse;->next_url:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/api/proto/HttpResponse$Builder;->next_url:Ljava/lang/String;

    .line 161
    iget-object v0, p1, Lcom/wandoujia/api/proto/HttpResponse;->pre_url:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/api/proto/HttpResponse$Builder;->pre_url:Ljava/lang/String;

    .line 162
    iget-object v0, p1, Lcom/wandoujia/api/proto/HttpResponse;->has_more:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/wandoujia/api/proto/HttpResponse$Builder;->has_more:Ljava/lang/Boolean;

    .line 163
    iget-object v0, p1, Lcom/wandoujia/api/proto/HttpResponse;->pb_version:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/wandoujia/api/proto/HttpResponse$Builder;->pb_version:Ljava/lang/Integer;

    .line 164
    iget-object v0, p1, Lcom/wandoujia/api/proto/HttpResponse;->session_id:Ljava/lang/Long;

    iput-object v0, p0, Lcom/wandoujia/api/proto/HttpResponse$Builder;->session_id:Ljava/lang/Long;

    .line 165
    iget-object v0, p1, Lcom/wandoujia/api/proto/HttpResponse;->status:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/wandoujia/api/proto/HttpResponse$Builder;->status:Ljava/lang/Integer;

    .line 166
    iget-object v0, p1, Lcom/wandoujia/api/proto/HttpResponse;->entity:Ljava/util/List;

    #calls: Lcom/wandoujia/api/proto/HttpResponse;->copyOf(Ljava/util/List;)Ljava/util/List;
    invoke-static {v0}, Lcom/wandoujia/api/proto/HttpResponse;->access$000(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/api/proto/HttpResponse$Builder;->entity:Ljava/util/List;

    .line 167
    iget-object v0, p1, Lcom/wandoujia/api/proto/HttpResponse;->favor_head:Ljava/lang/Long;

    iput-object v0, p0, Lcom/wandoujia/api/proto/HttpResponse$Builder;->favor_head:Ljava/lang/Long;

    .line 168
    iget-object v0, p1, Lcom/wandoujia/api/proto/HttpResponse;->favor_next_head:Ljava/lang/Long;

    iput-object v0, p0, Lcom/wandoujia/api/proto/HttpResponse$Builder;->favor_next_head:Ljava/lang/Long;

    .line 169
    iget-object v0, p1, Lcom/wandoujia/api/proto/HttpResponse;->timestamp:Ljava/lang/Long;

    iput-object v0, p0, Lcom/wandoujia/api/proto/HttpResponse$Builder;->timestamp:Ljava/lang/Long;

    goto :goto_0
.end method


# virtual methods
.method public final bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .prologue
    .line 141
    invoke-virtual {p0}, Lcom/wandoujia/api/proto/HttpResponse$Builder;->build()Lcom/wandoujia/api/proto/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method public final build()Lcom/wandoujia/api/proto/HttpResponse;
    .locals 2

    .prologue
    .line 254
    invoke-virtual {p0}, Lcom/wandoujia/api/proto/HttpResponse$Builder;->checkRequiredFields()V

    .line 255
    new-instance v0, Lcom/wandoujia/api/proto/HttpResponse;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/wandoujia/api/proto/HttpResponse;-><init>(Lcom/wandoujia/api/proto/HttpResponse$Builder;Ld;)V

    return-object v0
.end method

.method public final entity(Ljava/util/List;)Lcom/wandoujia/api/proto/HttpResponse$Builder;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/api/proto/Entity;",
            ">;)",
            "Lcom/wandoujia/api/proto/HttpResponse$Builder;"
        }
    .end annotation

    .prologue
    .line 224
    invoke-static {p1}, Lcom/wandoujia/api/proto/HttpResponse$Builder;->checkForNulls(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/api/proto/HttpResponse$Builder;->entity:Ljava/util/List;

    .line 225
    return-object p0
.end method

.method public final favor_head(Ljava/lang/Long;)Lcom/wandoujia/api/proto/HttpResponse$Builder;
    .locals 0
    .parameter

    .prologue
    .line 232
    iput-object p1, p0, Lcom/wandoujia/api/proto/HttpResponse$Builder;->favor_head:Ljava/lang/Long;

    .line 233
    return-object p0
.end method

.method public final favor_next_head(Ljava/lang/Long;)Lcom/wandoujia/api/proto/HttpResponse$Builder;
    .locals 0
    .parameter

    .prologue
    .line 240
    iput-object p1, p0, Lcom/wandoujia/api/proto/HttpResponse$Builder;->favor_next_head:Ljava/lang/Long;

    .line 241
    return-object p0
.end method

.method public final has_more(Ljava/lang/Boolean;)Lcom/wandoujia/api/proto/HttpResponse$Builder;
    .locals 0
    .parameter

    .prologue
    .line 192
    iput-object p1, p0, Lcom/wandoujia/api/proto/HttpResponse$Builder;->has_more:Ljava/lang/Boolean;

    .line 193
    return-object p0
.end method

.method public final next_url(Ljava/lang/String;)Lcom/wandoujia/api/proto/HttpResponse$Builder;
    .locals 0
    .parameter

    .prologue
    .line 176
    iput-object p1, p0, Lcom/wandoujia/api/proto/HttpResponse$Builder;->next_url:Ljava/lang/String;

    .line 177
    return-object p0
.end method

.method public final pb_version(Ljava/lang/Integer;)Lcom/wandoujia/api/proto/HttpResponse$Builder;
    .locals 0
    .parameter

    .prologue
    .line 200
    iput-object p1, p0, Lcom/wandoujia/api/proto/HttpResponse$Builder;->pb_version:Ljava/lang/Integer;

    .line 201
    return-object p0
.end method

.method public final pre_url(Ljava/lang/String;)Lcom/wandoujia/api/proto/HttpResponse$Builder;
    .locals 0
    .parameter

    .prologue
    .line 184
    iput-object p1, p0, Lcom/wandoujia/api/proto/HttpResponse$Builder;->pre_url:Ljava/lang/String;

    .line 185
    return-object p0
.end method

.method public final session_id(Ljava/lang/Long;)Lcom/wandoujia/api/proto/HttpResponse$Builder;
    .locals 0
    .parameter

    .prologue
    .line 208
    iput-object p1, p0, Lcom/wandoujia/api/proto/HttpResponse$Builder;->session_id:Ljava/lang/Long;

    .line 209
    return-object p0
.end method

.method public final status(Ljava/lang/Integer;)Lcom/wandoujia/api/proto/HttpResponse$Builder;
    .locals 0
    .parameter

    .prologue
    .line 216
    iput-object p1, p0, Lcom/wandoujia/api/proto/HttpResponse$Builder;->status:Ljava/lang/Integer;

    .line 217
    return-object p0
.end method

.method public final timestamp(Ljava/lang/Long;)Lcom/wandoujia/api/proto/HttpResponse$Builder;
    .locals 0
    .parameter

    .prologue
    .line 248
    iput-object p1, p0, Lcom/wandoujia/api/proto/HttpResponse$Builder;->timestamp:Ljava/lang/Long;

    .line 249
    return-object p0
.end method
