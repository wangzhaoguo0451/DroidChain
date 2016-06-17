.class public final enum Lcom/wandoujia/launcher_base/download/receiver/ReceiverMonitor$ProxyState;
.super Ljava/lang/Enum;
.source "ReceiverMonitor.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/wandoujia/launcher_base/download/receiver/ReceiverMonitor$ProxyState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/wandoujia/launcher_base/download/receiver/ReceiverMonitor$ProxyState;

.field public static final enum OFF:Lcom/wandoujia/launcher_base/download/receiver/ReceiverMonitor$ProxyState;

.field public static final enum ON:Lcom/wandoujia/launcher_base/download/receiver/ReceiverMonitor$ProxyState;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 79
    new-instance v0, Lcom/wandoujia/launcher_base/download/receiver/ReceiverMonitor$ProxyState;

    const-string v1, "ON"

    invoke-direct {v0, v1, v2}, Lcom/wandoujia/launcher_base/download/receiver/ReceiverMonitor$ProxyState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/launcher_base/download/receiver/ReceiverMonitor$ProxyState;->ON:Lcom/wandoujia/launcher_base/download/receiver/ReceiverMonitor$ProxyState;

    new-instance v0, Lcom/wandoujia/launcher_base/download/receiver/ReceiverMonitor$ProxyState;

    const-string v1, "OFF"

    invoke-direct {v0, v1, v3}, Lcom/wandoujia/launcher_base/download/receiver/ReceiverMonitor$ProxyState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/launcher_base/download/receiver/ReceiverMonitor$ProxyState;->OFF:Lcom/wandoujia/launcher_base/download/receiver/ReceiverMonitor$ProxyState;

    .line 78
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/wandoujia/launcher_base/download/receiver/ReceiverMonitor$ProxyState;

    sget-object v1, Lcom/wandoujia/launcher_base/download/receiver/ReceiverMonitor$ProxyState;->ON:Lcom/wandoujia/launcher_base/download/receiver/ReceiverMonitor$ProxyState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/wandoujia/launcher_base/download/receiver/ReceiverMonitor$ProxyState;->OFF:Lcom/wandoujia/launcher_base/download/receiver/ReceiverMonitor$ProxyState;

    aput-object v1, v0, v3

    sput-object v0, Lcom/wandoujia/launcher_base/download/receiver/ReceiverMonitor$ProxyState;->$VALUES:[Lcom/wandoujia/launcher_base/download/receiver/ReceiverMonitor$ProxyState;

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
    .line 78
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/wandoujia/launcher_base/download/receiver/ReceiverMonitor$ProxyState;
    .locals 1
    .parameter

    .prologue
    .line 78
    const-class v0, Lcom/wandoujia/launcher_base/download/receiver/ReceiverMonitor$ProxyState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/launcher_base/download/receiver/ReceiverMonitor$ProxyState;

    return-object v0
.end method

.method public static values()[Lcom/wandoujia/launcher_base/download/receiver/ReceiverMonitor$ProxyState;
    .locals 1

    .prologue
    .line 78
    sget-object v0, Lcom/wandoujia/launcher_base/download/receiver/ReceiverMonitor$ProxyState;->$VALUES:[Lcom/wandoujia/launcher_base/download/receiver/ReceiverMonitor$ProxyState;

    invoke-virtual {v0}, [Lcom/wandoujia/launcher_base/download/receiver/ReceiverMonitor$ProxyState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/wandoujia/launcher_base/download/receiver/ReceiverMonitor$ProxyState;

    return-object v0
.end method
