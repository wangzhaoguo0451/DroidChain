.class public final Lcom/wandoujia/logv3/model/packages/AppUsageStatPackage$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "AppUsageStatPackage.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder",
        "<",
        "Lcom/wandoujia/logv3/model/packages/AppUsageStatPackage;",
        ">;"
    }
.end annotation


# instance fields
.field public end_time:Ljava/lang/Long;

.field public is_system:Ljava/lang/Integer;

.field public package_name:Ljava/lang/String;

.field public sample_frequency:Ljava/lang/Integer;

.field public start_time:Ljava/lang/Long;

.field public version_code:Ljava/lang/Integer;

.field public version_name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 111
    return-void
.end method

.method public constructor <init>(Lcom/wandoujia/logv3/model/packages/AppUsageStatPackage;)V
    .locals 1
    .parameter

    .prologue
    .line 114
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message$Builder;-><init>(Lcom/squareup/wire/Message;)V

    .line 115
    if-nez p1, :cond_0

    .line 123
    :goto_0
    return-void

    .line 116
    :cond_0
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/AppUsageStatPackage;->package_name:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/AppUsageStatPackage$Builder;->package_name:Ljava/lang/String;

    .line 117
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/AppUsageStatPackage;->version_code:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/AppUsageStatPackage$Builder;->version_code:Ljava/lang/Integer;

    .line 118
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/AppUsageStatPackage;->version_name:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/AppUsageStatPackage$Builder;->version_name:Ljava/lang/String;

    .line 119
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/AppUsageStatPackage;->is_system:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/AppUsageStatPackage$Builder;->is_system:Ljava/lang/Integer;

    .line 120
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/AppUsageStatPackage;->sample_frequency:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/AppUsageStatPackage$Builder;->sample_frequency:Ljava/lang/Integer;

    .line 121
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/AppUsageStatPackage;->start_time:Ljava/lang/Long;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/AppUsageStatPackage$Builder;->start_time:Ljava/lang/Long;

    .line 122
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/AppUsageStatPackage;->end_time:Ljava/lang/Long;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/AppUsageStatPackage$Builder;->end_time:Ljava/lang/Long;

    goto :goto_0
.end method


# virtual methods
.method public final bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .prologue
    .line 100
    invoke-virtual {p0}, Lcom/wandoujia/logv3/model/packages/AppUsageStatPackage$Builder;->build()Lcom/wandoujia/logv3/model/packages/AppUsageStatPackage;

    move-result-object v0

    return-object v0
.end method

.method public final build()Lcom/wandoujia/logv3/model/packages/AppUsageStatPackage;
    .locals 2

    .prologue
    .line 174
    invoke-virtual {p0}, Lcom/wandoujia/logv3/model/packages/AppUsageStatPackage$Builder;->checkRequiredFields()V

    .line 175
    new-instance v0, Lcom/wandoujia/logv3/model/packages/AppUsageStatPackage;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/wandoujia/logv3/model/packages/AppUsageStatPackage;-><init>(Lcom/wandoujia/logv3/model/packages/AppUsageStatPackage$Builder;Ld;)V

    return-object v0
.end method

.method public final end_time(Ljava/lang/Long;)Lcom/wandoujia/logv3/model/packages/AppUsageStatPackage$Builder;
    .locals 0
    .parameter

    .prologue
    .line 168
    iput-object p1, p0, Lcom/wandoujia/logv3/model/packages/AppUsageStatPackage$Builder;->end_time:Ljava/lang/Long;

    .line 169
    return-object p0
.end method

.method public final is_system(Ljava/lang/Integer;)Lcom/wandoujia/logv3/model/packages/AppUsageStatPackage$Builder;
    .locals 0
    .parameter

    .prologue
    .line 144
    iput-object p1, p0, Lcom/wandoujia/logv3/model/packages/AppUsageStatPackage$Builder;->is_system:Ljava/lang/Integer;

    .line 145
    return-object p0
.end method

.method public final package_name(Ljava/lang/String;)Lcom/wandoujia/logv3/model/packages/AppUsageStatPackage$Builder;
    .locals 0
    .parameter

    .prologue
    .line 126
    iput-object p1, p0, Lcom/wandoujia/logv3/model/packages/AppUsageStatPackage$Builder;->package_name:Ljava/lang/String;

    .line 127
    return-object p0
.end method

.method public final sample_frequency(Ljava/lang/Integer;)Lcom/wandoujia/logv3/model/packages/AppUsageStatPackage$Builder;
    .locals 0
    .parameter

    .prologue
    .line 152
    iput-object p1, p0, Lcom/wandoujia/logv3/model/packages/AppUsageStatPackage$Builder;->sample_frequency:Ljava/lang/Integer;

    .line 153
    return-object p0
.end method

.method public final start_time(Ljava/lang/Long;)Lcom/wandoujia/logv3/model/packages/AppUsageStatPackage$Builder;
    .locals 0
    .parameter

    .prologue
    .line 160
    iput-object p1, p0, Lcom/wandoujia/logv3/model/packages/AppUsageStatPackage$Builder;->start_time:Ljava/lang/Long;

    .line 161
    return-object p0
.end method

.method public final version_code(Ljava/lang/Integer;)Lcom/wandoujia/logv3/model/packages/AppUsageStatPackage$Builder;
    .locals 0
    .parameter

    .prologue
    .line 131
    iput-object p1, p0, Lcom/wandoujia/logv3/model/packages/AppUsageStatPackage$Builder;->version_code:Ljava/lang/Integer;

    .line 132
    return-object p0
.end method

.method public final version_name(Ljava/lang/String;)Lcom/wandoujia/logv3/model/packages/AppUsageStatPackage$Builder;
    .locals 0
    .parameter

    .prologue
    .line 136
    iput-object p1, p0, Lcom/wandoujia/logv3/model/packages/AppUsageStatPackage$Builder;->version_name:Ljava/lang/String;

    .line 137
    return-object p0
.end method
