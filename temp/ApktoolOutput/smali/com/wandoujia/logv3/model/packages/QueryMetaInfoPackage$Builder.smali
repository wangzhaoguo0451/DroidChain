.class public final Lcom/wandoujia/logv3/model/packages/QueryMetaInfoPackage$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "QueryMetaInfoPackage.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder",
        "<",
        "Lcom/wandoujia/logv3/model/packages/QueryMetaInfoPackage;",
        ">;"
    }
.end annotation


# instance fields
.field public api_version:Ljava/lang/Integer;

.field public corrected_query:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public exp_id:Ljava/lang/Integer;

.field public from_package:Lcom/wandoujia/logv3/model/packages/ViewLogPackage;

.field public is_sensitive:Ljava/lang/Boolean;

.field public limit_size:Ljava/lang/Integer;

.field public mode:Ljava/lang/String;

.field public query:Ljava/lang/String;

.field public refer_package:Lcom/wandoujia/logv3/model/packages/ViewLogPackage;

.field public session_id:Ljava/lang/String;

.field public start_index:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 164
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 165
    return-void
.end method

.method public constructor <init>(Lcom/wandoujia/logv3/model/packages/QueryMetaInfoPackage;)V
    .locals 1
    .parameter

    .prologue
    .line 168
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message$Builder;-><init>(Lcom/squareup/wire/Message;)V

    .line 169
    if-nez p1, :cond_0

    .line 181
    :goto_0
    return-void

    .line 170
    :cond_0
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/QueryMetaInfoPackage;->query:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/QueryMetaInfoPackage$Builder;->query:Ljava/lang/String;

    .line 171
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/QueryMetaInfoPackage;->session_id:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/QueryMetaInfoPackage$Builder;->session_id:Ljava/lang/String;

    .line 172
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/QueryMetaInfoPackage;->api_version:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/QueryMetaInfoPackage$Builder;->api_version:Ljava/lang/Integer;

    .line 173
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/QueryMetaInfoPackage;->exp_id:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/QueryMetaInfoPackage$Builder;->exp_id:Ljava/lang/Integer;

    .line 174
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/QueryMetaInfoPackage;->start_index:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/QueryMetaInfoPackage$Builder;->start_index:Ljava/lang/Integer;

    .line 175
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/QueryMetaInfoPackage;->limit_size:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/QueryMetaInfoPackage$Builder;->limit_size:Ljava/lang/Integer;

    .line 176
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/QueryMetaInfoPackage;->mode:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/QueryMetaInfoPackage$Builder;->mode:Ljava/lang/String;

    .line 177
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/QueryMetaInfoPackage;->from_package:Lcom/wandoujia/logv3/model/packages/ViewLogPackage;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/QueryMetaInfoPackage$Builder;->from_package:Lcom/wandoujia/logv3/model/packages/ViewLogPackage;

    .line 178
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/QueryMetaInfoPackage;->refer_package:Lcom/wandoujia/logv3/model/packages/ViewLogPackage;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/QueryMetaInfoPackage$Builder;->refer_package:Lcom/wandoujia/logv3/model/packages/ViewLogPackage;

    .line 179
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/QueryMetaInfoPackage;->corrected_query:Ljava/util/List;

    #calls: Lcom/wandoujia/logv3/model/packages/QueryMetaInfoPackage;->copyOf(Ljava/util/List;)Ljava/util/List;
    invoke-static {v0}, Lcom/wandoujia/logv3/model/packages/QueryMetaInfoPackage;->access$000(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/QueryMetaInfoPackage$Builder;->corrected_query:Ljava/util/List;

    .line 180
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/QueryMetaInfoPackage;->is_sensitive:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/QueryMetaInfoPackage$Builder;->is_sensitive:Ljava/lang/Boolean;

    goto :goto_0
.end method


# virtual methods
.method public final api_version(Ljava/lang/Integer;)Lcom/wandoujia/logv3/model/packages/QueryMetaInfoPackage$Builder;
    .locals 0
    .parameter

    .prologue
    .line 203
    iput-object p1, p0, Lcom/wandoujia/logv3/model/packages/QueryMetaInfoPackage$Builder;->api_version:Ljava/lang/Integer;

    .line 204
    return-object p0
.end method

.method public final bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .prologue
    .line 150
    invoke-virtual {p0}, Lcom/wandoujia/logv3/model/packages/QueryMetaInfoPackage$Builder;->build()Lcom/wandoujia/logv3/model/packages/QueryMetaInfoPackage;

    move-result-object v0

    return-object v0
.end method

.method public final build()Lcom/wandoujia/logv3/model/packages/QueryMetaInfoPackage;
    .locals 2

    .prologue
    .line 273
    invoke-virtual {p0}, Lcom/wandoujia/logv3/model/packages/QueryMetaInfoPackage$Builder;->checkRequiredFields()V

    .line 274
    new-instance v0, Lcom/wandoujia/logv3/model/packages/QueryMetaInfoPackage;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/wandoujia/logv3/model/packages/QueryMetaInfoPackage;-><init>(Lcom/wandoujia/logv3/model/packages/QueryMetaInfoPackage$Builder;Ld;)V

    return-object v0
.end method

.method public final corrected_query(Ljava/util/List;)Lcom/wandoujia/logv3/model/packages/QueryMetaInfoPackage$Builder;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/wandoujia/logv3/model/packages/QueryMetaInfoPackage$Builder;"
        }
    .end annotation

    .prologue
    .line 259
    invoke-static {p1}, Lcom/wandoujia/logv3/model/packages/QueryMetaInfoPackage$Builder;->checkForNulls(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/QueryMetaInfoPackage$Builder;->corrected_query:Ljava/util/List;

    .line 260
    return-object p0
.end method

.method public final exp_id(Ljava/lang/Integer;)Lcom/wandoujia/logv3/model/packages/QueryMetaInfoPackage$Builder;
    .locals 0
    .parameter

    .prologue
    .line 211
    iput-object p1, p0, Lcom/wandoujia/logv3/model/packages/QueryMetaInfoPackage$Builder;->exp_id:Ljava/lang/Integer;

    .line 212
    return-object p0
.end method

.method public final from_package(Lcom/wandoujia/logv3/model/packages/ViewLogPackage;)Lcom/wandoujia/logv3/model/packages/QueryMetaInfoPackage$Builder;
    .locals 0
    .parameter

    .prologue
    .line 243
    iput-object p1, p0, Lcom/wandoujia/logv3/model/packages/QueryMetaInfoPackage$Builder;->from_package:Lcom/wandoujia/logv3/model/packages/ViewLogPackage;

    .line 244
    return-object p0
.end method

.method public final is_sensitive(Ljava/lang/Boolean;)Lcom/wandoujia/logv3/model/packages/QueryMetaInfoPackage$Builder;
    .locals 0
    .parameter

    .prologue
    .line 267
    iput-object p1, p0, Lcom/wandoujia/logv3/model/packages/QueryMetaInfoPackage$Builder;->is_sensitive:Ljava/lang/Boolean;

    .line 268
    return-object p0
.end method

.method public final limit_size(Ljava/lang/Integer;)Lcom/wandoujia/logv3/model/packages/QueryMetaInfoPackage$Builder;
    .locals 0
    .parameter

    .prologue
    .line 227
    iput-object p1, p0, Lcom/wandoujia/logv3/model/packages/QueryMetaInfoPackage$Builder;->limit_size:Ljava/lang/Integer;

    .line 228
    return-object p0
.end method

.method public final mode(Ljava/lang/String;)Lcom/wandoujia/logv3/model/packages/QueryMetaInfoPackage$Builder;
    .locals 0
    .parameter

    .prologue
    .line 235
    iput-object p1, p0, Lcom/wandoujia/logv3/model/packages/QueryMetaInfoPackage$Builder;->mode:Ljava/lang/String;

    .line 236
    return-object p0
.end method

.method public final query(Ljava/lang/String;)Lcom/wandoujia/logv3/model/packages/QueryMetaInfoPackage$Builder;
    .locals 0
    .parameter

    .prologue
    .line 187
    iput-object p1, p0, Lcom/wandoujia/logv3/model/packages/QueryMetaInfoPackage$Builder;->query:Ljava/lang/String;

    .line 188
    return-object p0
.end method

.method public final refer_package(Lcom/wandoujia/logv3/model/packages/ViewLogPackage;)Lcom/wandoujia/logv3/model/packages/QueryMetaInfoPackage$Builder;
    .locals 0
    .parameter

    .prologue
    .line 251
    iput-object p1, p0, Lcom/wandoujia/logv3/model/packages/QueryMetaInfoPackage$Builder;->refer_package:Lcom/wandoujia/logv3/model/packages/ViewLogPackage;

    .line 252
    return-object p0
.end method

.method public final session_id(Ljava/lang/String;)Lcom/wandoujia/logv3/model/packages/QueryMetaInfoPackage$Builder;
    .locals 0
    .parameter

    .prologue
    .line 195
    iput-object p1, p0, Lcom/wandoujia/logv3/model/packages/QueryMetaInfoPackage$Builder;->session_id:Ljava/lang/String;

    .line 196
    return-object p0
.end method

.method public final start_index(Ljava/lang/Integer;)Lcom/wandoujia/logv3/model/packages/QueryMetaInfoPackage$Builder;
    .locals 0
    .parameter

    .prologue
    .line 219
    iput-object p1, p0, Lcom/wandoujia/logv3/model/packages/QueryMetaInfoPackage$Builder;->start_index:Ljava/lang/Integer;

    .line 220
    return-object p0
.end method
