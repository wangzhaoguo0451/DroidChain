.class public final Lcom/wandoujia/logv3/model/packages/CommonPackage$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "CommonPackage.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder",
        "<",
        "Lcom/wandoujia/logv3/model/packages/CommonPackage;",
        ">;"
    }
.end annotation


# instance fields
.field public account_package:Lcom/wandoujia/logv3/model/packages/AccountPackage;

.field public client_package:Lcom/wandoujia/logv3/model/packages/ClientPackage;

.field public id_package:Lcom/wandoujia/logv3/model/packages/IdPackage;

.field public launch_source_package:Lcom/wandoujia/logv3/model/packages/LaunchSourcePackage;

.field public network_package:Lcom/wandoujia/logv3/model/packages/NetworkPackage;

.field public time_package:Lcom/wandoujia/logv3/model/packages/TimePackage;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 81
    return-void
.end method

.method public constructor <init>(Lcom/wandoujia/logv3/model/packages/CommonPackage;)V
    .locals 1
    .parameter

    .prologue
    .line 84
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message$Builder;-><init>(Lcom/squareup/wire/Message;)V

    .line 85
    if-nez p1, :cond_0

    .line 92
    :goto_0
    return-void

    .line 86
    :cond_0
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/CommonPackage;->id_package:Lcom/wandoujia/logv3/model/packages/IdPackage;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/CommonPackage$Builder;->id_package:Lcom/wandoujia/logv3/model/packages/IdPackage;

    .line 87
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/CommonPackage;->client_package:Lcom/wandoujia/logv3/model/packages/ClientPackage;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/CommonPackage$Builder;->client_package:Lcom/wandoujia/logv3/model/packages/ClientPackage;

    .line 88
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/CommonPackage;->time_package:Lcom/wandoujia/logv3/model/packages/TimePackage;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/CommonPackage$Builder;->time_package:Lcom/wandoujia/logv3/model/packages/TimePackage;

    .line 89
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/CommonPackage;->network_package:Lcom/wandoujia/logv3/model/packages/NetworkPackage;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/CommonPackage$Builder;->network_package:Lcom/wandoujia/logv3/model/packages/NetworkPackage;

    .line 90
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/CommonPackage;->account_package:Lcom/wandoujia/logv3/model/packages/AccountPackage;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/CommonPackage$Builder;->account_package:Lcom/wandoujia/logv3/model/packages/AccountPackage;

    .line 91
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/CommonPackage;->launch_source_package:Lcom/wandoujia/logv3/model/packages/LaunchSourcePackage;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/CommonPackage$Builder;->launch_source_package:Lcom/wandoujia/logv3/model/packages/LaunchSourcePackage;

    goto :goto_0
.end method


# virtual methods
.method public final account_package(Lcom/wandoujia/logv3/model/packages/AccountPackage;)Lcom/wandoujia/logv3/model/packages/CommonPackage$Builder;
    .locals 0
    .parameter

    .prologue
    .line 115
    iput-object p1, p0, Lcom/wandoujia/logv3/model/packages/CommonPackage$Builder;->account_package:Lcom/wandoujia/logv3/model/packages/AccountPackage;

    .line 116
    return-object p0
.end method

.method public final bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .prologue
    .line 71
    invoke-virtual {p0}, Lcom/wandoujia/logv3/model/packages/CommonPackage$Builder;->build()Lcom/wandoujia/logv3/model/packages/CommonPackage;

    move-result-object v0

    return-object v0
.end method

.method public final build()Lcom/wandoujia/logv3/model/packages/CommonPackage;
    .locals 2

    .prologue
    .line 126
    invoke-virtual {p0}, Lcom/wandoujia/logv3/model/packages/CommonPackage$Builder;->checkRequiredFields()V

    .line 127
    new-instance v0, Lcom/wandoujia/logv3/model/packages/CommonPackage;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/wandoujia/logv3/model/packages/CommonPackage;-><init>(Lcom/wandoujia/logv3/model/packages/CommonPackage$Builder;Ld;)V

    return-object v0
.end method

.method public final client_package(Lcom/wandoujia/logv3/model/packages/ClientPackage;)Lcom/wandoujia/logv3/model/packages/CommonPackage$Builder;
    .locals 0
    .parameter

    .prologue
    .line 100
    iput-object p1, p0, Lcom/wandoujia/logv3/model/packages/CommonPackage$Builder;->client_package:Lcom/wandoujia/logv3/model/packages/ClientPackage;

    .line 101
    return-object p0
.end method

.method public final id_package(Lcom/wandoujia/logv3/model/packages/IdPackage;)Lcom/wandoujia/logv3/model/packages/CommonPackage$Builder;
    .locals 0
    .parameter

    .prologue
    .line 95
    iput-object p1, p0, Lcom/wandoujia/logv3/model/packages/CommonPackage$Builder;->id_package:Lcom/wandoujia/logv3/model/packages/IdPackage;

    .line 96
    return-object p0
.end method

.method public final launch_source_package(Lcom/wandoujia/logv3/model/packages/LaunchSourcePackage;)Lcom/wandoujia/logv3/model/packages/CommonPackage$Builder;
    .locals 0
    .parameter

    .prologue
    .line 120
    iput-object p1, p0, Lcom/wandoujia/logv3/model/packages/CommonPackage$Builder;->launch_source_package:Lcom/wandoujia/logv3/model/packages/LaunchSourcePackage;

    .line 121
    return-object p0
.end method

.method public final network_package(Lcom/wandoujia/logv3/model/packages/NetworkPackage;)Lcom/wandoujia/logv3/model/packages/CommonPackage$Builder;
    .locals 0
    .parameter

    .prologue
    .line 110
    iput-object p1, p0, Lcom/wandoujia/logv3/model/packages/CommonPackage$Builder;->network_package:Lcom/wandoujia/logv3/model/packages/NetworkPackage;

    .line 111
    return-object p0
.end method

.method public final time_package(Lcom/wandoujia/logv3/model/packages/TimePackage;)Lcom/wandoujia/logv3/model/packages/CommonPackage$Builder;
    .locals 0
    .parameter

    .prologue
    .line 105
    iput-object p1, p0, Lcom/wandoujia/logv3/model/packages/CommonPackage$Builder;->time_package:Lcom/wandoujia/logv3/model/packages/TimePackage;

    .line 106
    return-object p0
.end method
