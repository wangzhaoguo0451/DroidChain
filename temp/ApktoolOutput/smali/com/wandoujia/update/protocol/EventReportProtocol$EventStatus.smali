.class public final enum Lcom/wandoujia/update/protocol/EventReportProtocol$EventStatus;
.super Ljava/lang/Enum;
.source "EventReportProtocol.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/wandoujia/update/protocol/EventReportProtocol$EventStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/wandoujia/update/protocol/EventReportProtocol$EventStatus;

.field public static final enum ERROR_DOWNLOAD:Lcom/wandoujia/update/protocol/EventReportProtocol$EventStatus;
    .annotation runtime Lcwj;
        a = "error-download"
    .end annotation
.end field

.field public static final enum OK:Lcom/wandoujia/update/protocol/EventReportProtocol$EventStatus;
    .annotation runtime Lcwj;
        a = "ok"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 69
    new-instance v0, Lcom/wandoujia/update/protocol/EventReportProtocol$EventStatus;

    const-string v1, "OK"

    invoke-direct {v0, v1, v2}, Lcom/wandoujia/update/protocol/EventReportProtocol$EventStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/update/protocol/EventReportProtocol$EventStatus;->OK:Lcom/wandoujia/update/protocol/EventReportProtocol$EventStatus;

    .line 71
    new-instance v0, Lcom/wandoujia/update/protocol/EventReportProtocol$EventStatus;

    const-string v1, "ERROR_DOWNLOAD"

    invoke-direct {v0, v1, v3}, Lcom/wandoujia/update/protocol/EventReportProtocol$EventStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/update/protocol/EventReportProtocol$EventStatus;->ERROR_DOWNLOAD:Lcom/wandoujia/update/protocol/EventReportProtocol$EventStatus;

    .line 68
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/wandoujia/update/protocol/EventReportProtocol$EventStatus;

    sget-object v1, Lcom/wandoujia/update/protocol/EventReportProtocol$EventStatus;->OK:Lcom/wandoujia/update/protocol/EventReportProtocol$EventStatus;

    aput-object v1, v0, v2

    sget-object v1, Lcom/wandoujia/update/protocol/EventReportProtocol$EventStatus;->ERROR_DOWNLOAD:Lcom/wandoujia/update/protocol/EventReportProtocol$EventStatus;

    aput-object v1, v0, v3

    sput-object v0, Lcom/wandoujia/update/protocol/EventReportProtocol$EventStatus;->$VALUES:[Lcom/wandoujia/update/protocol/EventReportProtocol$EventStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 68
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/wandoujia/update/protocol/EventReportProtocol$EventStatus;
    .locals 1
    .parameter

    .prologue
    .line 68
    const-class v0, Lcom/wandoujia/update/protocol/EventReportProtocol$EventStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/update/protocol/EventReportProtocol$EventStatus;

    return-object v0
.end method

.method public static values()[Lcom/wandoujia/update/protocol/EventReportProtocol$EventStatus;
    .locals 1

    .prologue
    .line 68
    sget-object v0, Lcom/wandoujia/update/protocol/EventReportProtocol$EventStatus;->$VALUES:[Lcom/wandoujia/update/protocol/EventReportProtocol$EventStatus;

    invoke-virtual {v0}, [Lcom/wandoujia/update/protocol/EventReportProtocol$EventStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/wandoujia/update/protocol/EventReportProtocol$EventStatus;

    return-object v0
.end method
