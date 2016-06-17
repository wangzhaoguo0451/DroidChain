.class public final Lcom/wandoujia/api/proto/PublisherDetail$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "PublisherDetail.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder",
        "<",
        "Lcom/wandoujia/api/proto/PublisherDetail;",
        ">;"
    }
.end annotation


# instance fields
.field public avatar:Ljava/lang/String;

.field public category:Lcom/wandoujia/api/proto/PublisherCategory;

.field public circleAvatar:Ljava/lang/String;

.field public createTime:Ljava/lang/Long;

.field public defaultSelected:Ljava/lang/Boolean;

.field public description:Ljava/lang/String;

.field public feedCount:Ljava/lang/Integer;

.field public fullDescription:Ljava/lang/String;

.field public id:Ljava/lang/String;

.field public nick:Ljava/lang/String;

.field public relatedApp:Lcom/wandoujia/api/proto/RelatedApp;

.field public subscribed:Ljava/lang/Boolean;

.field public subscribedCount:Ljava/lang/Integer;

.field public tags:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public type:Ljava/lang/String;

.field public uid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 168
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 169
    return-void
.end method

.method public constructor <init>(Lcom/wandoujia/api/proto/PublisherDetail;)V
    .locals 1
    .parameter

    .prologue
    .line 172
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message$Builder;-><init>(Lcom/squareup/wire/Message;)V

    .line 173
    if-nez p1, :cond_0

    .line 190
    :goto_0
    return-void

    .line 174
    :cond_0
    iget-object v0, p1, Lcom/wandoujia/api/proto/PublisherDetail;->subscribed:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/wandoujia/api/proto/PublisherDetail$Builder;->subscribed:Ljava/lang/Boolean;

    .line 175
    iget-object v0, p1, Lcom/wandoujia/api/proto/PublisherDetail;->type:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/api/proto/PublisherDetail$Builder;->type:Ljava/lang/String;

    .line 176
    iget-object v0, p1, Lcom/wandoujia/api/proto/PublisherDetail;->id:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/api/proto/PublisherDetail$Builder;->id:Ljava/lang/String;

    .line 177
    iget-object v0, p1, Lcom/wandoujia/api/proto/PublisherDetail;->uid:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/api/proto/PublisherDetail$Builder;->uid:Ljava/lang/String;

    .line 178
    iget-object v0, p1, Lcom/wandoujia/api/proto/PublisherDetail;->nick:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/api/proto/PublisherDetail$Builder;->nick:Ljava/lang/String;

    .line 179
    iget-object v0, p1, Lcom/wandoujia/api/proto/PublisherDetail;->avatar:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/api/proto/PublisherDetail$Builder;->avatar:Ljava/lang/String;

    .line 180
    iget-object v0, p1, Lcom/wandoujia/api/proto/PublisherDetail;->circleAvatar:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/api/proto/PublisherDetail$Builder;->circleAvatar:Ljava/lang/String;

    .line 181
    iget-object v0, p1, Lcom/wandoujia/api/proto/PublisherDetail;->description:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/api/proto/PublisherDetail$Builder;->description:Ljava/lang/String;

    .line 182
    iget-object v0, p1, Lcom/wandoujia/api/proto/PublisherDetail;->fullDescription:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/api/proto/PublisherDetail$Builder;->fullDescription:Ljava/lang/String;

    .line 183
    iget-object v0, p1, Lcom/wandoujia/api/proto/PublisherDetail;->subscribedCount:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/wandoujia/api/proto/PublisherDetail$Builder;->subscribedCount:Ljava/lang/Integer;

    .line 184
    iget-object v0, p1, Lcom/wandoujia/api/proto/PublisherDetail;->feedCount:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/wandoujia/api/proto/PublisherDetail$Builder;->feedCount:Ljava/lang/Integer;

    .line 185
    iget-object v0, p1, Lcom/wandoujia/api/proto/PublisherDetail;->defaultSelected:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/wandoujia/api/proto/PublisherDetail$Builder;->defaultSelected:Ljava/lang/Boolean;

    .line 186
    iget-object v0, p1, Lcom/wandoujia/api/proto/PublisherDetail;->createTime:Ljava/lang/Long;

    iput-object v0, p0, Lcom/wandoujia/api/proto/PublisherDetail$Builder;->createTime:Ljava/lang/Long;

    .line 187
    iget-object v0, p1, Lcom/wandoujia/api/proto/PublisherDetail;->category:Lcom/wandoujia/api/proto/PublisherCategory;

    iput-object v0, p0, Lcom/wandoujia/api/proto/PublisherDetail$Builder;->category:Lcom/wandoujia/api/proto/PublisherCategory;

    .line 188
    iget-object v0, p1, Lcom/wandoujia/api/proto/PublisherDetail;->relatedApp:Lcom/wandoujia/api/proto/RelatedApp;

    iput-object v0, p0, Lcom/wandoujia/api/proto/PublisherDetail$Builder;->relatedApp:Lcom/wandoujia/api/proto/RelatedApp;

    .line 189
    iget-object v0, p1, Lcom/wandoujia/api/proto/PublisherDetail;->tags:Ljava/util/List;

    #calls: Lcom/wandoujia/api/proto/PublisherDetail;->copyOf(Ljava/util/List;)Ljava/util/List;
    invoke-static {v0}, Lcom/wandoujia/api/proto/PublisherDetail;->access$000(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/api/proto/PublisherDetail$Builder;->tags:Ljava/util/List;

    goto :goto_0
.end method


# virtual methods
.method public final avatar(Ljava/lang/String;)Lcom/wandoujia/api/proto/PublisherDetail$Builder;
    .locals 0
    .parameter

    .prologue
    .line 218
    iput-object p1, p0, Lcom/wandoujia/api/proto/PublisherDetail$Builder;->avatar:Ljava/lang/String;

    .line 219
    return-object p0
.end method

.method public final bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .prologue
    .line 149
    invoke-virtual {p0}, Lcom/wandoujia/api/proto/PublisherDetail$Builder;->build()Lcom/wandoujia/api/proto/PublisherDetail;

    move-result-object v0

    return-object v0
.end method

.method public final build()Lcom/wandoujia/api/proto/PublisherDetail;
    .locals 2

    .prologue
    .line 274
    new-instance v0, Lcom/wandoujia/api/proto/PublisherDetail;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/wandoujia/api/proto/PublisherDetail;-><init>(Lcom/wandoujia/api/proto/PublisherDetail$Builder;Ld;)V

    return-object v0
.end method

.method public final category(Lcom/wandoujia/api/proto/PublisherCategory;)Lcom/wandoujia/api/proto/PublisherDetail$Builder;
    .locals 0
    .parameter

    .prologue
    .line 258
    iput-object p1, p0, Lcom/wandoujia/api/proto/PublisherDetail$Builder;->category:Lcom/wandoujia/api/proto/PublisherCategory;

    .line 259
    return-object p0
.end method

.method public final circleAvatar(Ljava/lang/String;)Lcom/wandoujia/api/proto/PublisherDetail$Builder;
    .locals 0
    .parameter

    .prologue
    .line 223
    iput-object p1, p0, Lcom/wandoujia/api/proto/PublisherDetail$Builder;->circleAvatar:Ljava/lang/String;

    .line 224
    return-object p0
.end method

.method public final createTime(Ljava/lang/Long;)Lcom/wandoujia/api/proto/PublisherDetail$Builder;
    .locals 0
    .parameter

    .prologue
    .line 253
    iput-object p1, p0, Lcom/wandoujia/api/proto/PublisherDetail$Builder;->createTime:Ljava/lang/Long;

    .line 254
    return-object p0
.end method

.method public final defaultSelected(Ljava/lang/Boolean;)Lcom/wandoujia/api/proto/PublisherDetail$Builder;
    .locals 0
    .parameter

    .prologue
    .line 248
    iput-object p1, p0, Lcom/wandoujia/api/proto/PublisherDetail$Builder;->defaultSelected:Ljava/lang/Boolean;

    .line 249
    return-object p0
.end method

.method public final description(Ljava/lang/String;)Lcom/wandoujia/api/proto/PublisherDetail$Builder;
    .locals 0
    .parameter

    .prologue
    .line 228
    iput-object p1, p0, Lcom/wandoujia/api/proto/PublisherDetail$Builder;->description:Ljava/lang/String;

    .line 229
    return-object p0
.end method

.method public final feedCount(Ljava/lang/Integer;)Lcom/wandoujia/api/proto/PublisherDetail$Builder;
    .locals 0
    .parameter

    .prologue
    .line 243
    iput-object p1, p0, Lcom/wandoujia/api/proto/PublisherDetail$Builder;->feedCount:Ljava/lang/Integer;

    .line 244
    return-object p0
.end method

.method public final fullDescription(Ljava/lang/String;)Lcom/wandoujia/api/proto/PublisherDetail$Builder;
    .locals 0
    .parameter

    .prologue
    .line 233
    iput-object p1, p0, Lcom/wandoujia/api/proto/PublisherDetail$Builder;->fullDescription:Ljava/lang/String;

    .line 234
    return-object p0
.end method

.method public final id(Ljava/lang/String;)Lcom/wandoujia/api/proto/PublisherDetail$Builder;
    .locals 0
    .parameter

    .prologue
    .line 203
    iput-object p1, p0, Lcom/wandoujia/api/proto/PublisherDetail$Builder;->id:Ljava/lang/String;

    .line 204
    return-object p0
.end method

.method public final nick(Ljava/lang/String;)Lcom/wandoujia/api/proto/PublisherDetail$Builder;
    .locals 0
    .parameter

    .prologue
    .line 213
    iput-object p1, p0, Lcom/wandoujia/api/proto/PublisherDetail$Builder;->nick:Ljava/lang/String;

    .line 214
    return-object p0
.end method

.method public final relatedApp(Lcom/wandoujia/api/proto/RelatedApp;)Lcom/wandoujia/api/proto/PublisherDetail$Builder;
    .locals 0
    .parameter

    .prologue
    .line 263
    iput-object p1, p0, Lcom/wandoujia/api/proto/PublisherDetail$Builder;->relatedApp:Lcom/wandoujia/api/proto/RelatedApp;

    .line 264
    return-object p0
.end method

.method public final subscribed(Ljava/lang/Boolean;)Lcom/wandoujia/api/proto/PublisherDetail$Builder;
    .locals 0
    .parameter

    .prologue
    .line 193
    iput-object p1, p0, Lcom/wandoujia/api/proto/PublisherDetail$Builder;->subscribed:Ljava/lang/Boolean;

    .line 194
    return-object p0
.end method

.method public final subscribedCount(Ljava/lang/Integer;)Lcom/wandoujia/api/proto/PublisherDetail$Builder;
    .locals 0
    .parameter

    .prologue
    .line 238
    iput-object p1, p0, Lcom/wandoujia/api/proto/PublisherDetail$Builder;->subscribedCount:Ljava/lang/Integer;

    .line 239
    return-object p0
.end method

.method public final tags(Ljava/util/List;)Lcom/wandoujia/api/proto/PublisherDetail$Builder;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/wandoujia/api/proto/PublisherDetail$Builder;"
        }
    .end annotation

    .prologue
    .line 268
    invoke-static {p1}, Lcom/wandoujia/api/proto/PublisherDetail$Builder;->checkForNulls(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/api/proto/PublisherDetail$Builder;->tags:Ljava/util/List;

    .line 269
    return-object p0
.end method

.method public final type(Ljava/lang/String;)Lcom/wandoujia/api/proto/PublisherDetail$Builder;
    .locals 0
    .parameter

    .prologue
    .line 198
    iput-object p1, p0, Lcom/wandoujia/api/proto/PublisherDetail$Builder;->type:Ljava/lang/String;

    .line 199
    return-object p0
.end method

.method public final uid(Ljava/lang/String;)Lcom/wandoujia/api/proto/PublisherDetail$Builder;
    .locals 0
    .parameter

    .prologue
    .line 208
    iput-object p1, p0, Lcom/wandoujia/api/proto/PublisherDetail$Builder;->uid:Ljava/lang/String;

    .line 209
    return-object p0
.end method
