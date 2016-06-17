.class public final enum Lcom/wandoujia/update/protocol/EventReportProtocol$EventType;
.super Ljava/lang/Enum;
.source "EventReportProtocol.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/wandoujia/update/protocol/EventReportProtocol$EventType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/wandoujia/update/protocol/EventReportProtocol$EventType;

.field public static final enum DOWNLOAD_COMPLETE:Lcom/wandoujia/update/protocol/EventReportProtocol$EventType;
    .annotation runtime Lcwj;
        a = "download_complete"
    .end annotation
.end field

.field public static final enum DOWNLOAD_START:Lcom/wandoujia/update/protocol/EventReportProtocol$EventType;
    .annotation runtime Lcwj;
        a = "download_start"
    .end annotation
.end field

.field public static final enum INSTALL_START:Lcom/wandoujia/update/protocol/EventReportProtocol$EventType;
    .annotation runtime Lcwj;
        a = "install_start"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 60
    new-instance v0, Lcom/wandoujia/update/protocol/EventReportProtocol$EventType;

    const-string v1, "DOWNLOAD_START"

    invoke-direct {v0, v1, v2}, Lcom/wandoujia/update/protocol/EventReportProtocol$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/update/protocol/EventReportProtocol$EventType;->DOWNLOAD_START:Lcom/wandoujia/update/protocol/EventReportProtocol$EventType;

    .line 62
    new-instance v0, Lcom/wandoujia/update/protocol/EventReportProtocol$EventType;

    const-string v1, "DOWNLOAD_COMPLETE"

    invoke-direct {v0, v1, v3}, Lcom/wandoujia/update/protocol/EventReportProtocol$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/update/protocol/EventReportProtocol$EventType;->DOWNLOAD_COMPLETE:Lcom/wandoujia/update/protocol/EventReportProtocol$EventType;

    .line 64
    new-instance v0, Lcom/wandoujia/update/protocol/EventReportProtocol$EventType;

    const-string v1, "INSTALL_START"

    invoke-direct {v0, v1, v4}, Lcom/wandoujia/update/protocol/EventReportProtocol$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/update/protocol/EventReportProtocol$EventType;->INSTALL_START:Lcom/wandoujia/update/protocol/EventReportProtocol$EventType;

    .line 59
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/wandoujia/update/protocol/EventReportProtocol$EventType;

    sget-object v1, Lcom/wandoujia/update/protocol/EventReportProtocol$EventType;->DOWNLOAD_START:Lcom/wandoujia/update/protocol/EventReportProtocol$EventType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/wandoujia/update/protocol/EventReportProtocol$EventType;->DOWNLOAD_COMPLETE:Lcom/wandoujia/update/protocol/EventReportProtocol$EventType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/wandoujia/update/protocol/EventReportProtocol$EventType;->INSTALL_START:Lcom/wandoujia/update/protocol/EventReportProtocol$EventType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/wandoujia/update/protocol/EventReportProtocol$EventType;->$VALUES:[Lcom/wandoujia/update/protocol/EventReportProtocol$EventType;

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
    .line 59
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/wandoujia/update/protocol/EventReportProtocol$EventType;
    .locals 1
    .parameter

    .prologue
    .line 59
    const-class v0, Lcom/wandoujia/update/protocol/EventReportProtocol$EventType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/update/protocol/EventReportProtocol$EventType;

    return-object v0
.end method

.method public static values()[Lcom/wandoujia/update/protocol/EventReportProtocol$EventType;
    .locals 1

    .prologue
    .line 59
    sget-object v0, Lcom/wandoujia/update/protocol/EventReportProtocol$EventType;->$VALUES:[Lcom/wandoujia/update/protocol/EventReportProtocol$EventType;

    invoke-virtual {v0}, [Lcom/wandoujia/update/protocol/EventReportProtocol$EventType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/wandoujia/update/protocol/EventReportProtocol$EventType;

    return-object v0
.end method
