.class public final Lcom/wandoujia/logv3/model/packages/LogReportEvent;
.super Lcom/squareup/wire/Message;
.source "LogReportEvent.java"


# static fields
.field public static final DEFAULT_LOCAL_INCREMENT_ID:Ljava/lang/Long; = null

.field public static final DEFAULT_PROTO_VERSION:Ljava/lang/String; = "1.1.1"

.field public static final DEFAULT_REAL_TIME:Ljava/lang/Boolean;


# instance fields
.field public final common_package:Lcom/wandoujia/logv3/model/packages/CommonPackage;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REQUIRED:Lcom/squareup/wire/Message$Label;
        tag = 0x4
    .end annotation
.end field

.field public final event_package:Lcom/wandoujia/logv3/model/packages/EventPackage;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x5
    .end annotation
.end field

.field public final extra_package:Lcom/wandoujia/logv3/model/packages/ExtraPackage;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x6
    .end annotation
.end field

.field public final local_increment_id:Ljava/lang/Long;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REQUIRED:Lcom/squareup/wire/Message$Label;
        tag = 0x1
        type = .enum Lcom/squareup/wire/Message$Datatype;->UINT64:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final proto_version:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x3
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final real_time:Ljava/lang/Boolean;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x2
        type = .enum Lcom/squareup/wire/Message$Datatype;->BOOL:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 15
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/wandoujia/logv3/model/packages/LogReportEvent;->DEFAULT_LOCAL_INCREMENT_ID:Ljava/lang/Long;

    .line 16
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/wandoujia/logv3/model/packages/LogReportEvent;->DEFAULT_REAL_TIME:Ljava/lang/Boolean;

    return-void
.end method

.method private constructor <init>(Lcom/wandoujia/logv3/model/packages/LogReportEvent$Builder;)V
    .locals 1
    .parameter

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/Message$Builder;)V

    .line 57
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/LogReportEvent$Builder;->local_increment_id:Ljava/lang/Long;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/LogReportEvent;->local_increment_id:Ljava/lang/Long;

    .line 58
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/LogReportEvent$Builder;->real_time:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/LogReportEvent;->real_time:Ljava/lang/Boolean;

    .line 59
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/LogReportEvent$Builder;->proto_version:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/LogReportEvent;->proto_version:Ljava/lang/String;

    .line 60
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/LogReportEvent$Builder;->common_package:Lcom/wandoujia/logv3/model/packages/CommonPackage;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/LogReportEvent;->common_package:Lcom/wandoujia/logv3/model/packages/CommonPackage;

    .line 61
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/LogReportEvent$Builder;->event_package:Lcom/wandoujia/logv3/model/packages/EventPackage;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/LogReportEvent;->event_package:Lcom/wandoujia/logv3/model/packages/EventPackage;

    .line 62
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/LogReportEvent$Builder;->extra_package:Lcom/wandoujia/logv3/model/packages/ExtraPackage;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/LogReportEvent;->extra_package:Lcom/wandoujia/logv3/model/packages/ExtraPackage;

    .line 63
    return-void
.end method

