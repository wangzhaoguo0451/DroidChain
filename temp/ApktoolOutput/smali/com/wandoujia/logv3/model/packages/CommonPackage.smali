.class public final Lcom/wandoujia/logv3/model/packages/CommonPackage;
.super Lcom/squareup/wire/Message;
.source "CommonPackage.java"


# instance fields
.field public final account_package:Lcom/wandoujia/logv3/model/packages/AccountPackage;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x5
    .end annotation
.end field

.field public final client_package:Lcom/wandoujia/logv3/model/packages/ClientPackage;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REQUIRED:Lcom/squareup/wire/Message$Label;
        tag = 0x2
    .end annotation
.end field

.field public final id_package:Lcom/wandoujia/logv3/model/packages/IdPackage;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REQUIRED:Lcom/squareup/wire/Message$Label;
        tag = 0x1
    .end annotation
.end field

.field public final launch_source_package:Lcom/wandoujia/logv3/model/packages/LaunchSourcePackage;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x6
    .end annotation
.end field

.field public final network_package:Lcom/wandoujia/logv3/model/packages/NetworkPackage;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x4
    .end annotation
.end field

.field public final time_package:Lcom/wandoujia/logv3/model/packages/TimePackage;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REQUIRED:Lcom/squareup/wire/Message$Label;
        tag = 0x3
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/wandoujia/logv3/model/packages/CommonPackage$Builder;)V
    .locals 1
    .parameter

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/Message$Builder;)V

    .line 35
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/CommonPackage$Builder;->id_package:Lcom/wandoujia/logv3/model/packages/IdPackage;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/CommonPackage;->id_package:Lcom/wandoujia/logv3/model/packages/IdPackage;

    .line 36
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/CommonPackage$Builder;->client_package:Lcom/wandoujia/logv3/model/packages/ClientPackage;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/CommonPackage;->client_package:Lcom/wandoujia/logv3/model/packages/ClientPackage;

    .line 37
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/CommonPackage$Builder;->time_package:Lcom/wandoujia/logv3/model/packages/TimePackage;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/CommonPackage;->time_package:Lcom/wandoujia/logv3/model/packages/TimePackage;

    .line 38
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/CommonPackage$Builder;->network_package:Lcom/wandoujia/logv3/model/packages/NetworkPackage;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/CommonPackage;->network_package:Lcom/wandoujia/logv3/model/packages/NetworkPackage;

    .line 39
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/CommonPackage$Builder;->account_package:Lcom/wandoujia/logv3/model/packages/AccountPackage;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/CommonPackage;->account_package:Lcom/wandoujia/logv3/model/packages/AccountPackage;

    .line 40
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/CommonPackage$Builder;->launch_source_package:Lcom/wandoujia/logv3/model/packages/LaunchSourcePackage;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/CommonPackage;->launch_source_package:Lcom/wandoujia/logv3/model/packages/LaunchSourcePackage;

    .line 41
    return-void
.end method

