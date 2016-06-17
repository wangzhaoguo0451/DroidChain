.class public final Lcom/wandoujia/logv3/model/packages/LogReportEvent$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "LogReportEvent.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder",
        "<",
        "Lcom/wandoujia/logv3/model/packages/LogReportEvent;",
        ">;"
    }
.end annotation


# instance fields
.field public common_package:Lcom/wandoujia/logv3/model/packages/CommonPackage;

.field public event_package:Lcom/wandoujia/logv3/model/packages/EventPackage;

.field public extra_package:Lcom/wandoujia/logv3/model/packages/ExtraPackage;

.field public local_increment_id:Ljava/lang/Long;

.field public proto_version:Ljava/lang/String;

.field public real_time:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 102
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 103
    return-void
.end method

.method public constructor <init>(Lcom/wandoujia/logv3/model/packages/LogReportEvent;)V
    .locals 1
    .parameter

    .prologue
    .line 106
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message$Builder;-><init>(Lcom/squareup/wire/Message;)V

    .line 107
    if-nez p1, :cond_0

    .line 114
    :goto_0
    return-void

    .line 108
    :cond_0
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/LogReportEvent;->local_increment_id:Ljava/lang/Long;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/LogReportEvent$Builder;->local_increment_id:Ljava/lang/Long;

    .line 109
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/LogReportEvent;->real_time:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/LogReportEvent$Builder;->real_time:Ljava/lang/Boolean;

    .line 110
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/LogReportEvent;->proto_version:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/LogReportEvent$Builder;->proto_version:Ljava/lang/String;

    .line 111
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/LogReportEvent;->common_package:Lcom/wandoujia/logv3/model/packages/CommonPackage;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/LogReportEvent$Builder;->common_package:Lcom/wandoujia/logv3/model/packages/CommonPackage;

    .line 112
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/LogReportEvent;->event_package:Lcom/wandoujia/logv3/model/packages/EventPackage;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/LogReportEvent$Builder;->event_package:Lcom/wandoujia/logv3/model/packages/EventPackage;

    .line 113
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/LogReportEvent;->extra_package:Lcom/wandoujia/logv3/model/packages/ExtraPackage;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/LogReportEvent$Builder;->extra_package:Lcom/wandoujia/logv3/model/packages/ExtraPackage;

    goto :goto_0
.end method


# virtual methods
.method public final bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .prologue
    .line 93
    invoke-virtual {p0}, Lcom/wandoujia/logv3/model/packages/LogReportEvent$Builder;->build()Lcom/wandoujia/logv3/model/packages/LogReportEvent;

    move-result-object v0

    return-object v0
.end method

.method public final build()Lcom/wandoujia/logv3/model/packages/LogReportEvent;
    .locals 2

    .prologue
    .line 166
    invoke-virtual {p0}, Lcom/wandoujia/logv3/model/packages/LogReportEvent$Builder;->checkRequiredFields()V

    .line 167
    new-instance v0, Lcom/wandoujia/logv3/model/packages/LogReportEvent;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/wandoujia/logv3/model/packages/LogReportEvent;-><init>(Lcom/wandoujia/logv3/model/packages/LogReportEvent$Builder;Ld;)V

    return-object v0
.end method

.method public final common_package(Lcom/wandoujia/logv3/model/packages/CommonPackage;)Lcom/wandoujia/logv3/model/packages/LogReportEvent$Builder;
    .locals 0
    .parameter

    .prologue
    .line 144
    iput-object p1, p0, Lcom/wandoujia/logv3/model/packages/LogReportEvent$Builder;->common_package:Lcom/wandoujia/logv3/model/packages/CommonPackage;

    .line 145
    return-object p0
.end method

.method public final event_package(Lcom/wandoujia/logv3/model/packages/EventPackage;)Lcom/wandoujia/logv3/model/packages/LogReportEvent$Builder;
    .locals 0
    .parameter

    .prologue
    .line 152
    iput-object p1, p0, Lcom/wandoujia/logv3/model/packages/LogReportEvent$Builder;->event_package:Lcom/wandoujia/logv3/model/packages/EventPackage;

    .line 153
    return-object p0
.end method

.method public final extra_package(Lcom/wandoujia/logv3/model/packages/ExtraPackage;)Lcom/wandoujia/logv3/model/packages/LogReportEvent$Builder;
    .locals 0
    .parameter

    .prologue
    .line 160
    iput-object p1, p0, Lcom/wandoujia/logv3/model/packages/LogReportEvent$Builder;->extra_package:Lcom/wandoujia/logv3/model/packages/ExtraPackage;

    .line 161
    return-object p0
.end method

.method public final local_increment_id(Ljava/lang/Long;)Lcom/wandoujia/logv3/model/packages/LogReportEvent$Builder;
    .locals 0
    .parameter

    .prologue
    .line 120
    iput-object p1, p0, Lcom/wandoujia/logv3/model/packages/LogReportEvent$Builder;->local_increment_id:Ljava/lang/Long;

    .line 121
    return-object p0
.end method

.method public final proto_version(Ljava/lang/String;)Lcom/wandoujia/logv3/model/packages/LogReportEvent$Builder;
    .locals 0
    .parameter

    .prologue
    .line 136
    iput-object p1, p0, Lcom/wandoujia/logv3/model/packages/LogReportEvent$Builder;->proto_version:Ljava/lang/String;

    .line 137
    return-object p0
.end method

.method public final real_time(Ljava/lang/Boolean;)Lcom/wandoujia/logv3/model/packages/LogReportEvent$Builder;
    .locals 0
    .parameter

    .prologue
    .line 128
    iput-object p1, p0, Lcom/wandoujia/logv3/model/packages/LogReportEvent$Builder;->real_time:Ljava/lang/Boolean;

    .line 129
    return-object p0
.end method