.method synthetic constructor <init>(Lcom/wandoujia/logv3/model/packages/LogReportEvent$Builder;Ld;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 13
    invoke-direct {p0, p1}, Lcom/wandoujia/logv3/model/packages/LogReportEvent;-><init>(Lcom/wandoujia/logv3/model/packages/LogReportEvent$Builder;)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 67
    if-ne p1, p0, :cond_1

    .line 70
    :cond_0
    :goto_0
    return v0

    .line 68
    :cond_1
    instance-of v2, p1, Lcom/wandoujia/logv3/model/packages/LogReportEvent;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 69
    :cond_2
    check-cast p1, Lcom/wandoujia/logv3/model/packages/LogReportEvent;

    .line 70
    iget-object v2, p0, Lcom/wandoujia/logv3/model/packages/LogReportEvent;->local_increment_id:Ljava/lang/Long;

    iget-object v3, p1, Lcom/wandoujia/logv3/model/packages/LogReportEvent;->local_increment_id:Ljava/lang/Long;

    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/logv3/model/packages/LogReportEvent;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/logv3/model/packages/LogReportEvent;->real_time:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/wandoujia/logv3/model/packages/LogReportEvent;->real_time:Ljava/lang/Boolean;

    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/logv3/model/packages/LogReportEvent;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/logv3/model/packages/LogReportEvent;->proto_version:Ljava/lang/String;

    iget-object v3, p1, Lcom/wandoujia/logv3/model/packages/LogReportEvent;->proto_version:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/logv3/model/packages/LogReportEvent;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/logv3/model/packages/LogReportEvent;->common_package:Lcom/wandoujia/logv3/model/packages/CommonPackage;

    iget-object v3, p1, Lcom/wandoujia/logv3/model/packages/LogReportEvent;->common_package:Lcom/wandoujia/logv3/model/packages/CommonPackage;

    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/logv3/model/packages/LogReportEvent;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/logv3/model/packages/LogReportEvent;->event_package:Lcom/wandoujia/logv3/model/packages/EventPackage;

    iget-object v3, p1, Lcom/wandoujia/logv3/model/packages/LogReportEvent;->event_package:Lcom/wandoujia/logv3/model/packages/EventPackage;

    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/logv3/model/packages/LogReportEvent;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/logv3/model/packages/LogReportEvent;->extra_package:Lcom/wandoujia/logv3/model/packages/ExtraPackage;

    iget-object v3, p1, Lcom/wandoujia/logv3/model/packages/LogReportEvent;->extra_package:Lcom/wandoujia/logv3/model/packages/ExtraPackage;

    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/logv3/model/packages/LogReportEvent;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

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

    .line 80
    iget v0, p0, Lcom/wandoujia/logv3/model/packages/LogReportEvent;->hashCode:I

    .line 81
    if-nez v0, :cond_1

    .line 82
    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/LogReportEvent;->local_increment_id:Ljava/lang/Long;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/LogReportEvent;->local_increment_id:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->hashCode()I

    move-result v0

    .line 83
    :goto_0
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/LogReportEvent;->real_time:Ljava/lang/Boolean;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/LogReportEvent;->real_time:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v0, v2

    .line 84
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/LogReportEvent;->proto_version:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/LogReportEvent;->proto_version:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_2
    add-int/2addr v0, v2

    .line 85
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/LogReportEvent;->common_package:Lcom/wandoujia/logv3/model/packages/CommonPackage;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/LogReportEvent;->common_package:Lcom/wandoujia/logv3/model/packages/CommonPackage;

    invoke-virtual {v0}, Lcom/wandoujia/logv3/model/packages/CommonPackage;->hashCode()I

    move-result v0

    :goto_3
    add-int/2addr v0, v2

    .line 86
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/LogReportEvent;->event_package:Lcom/wandoujia/logv3/model/packages/EventPackage;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/wandoujia/logv3/model/packages/LogReportEvent;->event_package:Lcom/wandoujia/logv3/model/packages/EventPackage;

    invoke-virtual {v0}, Lcom/wandoujia/logv3/model/packages/EventPackage;->hashCode()I

    move-result v0

    :goto_4
    add-int/2addr v0, v2

    .line 87
    mul-int/lit8 v0, v0, 0x25

    iget-object v2, p0, Lcom/wandoujia/logv3/model/packages/LogReportEvent;->extra_package:Lcom/wandoujia/logv3/model/packages/ExtraPackage;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/wandoujia/logv3/model/packages/LogReportEvent;->extra_package:Lcom/wandoujia/logv3/model/packages/ExtraPackage;

    invoke-virtual {v1}, Lcom/wandoujia/logv3/model/packages/ExtraPackage;->hashCode()I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    .line 88
    iput v0, p0, Lcom/wandoujia/logv3/model/packages/LogReportEvent;->hashCode:I

    .line 90
    :cond_1
    return v0

    :cond_2
    move v0, v1

    .line 82
    goto :goto_0

    :cond_3
    move v0, v1

    .line 83
    goto :goto_1

    :cond_4
    move v0, v1

    .line 84
    goto :goto_2

    :cond_5
    move v0, v1

    .line 85
    goto :goto_3

    :cond_6
    move v0, v1

    .line 86
    goto :goto_4
.end method
