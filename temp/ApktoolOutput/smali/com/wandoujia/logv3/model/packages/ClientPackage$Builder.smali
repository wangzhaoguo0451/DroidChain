.class public final Lcom/wandoujia/logv3/model/packages/ClientPackage$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "ClientPackage.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder",
        "<",
        "Lcom/wandoujia/logv3/model/packages/ClientPackage;",
        ">;"
    }
.end annotation


# instance fields
.field public create_date:Ljava/lang/Long;

.field public first_source:Ljava/lang/String;

.field public internal_version_code:Ljava/lang/Integer;

.field public language:Lcom/wandoujia/logv3/model/packages/ClientPackage$Language;

.field public last_source:Ljava/lang/String;

.field public locale:Ljava/lang/String;

.field public platform:Lcom/wandoujia/logv3/model/packages/ClientPackage$Platform;

.field public product:Lcom/wandoujia/logv3/model/packages/ClientPackage$Product;

.field public version_code:Ljava/lang/Integer;

.field public version_name:Ljava/lang/String;

.field public windows_source:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 164
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 165
    return-void
.end method

.method public constructor <init>(Lcom/wandoujia/logv3/model/packages/ClientPackage;)V
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
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/ClientPackage;->product:Lcom/wandoujia/logv3/model/packages/ClientPackage$Product;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/ClientPackage$Builder;->product:Lcom/wandoujia/logv3/model/packages/ClientPackage$Product;

    .line 171
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/ClientPackage;->platform:Lcom/wandoujia/logv3/model/packages/ClientPackage$Platform;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/ClientPackage$Builder;->platform:Lcom/wandoujia/logv3/model/packages/ClientPackage$Platform;

    .line 172
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/ClientPackage;->first_source:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/ClientPackage$Builder;->first_source:Ljava/lang/String;

    .line 173
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/ClientPackage;->last_source:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/ClientPackage$Builder;->last_source:Ljava/lang/String;

    .line 174
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/ClientPackage;->windows_source:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/ClientPackage$Builder;->windows_source:Ljava/lang/String;

    .line 175
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/ClientPackage;->version_name:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/ClientPackage$Builder;->version_name:Ljava/lang/String;

    .line 176
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/ClientPackage;->version_code:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/ClientPackage$Builder;->version_code:Ljava/lang/Integer;

    .line 177
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/ClientPackage;->locale:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/ClientPackage$Builder;->locale:Ljava/lang/String;

    .line 178
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/ClientPackage;->language:Lcom/wandoujia/logv3/model/packages/ClientPackage$Language;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/ClientPackage$Builder;->language:Lcom/wandoujia/logv3/model/packages/ClientPackage$Language;

    .line 179
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/ClientPackage;->internal_version_code:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/ClientPackage$Builder;->internal_version_code:Ljava/lang/Integer;

    .line 180
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/ClientPackage;->create_date:Ljava/lang/Long;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/ClientPackage$Builder;->create_date:Ljava/lang/Long;

    goto :goto_0
.end method


# virtual methods
.method public final bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .prologue
    .line 150
    invoke-virtual {p0}, Lcom/wandoujia/logv3/model/packages/ClientPackage$Builder;->build()Lcom/wandoujia/logv3/model/packages/ClientPackage;

    move-result-object v0

    return-object v0
.end method

.method public final build()Lcom/wandoujia/logv3/model/packages/ClientPackage;
    .locals 2

    .prologue
    .line 273
    new-instance v0, Lcom/wandoujia/logv3/model/packages/ClientPackage;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/wandoujia/logv3/model/packages/ClientPackage;-><init>(Lcom/wandoujia/logv3/model/packages/ClientPackage$Builder;Ld;)V

    return-object v0
.end method

.method public final create_date(Ljava/lang/Long;)Lcom/wandoujia/logv3/model/packages/ClientPackage$Builder;
    .locals 0
    .parameter

    .prologue
    .line 267
    iput-object p1, p0, Lcom/wandoujia/logv3/model/packages/ClientPackage$Builder;->create_date:Ljava/lang/Long;

    .line 268
    return-object p0
.end method

