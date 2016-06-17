.class public Lcom/wandoujia/update/protocol/EventReportProtocol;
.super Ljava/lang/Object;
.source "EventReportProtocol.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final URL:Ljava/lang/String; = "https://upgrade.wandoujia.com/event"


# instance fields
.field public appName:Ljava/lang/String;
    .annotation runtime Lcwj;
        a = "app_name"
    .end annotation
.end field

.field public downloadTimeMS:J
    .annotation runtime Lcwj;
        a = "download_time_ms"
    .end annotation
.end field

.field public ekey:Ljava/lang/String;
    .annotation runtime Lcwj;
        a = "ekey"
    .end annotation
.end field

.field public errorInfo:Ljava/lang/String;
    .annotation runtime Lcwj;
        a = "error_info"
    .end annotation
.end field

.field public errorType:Ljava/lang/String;
    .annotation runtime Lcwj;
        a = "error_type"
    .end annotation
.end field

.field public eventDateTime:J
    .annotation runtime Lcwj;
        a = "event_datetime"
    .end annotation
.end field

.field public eventStatus:Lcom/wandoujia/update/protocol/EventReportProtocol$EventStatus;
    .annotation runtime Lcwj;
        a = "event_status"
    .end annotation
.end field

.field public eventType:Lcom/wandoujia/update/protocol/EventReportProtocol$EventType;
    .annotation runtime Lcwj;
        a = "event_type"
    .end annotation
.end field

.field public protocolVersion:Ljava/lang/String;
    .annotation runtime Lcwj;
        a = "protocol_version"
    .end annotation
.end field

.field public rom:Ljava/lang/String;
    .annotation runtime Lcwj;
        a = "rom"
    .end annotation
.end field

.field public romVersion:Ljava/lang/String;
    .annotation runtime Lcwj;
        a = "rom_version"
    .end annotation
.end field

.field public source:Ljava/lang/String;
    .annotation runtime Lcwj;
        a = "source"
    .end annotation
.end field

.field public udid:Ljava/lang/String;
    .annotation runtime Lcwj;
        a = "udid"
    .end annotation
.end field

.field public versionCode:I
    .annotation runtime Lcwj;
        a = "version_code"
    .end annotation
.end field

.field public versionName:Ljava/lang/String;
    .annotation runtime Lcwj;
        a = "version_name"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const-string v0, "1.0.0.1"

    iput-object v0, p0, Lcom/wandoujia/update/protocol/EventReportProtocol;->protocolVersion:Ljava/lang/String;

    .line 47
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/wandoujia/update/protocol/EventReportProtocol;->downloadTimeMS:J

    .line 68
    return-void
.end method
