.class public final Lcom/wandoujia/logv3/model/packages/OpenTypePackage$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "OpenTypePackage.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder",
        "<",
        "Lcom/wandoujia/logv3/model/packages/OpenTypePackage;",
        ">;"
    }
.end annotation


# instance fields
.field public mode:Lcom/wandoujia/logv3/model/packages/OpenTypePackage$Mode;

.field public open_provider_package_name:Ljava/lang/String;

.field public type:Lcom/wandoujia/logv3/model/packages/OpenTypePackage$OpenType;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 75
    return-void
.end method

.method public constructor <init>(Lcom/wandoujia/logv3/model/packages/OpenTypePackage;)V
    .locals 1
    .parameter

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message$Builder;-><init>(Lcom/squareup/wire/Message;)V

    .line 79
    if-nez p1, :cond_0

    .line 83
    :goto_0
    return-void

    .line 80
    :cond_0
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/OpenTypePackage;->type:Lcom/wandoujia/logv3/model/packages/OpenTypePackage$OpenType;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/OpenTypePackage$Builder;->type:Lcom/wandoujia/logv3/model/packages/OpenTypePackage$OpenType;

    .line 81
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/OpenTypePackage;->mode:Lcom/wandoujia/logv3/model/packages/OpenTypePackage$Mode;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/OpenTypePackage$Builder;->mode:Lcom/wandoujia/logv3/model/packages/OpenTypePackage$Mode;

    .line 82
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/OpenTypePackage;->open_provider_package_name:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/OpenTypePackage$Builder;->open_provider_package_name:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public final bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .prologue
    .line 68
    invoke-virtual {p0}, Lcom/wandoujia/logv3/model/packages/OpenTypePackage$Builder;->build()Lcom/wandoujia/logv3/model/packages/OpenTypePackage;

    move-result-object v0

    return-object v0
.end method

.method public final build()Lcom/wandoujia/logv3/model/packages/OpenTypePackage;
    .locals 2

    .prologue
    .line 111
    new-instance v0, Lcom/wandoujia/logv3/model/packages/OpenTypePackage;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/wandoujia/logv3/model/packages/OpenTypePackage;-><init>(Lcom/wandoujia/logv3/model/packages/OpenTypePackage$Builder;Ld;)V

    return-object v0
.end method

.method public final mode(Lcom/wandoujia/logv3/model/packages/OpenTypePackage$Mode;)Lcom/wandoujia/logv3/model/packages/OpenTypePackage$Builder;
    .locals 0
    .parameter

    .prologue
    .line 97
    iput-object p1, p0, Lcom/wandoujia/logv3/model/packages/OpenTypePackage$Builder;->mode:Lcom/wandoujia/logv3/model/packages/OpenTypePackage$Mode;

    .line 98
    return-object p0
.end method

.method public final open_provider_package_name(Ljava/lang/String;)Lcom/wandoujia/logv3/model/packages/OpenTypePackage$Builder;
    .locals 0
    .parameter

    .prologue
    .line 105
    iput-object p1, p0, Lcom/wandoujia/logv3/model/packages/OpenTypePackage$Builder;->open_provider_package_name:Ljava/lang/String;

    .line 106
    return-object p0
.end method

.method public final type(Lcom/wandoujia/logv3/model/packages/OpenTypePackage$OpenType;)Lcom/wandoujia/logv3/model/packages/OpenTypePackage$Builder;
    .locals 0
    .parameter

    .prologue
    .line 89
    iput-object p1, p0, Lcom/wandoujia/logv3/model/packages/OpenTypePackage$Builder;->type:Lcom/wandoujia/logv3/model/packages/OpenTypePackage$OpenType;

    .line 90
    return-object p0
.end method
