.class public final Lcom/wandoujia/logv3/model/packages/DownloadPackage$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "DownloadPackage.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder",
        "<",
        "Lcom/wandoujia/logv3/model/packages/DownloadPackage;",
        ">;"
    }
.end annotation


# instance fields
.field public client_name:Ljava/lang/String;

.field public cookies:Ljava/lang/String;

.field public download_size:Ljava/lang/Long;

.field public duration:Ljava/lang/Long;

.field public error_code:Ljava/lang/Integer;

.field public file_path:Ljava/lang/String;

.field public refer:Ljava/lang/String;

.field public status:Lcom/wandoujia/logv3/model/packages/DownloadPackage$Status;

.field public total_size:Ljava/lang/Long;

.field public track_info:Ljava/lang/String;

.field public type:Lcom/wandoujia/logv3/model/packages/DownloadPackage$Type;

.field public url:Ljava/lang/String;

.field public verify_digest:Ljava/lang/String;

.field public verify_type:Lcom/wandoujia/logv3/model/packages/DownloadPackage$VerifyType;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 194
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 195
    return-void
.end method

.method public constructor <init>(Lcom/wandoujia/logv3/model/packages/DownloadPackage;)V
    .locals 1
    .parameter

    .prologue
    .line 198
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message$Builder;-><init>(Lcom/squareup/wire/Message;)V

    .line 199
    if-nez p1, :cond_0

    .line 214
    :goto_0
    return-void

    .line 200
    :cond_0
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/DownloadPackage;->client_name:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/DownloadPackage$Builder;->client_name:Ljava/lang/String;

    .line 201
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/DownloadPackage;->url:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/DownloadPackage$Builder;->url:Ljava/lang/String;

    .line 202
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/DownloadPackage;->type:Lcom/wandoujia/logv3/model/packages/DownloadPackage$Type;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/DownloadPackage$Builder;->type:Lcom/wandoujia/logv3/model/packages/DownloadPackage$Type;

    .line 203
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/DownloadPackage;->cookies:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/DownloadPackage$Builder;->cookies:Ljava/lang/String;

    .line 204
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/DownloadPackage;->refer:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/DownloadPackage$Builder;->refer:Ljava/lang/String;

    .line 205
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/DownloadPackage;->file_path:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/DownloadPackage$Builder;->file_path:Ljava/lang/String;

    .line 206
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/DownloadPackage;->verify_type:Lcom/wandoujia/logv3/model/packages/DownloadPackage$VerifyType;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/DownloadPackage$Builder;->verify_type:Lcom/wandoujia/logv3/model/packages/DownloadPackage$VerifyType;

    .line 207
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/DownloadPackage;->verify_digest:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/DownloadPackage$Builder;->verify_digest:Ljava/lang/String;

    .line 208
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/DownloadPackage;->error_code:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/DownloadPackage$Builder;->error_code:Ljava/lang/Integer;

    .line 209
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/DownloadPackage;->total_size:Ljava/lang/Long;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/DownloadPackage$Builder;->total_size:Ljava/lang/Long;

    .line 210
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/DownloadPackage;->download_size:Ljava/lang/Long;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/DownloadPackage$Builder;->download_size:Ljava/lang/Long;

    .line 211
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/DownloadPackage;->duration:Ljava/lang/Long;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/DownloadPackage$Builder;->duration:Ljava/lang/Long;

    .line 212
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/DownloadPackage;->track_info:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/DownloadPackage$Builder;->track_info:Ljava/lang/String;

    .line 213
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/DownloadPackage;->status:Lcom/wandoujia/logv3/model/packages/DownloadPackage$Status;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/DownloadPackage$Builder;->status:Lcom/wandoujia/logv3/model/packages/DownloadPackage$Status;

    goto :goto_0
.end method


# virtual methods
.method public final bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .prologue
    .line 177
    invoke-virtual {p0}, Lcom/wandoujia/logv3/model/packages/DownloadPackage$Builder;->build()Lcom/wandoujia/logv3/model/packages/DownloadPackage;

    move-result-object v0

    return-object v0
.end method

.method public final build()Lcom/wandoujia/logv3/model/packages/DownloadPackage;
    .locals 2

    .prologue
    .line 330
    new-instance v0, Lcom/wandoujia/logv3/model/packages/DownloadPackage;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/wandoujia/logv3/model/packages/DownloadPackage;-><init>(Lcom/wandoujia/logv3/model/packages/DownloadPackage$Builder;Ld;)V

    return-object v0
.end method

.method public final client_name(Ljava/lang/String;)Lcom/wandoujia/logv3/model/packages/DownloadPackage$Builder;
    .locals 0
    .parameter

    .prologue
    .line 220
    iput-object p1, p0, Lcom/wandoujia/logv3/model/packages/DownloadPackage$Builder;->client_name:Ljava/lang/String;

    .line 221
    return-object p0
.end method

.method public final cookies(Ljava/lang/String;)Lcom/wandoujia/logv3/model/packages/DownloadPackage$Builder;
    .locals 0
    .parameter

    .prologue
    .line 244
    iput-object p1, p0, Lcom/wandoujia/logv3/model/packages/DownloadPackage$Builder;->cookies:Ljava/lang/String;

    .line 245
    return-object p0