.method synthetic constructor <init>(Lcom/wandoujia/logv3/model/packages/CommonPackage$Builder;Ld;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 13
    invoke-direct {p0, p1}, Lcom/wandoujia/logv3/model/packages/CommonPackage;-><init>(Lcom/wandoujia/logv3/model/packages/CommonPackage$Builder;)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 45
    if-ne p1, p0, :cond_1

    .line 48
    :cond_0
    :goto_0
    return v0

    .line 46
    :cond_1
    instance-of v2, p1, Lcom/wandoujia/logv3/model/packages/CommonPackage;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 47
    :cond_2
    check-cast p1, Lcom/wandoujia/logv3/model/packages/CommonPackage;

    .line 48
    iget-object v2, p0, Lcom/wandoujia/logv3/model/packages/CommonPackage;->id_package:Lcom/wandoujia/logv3/model/packages/IdPackage;

    iget-object v3, p1, Lcom/wandoujia/logv3/model/packages/CommonPackage;->id_package:Lcom/wandoujia/logv3/model/packages/IdPackage;

    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/logv3/model/packages/CommonPackage;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/logv3/model/packages/CommonPackage;->client_package:Lcom/wandoujia/logv3/model/packages/ClientPackage;

    iget-object v3, p1, Lcom/wandoujia/logv3/model/packages/CommonPackage;->client_package:Lcom/wandoujia/logv3/model/packages/ClientPackage;

    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/logv3/model/packages/CommonPackage;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/logv3/model/packages/CommonPackage;->time_package:Lcom/wandoujia/logv3/model/packages/TimePackage;

    iget-object v3, p1, Lcom/wandoujia/logv3/model/packages/CommonPackage;->time_package:Lcom/wandoujia/logv3/model/packages/TimePackage;

    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/logv3/model/packages/CommonPackage;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/logv3/model/packages/CommonPackage;->network_package:Lcom/wandoujia/logv3/model/packages/NetworkPackage;

    iget-object v3, p1, Lcom/wandoujia/logv3/model/packages/CommonPackage;->network_package:Lcom/wandoujia/logv3/model/packages/NetworkPackage;

    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/logv3/model/packages/CommonPackage;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/logv3/model/packages/CommonPackage;->account_package:Lcom/wandoujia/logv3/model/packages/AccountPackage;

    iget-object v3, p1, Lcom/wandoujia/logv3/model/packages/CommonPackage;->account_package:Lcom/wandoujia/logv3/model/packages/AccountPackage;

    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/logv3/model/packages/CommonPackage;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/logv3/model/packages/CommonPackage;->launch_source_package:Lcom/wandoujia/logv3/model/packages/LaunchSourcePackage;

    iget-object v3, p1, Lcom/wandoujia/logv3/model/packages/CommonPackage;->launch_source_package:Lcom/wandoujia/logv3/model/packages/LaunchSourcePackage;

    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/logv3/model/packages/CommonPackage;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 58
    iget v0, p0, Lcom/wandoujia/logv3/model/packages/CommonPackage;->hashCode:I

    .line 59
    if-nez v0, :cond_1

    .line 60
    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/CommonPackage;->id_package:Lcom/wandoujia/logv3/model/packages/IdPackage;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/CommonPackage;->id_package:Lcom/wandoujia/logv3/model/packages/IdPackage;

    invoke-virtual {v0}, Lcom/wandoujia/logv3/model/packages/IdPackage;->hashCode()I

    move-result v0

    .line 61
    :goto_0
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/CommonPackage;->client_package:Lcom/wandoujia/logv3/model/packages/ClientPackage;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/CommonPackage;->client_package:Lcom/wandoujia/logv3/model/packages/ClientPackage;

    invoke-virtual {v0}, Lcom/wandoujia/logv3/model/packages/ClientPackage;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v0, v2

    .line 62
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/CommonPackage;->time_package:Lcom/wandoujia/logv3/model/packages/TimePackage;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/CommonPackage;->time_package:Lcom/wandoujia/logv3/model/packages/TimePackage;

    invoke-virtual {v0}, Lcom/wandoujia/logv3/model/packages/TimePackage;->hashCode()I

    move-result v0

    :goto_2
    add-int/2addr v0, v2

    .line 63
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/CommonPackage;->network_package:Lcom/wandoujia/logv3/model/packages/NetworkPackage;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/CommonPackage;->network_package:Lcom/wandoujia/logv3/model/packages/NetworkPackage;

    invoke-virtual {v0}, Lcom/wandoujia/logv3/model/packages/NetworkPackage;->hashCode()I

    move-result v0

    :goto_3
    add-int/2addr v0, v2

    .line 64
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/CommonPackage;->account_package:Lcom/wandoujia/logv3/model/packages/AccountPackage;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/CommonPackage;->account_package:Lcom/wandoujia/logv3/model/packages/AccountPackage;

    invoke-virtual {v0}, Lcom/wandoujia/logv3/model/packages/AccountPackage;->hashCode()I

    move-result v0

    :goto_4
    add-int/2addr v0, v2

    .line 65
    mul-int/lit8 v0, v0, 0x25

    iget-object v2, p0, Lcom/wandoujia/logv3/model/packages/CommonPackage;->launch_source_package:Lcom/wandoujia/logv3/model/packages/LaunchSourcePackage;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/wandoujia/logv3/model/packages/CommonPackage;->launch_source_package:Lcom/wandoujia/logv3/model/packages/LaunchSourcePackage;

    invoke-virtual {v1}, Lcom/wandoujia/logv3/model/packages/LaunchSourcePackage;->hashCode()I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    .line 66
    iput v0, p0, Lcom/wandoujia/logv3/model/packages/CommonPackage;->hashCode:I

    .line 68
    :cond_1
    return v0

    :cond_2
    move v0, v1

    .line 60
    goto :goto_0

    :cond_3
    move v0, v1

    .line 61
    goto :goto_1

    :cond_4
    move v0, v1

    .line 62
    goto :goto_2

    :cond_5
    move v0, v1

    .line 63
    goto :goto_3

    :cond_6
    move v0, v1

    .line 64
    goto :goto_4
.end method
