.class public final Lcom/wandoujia/api/proto/ExtensionPack$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "ExtensionPack.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder",
        "<",
        "Lcom/wandoujia/api/proto/ExtensionPack;",
        ">;"
    }
.end annotation


# instance fields
.field public cpu_type:Ljava/lang/Integer;

.field public description:Ljava/lang/String;

.field public download_urls:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/api/proto/DownloadUrl;",
            ">;"
        }
    .end annotation
.end field

.field public dst_path:Ljava/lang/String;

.field public filepath:Ljava/lang/String;

.field public humansize:Ljava/lang/String;

.field public matched:Ljava/lang/Boolean;

.field public md5:Ljava/lang/String;

.field public pf5:Ljava/lang/String;

.field public size:Ljava/lang/Long;

.field public src_path:Ljava/lang/String;

.field public supported_cpu_types:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public type:Lcom/wandoujia/api/proto/ExtensionPack$PacketType;

.field public version_code:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 165
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 166
    return-void
.end method

.method public constructor <init>(Lcom/wandoujia/api/proto/ExtensionPack;)V
    .locals 1
    .parameter

    .prologue
    .line 169
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message$Builder;-><init>(Lcom/squareup/wire/Message;)V

    .line 170
    if-nez p1, :cond_0

    .line 185
    :goto_0
    return-void

    .line 171
    :cond_0
    iget-object v0, p1, Lcom/wandoujia/api/proto/ExtensionPack;->filepath:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/api/proto/ExtensionPack$Builder;->filepath:Ljava/lang/String;

    .line 172
    iget-object v0, p1, Lcom/wandoujia/api/proto/ExtensionPack;->humansize:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/api/proto/ExtensionPack$Builder;->humansize:Ljava/lang/String;

    .line 173
    iget-object v0, p1, Lcom/wandoujia/api/proto/ExtensionPack;->pf5:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/api/proto/ExtensionPack$Builder;->pf5:Ljava/lang/String;

    .line 174
    iget-object v0, p1, Lcom/wandoujia/api/proto/ExtensionPack;->size:Ljava/lang/Long;

    iput-object v0, p0, Lcom/wandoujia/api/proto/ExtensionPack$Builder;->size:Ljava/lang/Long;

    .line 175
    iget-object v0, p1, Lcom/wandoujia/api/proto/ExtensionPack;->version_code:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/wandoujia/api/proto/ExtensionPack$Builder;->version_code:Ljava/lang/Integer;

    .line 176
    iget-object v0, p1, Lcom/wandoujia/api/proto/ExtensionPack;->src_path:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/api/proto/ExtensionPack$Builder;->src_path:Ljava/lang/String;

    .line 177
    iget-object v0, p1, Lcom/wandoujia/api/proto/ExtensionPack;->dst_path:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/api/proto/ExtensionPack$Builder;->dst_path:Ljava/lang/String;

    .line 178
    iget-object v0, p1, Lcom/wandoujia/api/proto/ExtensionPack;->md5:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/api/proto/ExtensionPack$Builder;->md5:Ljava/lang/String;

    .line 179
    iget-object v0, p1, Lcom/wandoujia/api/proto/ExtensionPack;->description:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/api/proto/ExtensionPack$Builder;->description:Ljava/lang/String;

    .line 180
    iget-object v0, p1, Lcom/wandoujia/api/proto/ExtensionPack;->matched:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/wandoujia/api/proto/ExtensionPack$Builder;->matched:Ljava/lang/Boolean;

    .line 181
    iget-object v0, p1, Lcom/wandoujia/api/proto/ExtensionPack;->cpu_type:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/wandoujia/api/proto/ExtensionPack$Builder;->cpu_type:Ljava/lang/Integer;

    .line 182
    iget-object v0, p1, Lcom/wandoujia/api/proto/ExtensionPack;->type:Lcom/wandoujia/api/proto/ExtensionPack$PacketType;

    iput-object v0, p0, Lcom/wandoujia/api/proto/ExtensionPack$Builder;->type:Lcom/wandoujia/api/proto/ExtensionPack$PacketType;

    .line 183
    iget-object v0, p1, Lcom/wandoujia/api/proto/ExtensionPack;->download_urls:Ljava/util/List;

    #calls: Lcom/wandoujia/api/proto/ExtensionPack;->copyOf(Ljava/util/List;)Ljava/util/List;
    invoke-static {v0}, Lcom/wandoujia/api/proto/ExtensionPack;->access$000(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/api/proto/ExtensionPack$Builder;->download_urls:Ljava/util/List;

    .line 184
    iget-object v0, p1, Lcom/wandoujia/api/proto/ExtensionPack;->supported_cpu_types:Ljava/util/List;

    #calls: Lcom/wandoujia/api/proto/ExtensionPack;->copyOf(Ljava/util/List;)Ljava/util/List;
    invoke-static {v0}, Lcom/wandoujia/api/proto/ExtensionPack;->access$100(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/api/proto/ExtensionPack$Builder;->supported_cpu_types:Ljava/util/List;

    goto :goto_0
.end method


# virtual methods
.method public final bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .prologue
    .line 148
    invoke-virtual {p0}, Lcom/wandoujia/api/proto/ExtensionPack$Builder;->build()Lcom/wandoujia/api/proto/ExtensionPack;

    move-result-object v0

    return-object v0
.end method

.method public final build()Lcom/wandoujia/api/proto/ExtensionPack;
    .locals 2

    .prologue
    .line 268
    new-instance v0, Lcom/wandoujia/api/proto/ExtensionPack;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/wandoujia/api/proto/ExtensionPack;-><init>(Lcom/wandoujia/api/proto/ExtensionPack$Builder;Ld;)V

    return-object v0
.end method

.method public final cpu_type(Ljava/lang/Integer;)Lcom/wandoujia/api/proto/ExtensionPack$Builder;
    .locals 0
    .parameter

    .prologue
    .line 238
    iput-object p1, p0, Lcom/wandoujia/api/proto/ExtensionPack$Builder;->cpu_type:Ljava/lang/Integer;

    .line 239
    return-object p0
.end method

.method public final description(Ljava/lang/String;)Lcom/wandoujia/api/proto/ExtensionPack$Builder;
    .locals 0
    .parameter

    .prologue
    .line 228
    iput-object p1, p0, Lcom/wandoujia/api/proto/ExtensionPack$Builder;->description:Ljava/lang/String;

    .line 229
    return-object p0
.end method

.method public final download_urls(Ljava/util/List;)Lcom/wandoujia/api/proto/ExtensionPack$Builder;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/api/proto/DownloadUrl;",
            ">;)",
            "Lcom/wandoujia/api/proto/ExtensionPack$Builder;"
        }
    .end annotation

    .prologue
    .line 254
    invoke-static {p1}, Lcom/wandoujia/api/proto/ExtensionPack$Builder;->checkForNulls(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/api/proto/ExtensionPack$Builder;->download_urls:Ljava/util/List;

    .line 255
    return-object p0
.end method

.method public final dst_path(Ljava/lang/String;)Lcom/wandoujia/api/proto/ExtensionPack$Builder;
    .locals 0
    .parameter

    .prologue
    .line 218
    iput-object p1, p0, Lcom/wandoujia/api/proto/ExtensionPack$Builder;->dst_path:Ljava/lang/String;

    .line 219
    return-object p0
.end method

.method public final filepath(Ljava/lang/String;)Lcom/wandoujia/api/proto/ExtensionPack$Builder;
    .locals 0
    .parameter

    .prologue
    .line 188
    iput-object p1, p0, Lcom/wandoujia/api/proto/ExtensionPack$Builder;->filepath:Ljava/lang/String;

    .line 189
    return-object p0
.end method

.method public final humansize(Ljava/lang/String;)Lcom/wandoujia/api/proto/ExtensionPack$Builder;
    .locals 0
    .parameter

    .prologue
    .line 193
    iput-object p1, p0, Lcom/wandoujia/api/proto/ExtensionPack$Builder;->humansize:Ljava/lang/String;

    .line 194
    return-object p0
.end method

.method public final matched(Ljava/lang/Boolean;)Lcom/wandoujia/api/proto/ExtensionPack$Builder;
    .locals 0
    .parameter

    .prologue
    .line 233
    iput-object p1, p0, Lcom/wandoujia/api/proto/ExtensionPack$Builder;->matched:Ljava/lang/Boolean;

    .line 234
    return-object p0
.end method

.method public final md5(Ljava/lang/String;)Lcom/wandoujia/api/proto/ExtensionPack$Builder;
    .locals 0
    .parameter

    .prologue
    .line 223
    iput-object p1, p0, Lcom/wandoujia/api/proto/ExtensionPack$Builder;->md5:Ljava/lang/String;

    .line 224
    return-object p0
.end method

.method public final pf5(Ljava/lang/String;)Lcom/wandoujia/api/proto/ExtensionPack$Builder;
    .locals 0
    .parameter

    .prologue
    .line 198
    iput-object p1, p0, Lcom/wandoujia/api/proto/ExtensionPack$Builder;->pf5:Ljava/lang/String;

    .line 199
    return-object p0
.end method

.method public final size(Ljava/lang/Long;)Lcom/wandoujia/api/proto/ExtensionPack$Builder;
    .locals 0
    .parameter

    .prologue
    .line 203
    iput-object p1, p0, Lcom/wandoujia/api/proto/ExtensionPack$Builder;->size:Ljava/lang/Long;

    .line 204
    return-object p0
.end method

.method public final src_path(Ljava/lang/String;)Lcom/wandoujia/api/proto/ExtensionPack$Builder;
    .locals 0
    .parameter

    .prologue
    .line 213
    iput-object p1, p0, Lcom/wandoujia/api/proto/ExtensionPack$Builder;->src_path:Ljava/lang/String;

    .line 214
    return-object p0
.end method

.method public final supported_cpu_types(Ljava/util/List;)Lcom/wandoujia/api/proto/ExtensionPack$Builder;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/wandoujia/api/proto/ExtensionPack$Builder;"
        }
    .end annotation

    .prologue
    .line 262
    invoke-static {p1}, Lcom/wandoujia/api/proto/ExtensionPack$Builder;->checkForNulls(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/api/proto/ExtensionPack$Builder;->supported_cpu_types:Ljava/util/List;

    .line 263
    return-object p0
.end method

.method public final type(Lcom/wandoujia/api/proto/ExtensionPack$PacketType;)Lcom/wandoujia/api/proto/ExtensionPack$Builder;
    .locals 0
    .parameter

    .prologue
    .line 246
    iput-object p1, p0, Lcom/wandoujia/api/proto/ExtensionPack$Builder;->type:Lcom/wandoujia/api/proto/ExtensionPack$PacketType;

    .line 247
    return-object p0
.end method

.method public final version_code(Ljava/lang/Integer;)Lcom/wandoujia/api/proto/ExtensionPack$Builder;
    .locals 0
    .parameter

    .prologue
    .line 208
    iput-object p1, p0, Lcom/wandoujia/api/proto/ExtensionPack$Builder;->version_code:Ljava/lang/Integer;

    .line 209
    return-object p0
.end method
