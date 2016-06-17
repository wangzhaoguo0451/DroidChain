.class public final Lcom/wandoujia/logv3/model/packages/ResourcePackage$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "ResourcePackage.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder",
        "<",
        "Lcom/wandoujia/logv3/model/packages/ResourcePackage;",
        ">;"
    }
.end annotation


# instance fields
.field public app_uri:Ljava/lang/String;

.field public can_download:Ljava/lang/Boolean;

.field public identity:Ljava/lang/String;

.field public provider_name:Ljava/lang/String;

.field public sub_type:Ljava/lang/String;

.field public type:Lcom/wandoujia/logv3/model/packages/ResourcePackage$Type;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 108
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 109
    return-void
.end method

.method public constructor <init>(Lcom/wandoujia/logv3/model/packages/ResourcePackage;)V
    .locals 1
    .parameter

    .prologue
    .line 112
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message$Builder;-><init>(Lcom/squareup/wire/Message;)V

    .line 113
    if-nez p1, :cond_0

    .line 120
    :goto_0
    return-void

    .line 114
    :cond_0
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/ResourcePackage;->identity:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/ResourcePackage$Builder;->identity:Ljava/lang/String;

    .line 115
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/ResourcePackage;->type:Lcom/wandoujia/logv3/model/packages/ResourcePackage$Type;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/ResourcePackage$Builder;->type:Lcom/wandoujia/logv3/model/packages/ResourcePackage$Type;

    .line 116
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/ResourcePackage;->provider_name:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/ResourcePackage$Builder;->provider_name:Ljava/lang/String;

    .line 117
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/ResourcePackage;->app_uri:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/ResourcePackage$Builder;->app_uri:Ljava/lang/String;

    .line 118
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/ResourcePackage;->can_download:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/ResourcePackage$Builder;->can_download:Ljava/lang/Boolean;

    .line 119
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/ResourcePackage;->sub_type:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/ResourcePackage$Builder;->sub_type:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public final app_uri(Ljava/lang/String;)Lcom/wandoujia/logv3/model/packages/ResourcePackage$Builder;
    .locals 0
    .parameter

    .prologue
    .line 150
    iput-object p1, p0, Lcom/wandoujia/logv3/model/packages/ResourcePackage$Builder;->app_uri:Ljava/lang/String;

    .line 151
    return-object p0
.end method

.method public final bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .prologue
    .line 99
    invoke-virtual {p0}, Lcom/wandoujia/logv3/model/packages/ResourcePackage$Builder;->build()Lcom/wandoujia/logv3/model/packages/ResourcePackage;

    move-result-object v0

    return-object v0
.end method

.method public final build()Lcom/wandoujia/logv3/model/packages/ResourcePackage;
    .locals 2

    .prologue
    .line 172
    new-instance v0, Lcom/wandoujia/logv3/model/packages/ResourcePackage;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/wandoujia/logv3/model/packages/ResourcePackage;-><init>(Lcom/wandoujia/logv3/model/packages/ResourcePackage$Builder;Ld;)V

    return-object v0
.end method

.method public final can_download(Ljava/lang/Boolean;)Lcom/wandoujia/logv3/model/packages/ResourcePackage$Builder;
    .locals 0
    .parameter

    .prologue
    .line 158
    iput-object p1, p0, Lcom/wandoujia/logv3/model/packages/ResourcePackage$Builder;->can_download:Ljava/lang/Boolean;

    .line 159
    return-object p0
.end method

.method public final identity(Ljava/lang/String;)Lcom/wandoujia/logv3/model/packages/ResourcePackage$Builder;
    .locals 0
    .parameter

    .prologue
    .line 126
    iput-object p1, p0, Lcom/wandoujia/logv3/model/packages/ResourcePackage$Builder;->identity:Ljava/lang/String;

    .line 127
    return-object p0
.end method

.method public final provider_name(Ljava/lang/String;)Lcom/wandoujia/logv3/model/packages/ResourcePackage$Builder;
    .locals 0
    .parameter

    .prologue
    .line 142
    iput-object p1, p0, Lcom/wandoujia/logv3/model/packages/ResourcePackage$Builder;->provider_name:Ljava/lang/String;

    .line 143
    return-object p0
.end method

.method public final sub_type(Ljava/lang/String;)Lcom/wandoujia/logv3/model/packages/ResourcePackage$Builder;
    .locals 0
    .parameter

    .prologue
    .line 166
    iput-object p1, p0, Lcom/wandoujia/logv3/model/packages/ResourcePackage$Builder;->sub_type:Ljava/lang/String;

    .line 167
    return-object p0
.end method

.method public final type(Lcom/wandoujia/logv3/model/packages/ResourcePackage$Type;)Lcom/wandoujia/logv3/model/packages/ResourcePackage$Builder;
    .locals 0
    .parameter

    .prologue
    .line 134
    iput-object p1, p0, Lcom/wandoujia/logv3/model/packages/ResourcePackage$Builder;->type:Lcom/wandoujia/logv3/model/packages/ResourcePackage$Type;

    .line 135
    return-object p0
.end method