.method public final first_source(Ljava/lang/String;)Lcom/wandoujia/logv3/model/packages/ClientPackage$Builder;
    .locals 0
    .parameter

    .prologue
    .line 203
    iput-object p1, p0, Lcom/wandoujia/logv3/model/packages/ClientPackage$Builder;->first_source:Ljava/lang/String;

    .line 204
    return-object p0
.end method

.method public final internal_version_code(Ljava/lang/Integer;)Lcom/wandoujia/logv3/model/packages/ClientPackage$Builder;
    .locals 0
    .parameter

    .prologue
    .line 259
    iput-object p1, p0, Lcom/wandoujia/logv3/model/packages/ClientPackage$Builder;->internal_version_code:Ljava/lang/Integer;

    .line 260
    return-object p0
.end method

.method public final language(Lcom/wandoujia/logv3/model/packages/ClientPackage$Language;)Lcom/wandoujia/logv3/model/packages/ClientPackage$Builder;
    .locals 0
    .parameter

    .prologue
    .line 251
    iput-object p1, p0, Lcom/wandoujia/logv3/model/packages/ClientPackage$Builder;->language:Lcom/wandoujia/logv3/model/packages/ClientPackage$Language;

    .line 252
    return-object p0
.end method

.method public final last_source(Ljava/lang/String;)Lcom/wandoujia/logv3/model/packages/ClientPackage$Builder;
    .locals 0
    .parameter

    .prologue
    .line 211
    iput-object p1, p0, Lcom/wandoujia/logv3/model/packages/ClientPackage$Builder;->last_source:Ljava/lang/String;

    .line 212
    return-object p0
.end method

.method public final locale(Ljava/lang/String;)Lcom/wandoujia/logv3/model/packages/ClientPackage$Builder;
    .locals 0
    .parameter

    .prologue
    .line 243
    iput-object p1, p0, Lcom/wandoujia/logv3/model/packages/ClientPackage$Builder;->locale:Ljava/lang/String;

    .line 244
    return-object p0
.end method

.method public final platform(Lcom/wandoujia/logv3/model/packages/ClientPackage$Platform;)Lcom/wandoujia/logv3/model/packages/ClientPackage$Builder;
    .locals 0
    .parameter

    .prologue
    .line 195
    iput-object p1, p0, Lcom/wandoujia/logv3/model/packages/ClientPackage$Builder;->platform:Lcom/wandoujia/logv3/model/packages/ClientPackage$Platform;

    .line 196
    return-object p0
.end method

.method public final product(Lcom/wandoujia/logv3/model/packages/ClientPackage$Product;)Lcom/wandoujia/logv3/model/packages/ClientPackage$Builder;
    .locals 0
    .parameter

    .prologue
    .line 187
    iput-object p1, p0, Lcom/wandoujia/logv3/model/packages/ClientPackage$Builder;->product:Lcom/wandoujia/logv3/model/packages/ClientPackage$Product;

    .line 188
    return-object p0
.end method

.method public final version_code(Ljava/lang/Integer;)Lcom/wandoujia/logv3/model/packages/ClientPackage$Builder;
    .locals 0
    .parameter

    .prologue
    .line 235
    iput-object p1, p0, Lcom/wandoujia/logv3/model/packages/ClientPackage$Builder;->version_code:Ljava/lang/Integer;

    .line 236
    return-object p0
.end method

.method public final version_name(Ljava/lang/String;)Lcom/wandoujia/logv3/model/packages/ClientPackage$Builder;
    .locals 0
    .parameter

    .prologue
    .line 227
    iput-object p1, p0, Lcom/wandoujia/logv3/model/packages/ClientPackage$Builder;->version_name:Ljava/lang/String;

    .line 228
    return-object p0
.end method

.method public final windows_source(Ljava/lang/String;)Lcom/wandoujia/logv3/model/packages/ClientPackage$Builder;
    .locals 0
    .parameter

    .prologue
    .line 219
    iput-object p1, p0, Lcom/wandoujia/logv3/model/packages/ClientPackage$Builder;->windows_source:Ljava/lang/String;

    .line 220
    return-object p0
.end method
