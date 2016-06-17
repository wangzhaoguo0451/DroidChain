.class public final Lcom/wandoujia/logv3/model/packages/NetworkPackage$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "NetworkPackage.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder",
        "<",
        "Lcom/wandoujia/logv3/model/packages/NetworkPackage;",
        ">;"
    }
.end annotation


# instance fields
.field public isp:Ljava/lang/String;

.field public remote_ip:Ljava/lang/String;

.field public ssid:Ljava/lang/String;

.field public sub_type:Lcom/wandoujia/logv3/model/packages/NetworkPackage$Subtype;

.field public type:Lcom/wandoujia/logv3/model/packages/NetworkPackage$Type;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 97
    return-void
.end method

.method public constructor <init>(Lcom/wandoujia/logv3/model/packages/NetworkPackage;)V
    .locals 1
    .parameter

    .prologue
    .line 100
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message$Builder;-><init>(Lcom/squareup/wire/Message;)V

    .line 101
    if-nez p1, :cond_0

    .line 107
    :goto_0
    return-void

    .line 102
    :cond_0
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/NetworkPackage;->type:Lcom/wandoujia/logv3/model/packages/NetworkPackage$Type;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/NetworkPackage$Builder;->type:Lcom/wandoujia/logv3/model/packages/NetworkPackage$Type;

    .line 103
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/NetworkPackage;->sub_type:Lcom/wandoujia/logv3/model/packages/NetworkPackage$Subtype;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/NetworkPackage$Builder;->sub_type:Lcom/wandoujia/logv3/model/packages/NetworkPackage$Subtype;

    .line 104
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/NetworkPackage;->isp:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/NetworkPackage$Builder;->isp:Ljava/lang/String;

    .line 105
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/NetworkPackage;->remote_ip:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/NetworkPackage$Builder;->remote_ip:Ljava/lang/String;

    .line 106
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/NetworkPackage;->ssid:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/NetworkPackage$Builder;->ssid:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public final bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .prologue
    .line 88
    invoke-virtual {p0}, Lcom/wandoujia/logv3/model/packages/NetworkPackage$Builder;->build()Lcom/wandoujia/logv3/model/packages/NetworkPackage;

    move-result-object v0

    return-object v0
.end method

.method public final build()Lcom/wandoujia/logv3/model/packages/NetworkPackage;
    .locals 2

    .prologue
    .line 151
    new-instance v0, Lcom/wandoujia/logv3/model/packages/NetworkPackage;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/wandoujia/logv3/model/packages/NetworkPackage;-><init>(Lcom/wandoujia/logv3/model/packages/NetworkPackage$Builder;Ld;)V

    return-object v0
.end method

.method public final isp(Ljava/lang/String;)Lcom/wandoujia/logv3/model/packages/NetworkPackage$Builder;
    .locals 0
    .parameter

    .prologue
    .line 129
    iput-object p1, p0, Lcom/wandoujia/logv3/model/packages/NetworkPackage$Builder;->isp:Ljava/lang/String;

    .line 130
    return-object p0
.end method

.method public final remote_ip(Ljava/lang/String;)Lcom/wandoujia/logv3/model/packages/NetworkPackage$Builder;
    .locals 0
    .parameter

    .prologue
    .line 137
    iput-object p1, p0, Lcom/wandoujia/logv3/model/packages/NetworkPackage$Builder;->remote_ip:Ljava/lang/String;

    .line 138
    return-object p0
.end method

.method public final ssid(Ljava/lang/String;)Lcom/wandoujia/logv3/model/packages/NetworkPackage$Builder;
    .locals 0
    .parameter

    .prologue
    .line 145
    iput-object p1, p0, Lcom/wandoujia/logv3/model/packages/NetworkPackage$Builder;->ssid:Ljava/lang/String;

    .line 146
    return-object p0
.end method

.method public final sub_type(Lcom/wandoujia/logv3/model/packages/NetworkPackage$Subtype;)Lcom/wandoujia/logv3/model/packages/NetworkPackage$Builder;
    .locals 0
    .parameter

    .prologue
    .line 121
    iput-object p1, p0, Lcom/wandoujia/logv3/model/packages/NetworkPackage$Builder;->sub_type:Lcom/wandoujia/logv3/model/packages/NetworkPackage$Subtype;

    .line 122
    return-object p0
.end method

.method public final type(Lcom/wandoujia/logv3/model/packages/NetworkPackage$Type;)Lcom/wandoujia/logv3/model/packages/NetworkPackage$Builder;
    .locals 0
    .parameter

    .prologue
    .line 113
    iput-object p1, p0, Lcom/wandoujia/logv3/model/packages/NetworkPackage$Builder;->type:Lcom/wandoujia/logv3/model/packages/NetworkPackage$Type;

    .line 114
    return-object p0
.end method