.end method

.method public final download_size(Ljava/lang/Long;)Lcom/wandoujia/logv3/model/packages/DownloadPackage$Builder;
    .locals 0
    .parameter

    .prologue
    .line 300
    iput-object p1, p0, Lcom/wandoujia/logv3/model/packages/DownloadPackage$Builder;->download_size:Ljava/lang/Long;

    .line 301
    return-object p0
.end method

.method public final duration(Ljava/lang/Long;)Lcom/wandoujia/logv3/model/packages/DownloadPackage$Builder;
    .locals 0
    .parameter

    .prologue
    .line 308
    iput-object p1, p0, Lcom/wandoujia/logv3/model/packages/DownloadPackage$Builder;->duration:Ljava/lang/Long;

    .line 309
    return-object p0
.end method

.method public final error_code(Ljava/lang/Integer;)Lcom/wandoujia/logv3/model/packages/DownloadPackage$Builder;
    .locals 0
    .parameter

    .prologue
    .line 284
    iput-object p1, p0, Lcom/wandoujia/logv3/model/packages/DownloadPackage$Builder;->error_code:Ljava/lang/Integer;

    .line 285
    return-object p0
.end method

.method public final file_path(Ljava/lang/String;)Lcom/wandoujia/logv3/model/packages/DownloadPackage$Builder;
    .locals 0
    .parameter

    .prologue
    .line 260
    iput-object p1, p0, Lcom/wandoujia/logv3/model/packages/DownloadPackage$Builder;->file_path:Ljava/lang/String;

    .line 261
    return-object p0
.end method

.method public final refer(Ljava/lang/String;)Lcom/wandoujia/logv3/model/packages/DownloadPackage$Builder;
    .locals 0
    .parameter

    .prologue
    .line 252
    iput-object p1, p0, Lcom/wandoujia/logv3/model/packages/DownloadPackage$Builder;->refer:Ljava/lang/String;

    .line 253
    return-object p0
.end method

.method public final status(Lcom/wandoujia/logv3/model/packages/DownloadPackage$Status;)Lcom/wandoujia/logv3/model/packages/DownloadPackage$Builder;
    .locals 0
    .parameter

    .prologue
    .line 324
    iput-object p1, p0, Lcom/wandoujia/logv3/model/packages/DownloadPackage$Builder;->status:Lcom/wandoujia/logv3/model/packages/DownloadPackage$Status;

    .line 325
    return-object p0
.end method

.method public final total_size(Ljava/lang/Long;)Lcom/wandoujia/logv3/model/packages/DownloadPackage$Builder;
    .locals 0
    .parameter

    .prologue
    .line 292
    iput-object p1, p0, Lcom/wandoujia/logv3/model/packages/DownloadPackage$Builder;->total_size:Ljava/lang/Long;

    .line 293
    return-object p0
.end method

.method public final track_info(Ljava/lang/String;)Lcom/wandoujia/logv3/model/packages/DownloadPackage$Builder;
    .locals 0
    .parameter

    .prologue
    .line 316
    iput-object p1, p0, Lcom/wandoujia/logv3/model/packages/DownloadPackage$Builder;->track_info:Ljava/lang/String;

    .line 317
    return-object p0
.end method

.method public final type(Lcom/wandoujia/logv3/model/packages/DownloadPackage$Type;)Lcom/wandoujia/logv3/model/packages/DownloadPackage$Builder;
    .locals 0
    .parameter

    .prologue
    .line 236
    iput-object p1, p0, Lcom/wandoujia/logv3/model/packages/DownloadPackage$Builder;->type:Lcom/wandoujia/logv3/model/packages/DownloadPackage$Type;

    .line 237
    return-object p0
.end method

.method public final url(Ljava/lang/String;)Lcom/wandoujia/logv3/model/packages/DownloadPackage$Builder;
    .locals 0
    .parameter

    .prologue
    .line 228
    iput-object p1, p0, Lcom/wandoujia/logv3/model/packages/DownloadPackage$Builder;->url:Ljava/lang/String;

    .line 229
    return-object p0
.end method

.method public final verify_digest(Ljava/lang/String;)Lcom/wandoujia/logv3/model/packages/DownloadPackage$Builder;
    .locals 0
    .parameter

    .prologue
    .line 276
    iput-object p1, p0, Lcom/wandoujia/logv3/model/packages/DownloadPackage$Builder;->verify_digest:Ljava/lang/String;

    .line 277
    return-object p0
.end method

.method public final verify_type(Lcom/wandoujia/logv3/model/packages/DownloadPackage$VerifyType;)Lcom/wandoujia/logv3/model/packages/DownloadPackage$Builder;
    .locals 0
    .parameter

    .prologue
    .line 268
    iput-object p1, p0, Lcom/wandoujia/logv3/model/packages/DownloadPackage$Builder;->verify_type:Lcom/wandoujia/logv3/model/packages/DownloadPackage$VerifyType;

    .line 269
    return-object p0
.end method
