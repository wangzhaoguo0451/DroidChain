.class public final Lcom/wandoujia/api/proto/ApkDetail$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "ApkDetail.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder",
        "<",
        "Lcom/wandoujia/api/proto/ApkDetail;",
        ">;"
    }
.end annotation


# instance fields
.field public ads_type:Ljava/lang/String;

.field public beta:Ljava/lang/Boolean;

.field public bytes_:Ljava/lang/Integer;

.field public compatible:Ljava/lang/Integer;

.field public creation:Ljava/lang/Long;

.field public dangerous_permission:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public download_url:Lcom/wandoujia/api/proto/DownloadUrl;

.field public incompatible_detail:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public md5:Ljava/lang/String;

.field public paid_type:Ljava/lang/String;

.field public permission:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public permission_group:Ljava/lang/String;

.field public permission_level:Ljava/lang/String;

.field public resolution:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public security_detail:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/api/proto/SecurityInfo;",
            ">;"
        }
    .end annotation
.end field

.field public security_status:Ljava/lang/String;

.field public size:Ljava/lang/String;

.field public superior:Ljava/lang/Integer;

.field public verified:Ljava/lang/Integer;

.field public version_code:Ljava/lang/Integer;

.field public version_name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 209
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 210
    return-void
.end method

.method public constructor <init>(Lcom/wandoujia/api/proto/ApkDetail;)V
    .locals 1
    .parameter

    .prologue
    .line 213
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message$Builder;-><init>(Lcom/squareup/wire/Message;)V

    .line 214
    if-nez p1, :cond_0

    .line 236
    :goto_0
    return-void

    .line 215
    :cond_0
    iget-object v0, p1, Lcom/wandoujia/api/proto/ApkDetail;->ads_type:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/api/proto/ApkDetail$Builder;->ads_type:Ljava/lang/String;

    .line 216
    iget-object v0, p1, Lcom/wandoujia/api/proto/ApkDetail;->beta:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/wandoujia/api/proto/ApkDetail$Builder;->beta:Ljava/lang/Boolean;

    .line 217
    iget-object v0, p1, Lcom/wandoujia/api/proto/ApkDetail;->bytes_:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/wandoujia/api/proto/ApkDetail$Builder;->bytes_:Ljava/lang/Integer;

    .line 218
    iget-object v0, p1, Lcom/wandoujia/api/proto/ApkDetail;->download_url:Lcom/wandoujia/api/proto/DownloadUrl;

    iput-object v0, p0, Lcom/wandoujia/api/proto/ApkDetail$Builder;->download_url:Lcom/wandoujia/api/proto/DownloadUrl;

    .line 219
    iget-object v0, p1, Lcom/wandoujia/api/proto/ApkDetail;->size:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/api/proto/ApkDetail$Builder;->size:Ljava/lang/String;

    .line 220
    iget-object v0, p1, Lcom/wandoujia/api/proto/ApkDetail;->version_code:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/wandoujia/api/proto/ApkDetail$Builder;->version_code:Ljava/lang/Integer;

    .line 221
    iget-object v0, p1, Lcom/wandoujia/api/proto/ApkDetail;->version_name:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/api/proto/ApkDetail$Builder;->version_name:Ljava/lang/String;

    .line 222
    iget-object v0, p1, Lcom/wandoujia/api/proto/ApkDetail;->security_status:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/api/proto/ApkDetail$Builder;->security_status:Ljava/lang/String;

    .line 223
    iget-object v0, p1, Lcom/wandoujia/api/proto/ApkDetail;->md5:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/api/proto/ApkDetail$Builder;->md5:Ljava/lang/String;

    .line 224
    iget-object v0, p1, Lcom/wandoujia/api/proto/ApkDetail;->security_detail:Ljava/util/List;

    #calls: Lcom/wandoujia/api/proto/ApkDetail;->copyOf(Ljava/util/List;)Ljava/util/List;
    invoke-static {v0}, Lcom/wandoujia/api/proto/ApkDetail;->access$000(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/api/proto/ApkDetail$Builder;->security_detail:Ljava/util/List;

    .line 225
    iget-object v0, p1, Lcom/wandoujia/api/proto/ApkDetail;->resolution:Ljava/util/List;

    #calls: Lcom/wandoujia/api/proto/ApkDetail;->copyOf(Ljava/util/List;)Ljava/util/List;
    invoke-static {v0}, Lcom/wandoujia/api/proto/ApkDetail;->access$100(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/api/proto/ApkDetail$Builder;->resolution:Ljava/util/List;

    .line 226
    iget-object v0, p1, Lcom/wandoujia/api/proto/ApkDetail;->dangerous_permission:Ljava/util/List;

    #calls: Lcom/wandoujia/api/proto/ApkDetail;->copyOf(Ljava/util/List;)Ljava/util/List;
    invoke-static {v0}, Lcom/wandoujia/api/proto/ApkDetail;->access$200(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/api/proto/ApkDetail$Builder;->dangerous_permission:Ljava/util/List;

    .line 227
    iget-object v0, p1, Lcom/wandoujia/api/proto/ApkDetail;->permission:Ljava/util/List;

    #calls: Lcom/wandoujia/api/proto/ApkDetail;->copyOf(Ljava/util/List;)Ljava/util/List;
    invoke-static {v0}, Lcom/wandoujia/api/proto/ApkDetail;->access$300(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/api/proto/ApkDetail$Builder;->permission:Ljava/util/List;

    .line 228
    iget-object v0, p1, Lcom/wandoujia/api/proto/ApkDetail;->permission_level:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/api/proto/ApkDetail$Builder;->permission_level:Ljava/lang/String;

    .line 229
    iget-object v0, p1, Lcom/wandoujia/api/proto/ApkDetail;->verified:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/wandoujia/api/proto/ApkDetail$Builder;->verified:Ljava/lang/Integer;

    .line 230
    iget-object v0, p1, Lcom/wandoujia/api/proto/ApkDetail;->superior:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/wandoujia/api/proto/ApkDetail$Builder;->superior:Ljava/lang/Integer;

    .line 231
    iget-object v0, p1, Lcom/wandoujia/api/proto/ApkDetail;->compatible:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/wandoujia/api/proto/ApkDetail$Builder;->compatible:Ljava/lang/Integer;

    .line 232
    iget-object v0, p1, Lcom/wandoujia/api/proto/ApkDetail;->incompatible_detail:Ljava/util/List;

    #calls: Lcom/wandoujia/api/proto/ApkDetail;->copyOf(Ljava/util/List;)Ljava/util/List;
    invoke-static {v0}, Lcom/wandoujia/api/proto/ApkDetail;->access$400(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/api/proto/ApkDetail$Builder;->incompatible_detail:Ljava/util/List;

    .line 233
    iget-object v0, p1, Lcom/wandoujia/api/proto/ApkDetail;->paid_type:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/api/proto/ApkDetail$Builder;->paid_type:Ljava/lang/String;

    .line 234
    iget-object v0, p1, Lcom/wandoujia/api/proto/ApkDetail;->creation:Ljava/lang/Long;

    iput-object v0, p0, Lcom/wandoujia/api/proto/ApkDetail$Builder;->creation:Ljava/lang/Long;

    .line 235
    iget-object v0, p1, Lcom/wandoujia/api/proto/ApkDetail;->permission_group:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/api/proto/ApkDetail$Builder;->permission_group:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public final ads_type(Ljava/lang/String;)Lcom/wandoujia/api/proto/ApkDetail$Builder;
    .locals 0
    .parameter

    .prologue
    .line 239
    iput-object p1, p0, Lcom/wandoujia/api/proto/ApkDetail$Builder;->ads_type:Ljava/lang/String;

    .line 240
    return-object p0
.end method

.method public final beta(Ljava/lang/Boolean;)Lcom/wandoujia/api/proto/ApkDetail$Builder;
    .locals 0
    .parameter

    .prologue
    .line 244
    iput-object p1, p0, Lcom/wandoujia/api/proto/ApkDetail$Builder;->beta:Ljava/lang/Boolean;

    .line 245
    return-object p0
.end method

.method public final bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .prologue
    .line 185
    invoke-virtual {p0}, Lcom/wandoujia/api/proto/ApkDetail$Builder;->build()Lcom/wandoujia/api/proto/ApkDetail;

    move-result-object v0

    return-object v0
.end method

.method public final build()Lcom/wandoujia/api/proto/ApkDetail;
    .locals 2

    .prologue
    .line 345
    new-instance v0, Lcom/wandoujia/api/proto/ApkDetail;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/wandoujia/api/proto/ApkDetail;-><init>(Lcom/wandoujia/api/proto/ApkDetail$Builder;Ld;)V

    return-object v0
.end method

.method public final bytes_(Ljava/lang/Integer;)Lcom/wandoujia/api/proto/ApkDetail$Builder;
    .locals 0
    .parameter

    .prologue
    .line 249
    iput-object p1, p0, Lcom/wandoujia/api/proto/ApkDetail$Builder;->bytes_:Ljava/lang/Integer;

    .line 250
    return-object p0
.end method

.method public final compatible(Ljava/lang/Integer;)Lcom/wandoujia/api/proto/ApkDetail$Builder;
    .locals 0
    .parameter

    .prologue
    .line 319
    iput-object p1, p0, Lcom/wandoujia/api/proto/ApkDetail$Builder;->compatible:Ljava/lang/Integer;

    .line 320
    return-object p0
.end method

.method public final creation(Ljava/lang/Long;)Lcom/wandoujia/api/proto/ApkDetail$Builder;
    .locals 0
    .parameter

    .prologue
    .line 334
    iput-object p1, p0, Lcom/wandoujia/api/proto/ApkDetail$Builder;->creation:Ljava/lang/Long;

    .line 335
    return-object p0
.end method

.method public final dangerous_permission(Ljava/util/List;)Lcom/wandoujia/api/proto/ApkDetail$Builder;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/wandoujia/api/proto/ApkDetail$Builder;"
        }
    .end annotation

    .prologue
    .line 294
    invoke-static {p1}, Lcom/wandoujia/api/proto/ApkDetail$Builder;->checkForNulls(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/api/proto/ApkDetail$Builder;->dangerous_permission:Ljava/util/List;

    .line 295
    return-object p0
.end method

.method public final download_url(Lcom/wandoujia/api/proto/DownloadUrl;)Lcom/wandoujia/api/proto/ApkDetail$Builder;
    .locals 0
    .parameter

    .prologue
    .line 254
    iput-object p1, p0, Lcom/wandoujia/api/proto/ApkDetail$Builder;->download_url:Lcom/wandoujia/api/proto/DownloadUrl;

    .line 255
    return-object p0
.end method

.method public final incompatible_detail(Ljava/util/List;)Lcom/wandoujia/api/proto/ApkDetail$Builder;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/wandoujia/api/proto/ApkDetail$Builder;"
        }
    .end annotation

    .prologue
    .line 324
    invoke-static {p1}, Lcom/wandoujia/api/proto/ApkDetail$Builder;->checkForNulls(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/api/proto/ApkDetail$Builder;->incompatible_detail:Ljava/util/List;

    .line 325
    return-object p0
.end method

.method public final md5(Ljava/lang/String;)Lcom/wandoujia/api/proto/ApkDetail$Builder;
    .locals 0
    .parameter

    .prologue
    .line 279
    iput-object p1, p0, Lcom/wandoujia/api/proto/ApkDetail$Builder;->md5:Ljava/lang/String;

    .line 280
    return-object p0
.end method

.method public final paid_type(Ljava/lang/String;)Lcom/wandoujia/api/proto/ApkDetail$Builder;
    .locals 0
    .parameter

    .prologue
    .line 329
    iput-object p1, p0, Lcom/wandoujia/api/proto/ApkDetail$Builder;->paid_type:Ljava/lang/String;

    .line 330
    return-object p0
.end method

.method public final permission(Ljava/util/List;)Lcom/wandoujia/api/proto/ApkDetail$Builder;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/wandoujia/api/proto/ApkDetail$Builder;"
        }
    .end annotation

    .prologue
    .line 299
    invoke-static {p1}, Lcom/wandoujia/api/proto/ApkDetail$Builder;->checkForNulls(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/api/proto/ApkDetail$Builder;->permission:Ljava/util/List;

    .line 300
    return-object p0
.end method

.method public final permission_group(Ljava/lang/String;)Lcom/wandoujia/api/proto/ApkDetail$Builder;
    .locals 0
    .parameter

    .prologue
    .line 339
    iput-object p1, p0, Lcom/wandoujia/api/proto/ApkDetail$Builder;->permission_group:Ljava/lang/String;

    .line 340
    return-object p0
.end method

.method public final permission_level(Ljava/lang/String;)Lcom/wandoujia/api/proto/ApkDetail$Builder;
    .locals 0
    .parameter

    .prologue
    .line 304
    iput-object p1, p0, Lcom/wandoujia/api/proto/ApkDetail$Builder;->permission_level:Ljava/lang/String;

    .line 305
    return-object p0
.end method

.method public final resolution(Ljava/util/List;)Lcom/wandoujia/api/proto/ApkDetail$Builder;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/wandoujia/api/proto/ApkDetail$Builder;"
        }
    .end annotation

    .prologue
    .line 289
    invoke-static {p1}, Lcom/wandoujia/api/proto/ApkDetail$Builder;->checkForNulls(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/api/proto/ApkDetail$Builder;->resolution:Ljava/util/List;

    .line 290
    return-object p0
.end method

.method public final security_detail(Ljava/util/List;)Lcom/wandoujia/api/proto/ApkDetail$Builder;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/api/proto/SecurityInfo;",
            ">;)",
            "Lcom/wandoujia/api/proto/ApkDetail$Builder;"
        }
    .end annotation

    .prologue
    .line 284
    invoke-static {p1}, Lcom/wandoujia/api/proto/ApkDetail$Builder;->checkForNulls(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/api/proto/ApkDetail$Builder;->security_detail:Ljava/util/List;

    .line 285
    return-object p0
.end method

.method public final security_status(Ljava/lang/String;)Lcom/wandoujia/api/proto/ApkDetail$Builder;
    .locals 0
    .parameter

    .prologue
    .line 274
    iput-object p1, p0, Lcom/wandoujia/api/proto/ApkDetail$Builder;->security_status:Ljava/lang/String;

    .line 275
    return-object p0
.end method

.method public final size(Ljava/lang/String;)Lcom/wandoujia/api/proto/ApkDetail$Builder;
    .locals 0
    .parameter

    .prologue
    .line 259
    iput-object p1, p0, Lcom/wandoujia/api/proto/ApkDetail$Builder;->size:Ljava/lang/String;

    .line 260
    return-object p0
.end method

.method public final superior(Ljava/lang/Integer;)Lcom/wandoujia/api/proto/ApkDetail$Builder;
    .locals 0
    .parameter

    .prologue
    .line 314
    iput-object p1, p0, Lcom/wandoujia/api/proto/ApkDetail$Builder;->superior:Ljava/lang/Integer;

    .line 315
    return-object p0
.end method

.method public final verified(Ljava/lang/Integer;)Lcom/wandoujia/api/proto/ApkDetail$Builder;
    .locals 0
    .parameter

    .prologue
    .line 309
    iput-object p1, p0, Lcom/wandoujia/api/proto/ApkDetail$Builder;->verified:Ljava/lang/Integer;

    .line 310
    return-object p0
.end method

.method public final version_code(Ljava/lang/Integer;)Lcom/wandoujia/api/proto/ApkDetail$Builder;
    .locals 0
    .parameter

    .prologue
    .line 264
    iput-object p1, p0, Lcom/wandoujia/api/proto/ApkDetail$Builder;->version_code:Ljava/lang/Integer;

    .line 265
    return-object p0
.end method

.method public final version_name(Ljava/lang/String;)Lcom/wandoujia/api/proto/ApkDetail$Builder;
    .locals 0
    .parameter

    .prologue
    .line 269
    iput-object p1, p0, Lcom/wandoujia/api/proto/ApkDetail$Builder;->version_name:Ljava/lang/String;

    .line 270
    return-object p0
.end method
