.class public final enum Lcom/wandoujia/launcher_base/download/receiver/ReceiverMonitor$AppActionType;
.super Ljava/lang/Enum;
.source "ReceiverMonitor.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/wandoujia/launcher_base/download/receiver/ReceiverMonitor$AppActionType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/wandoujia/launcher_base/download/receiver/ReceiverMonitor$AppActionType;

.field public static final enum ADDED:Lcom/wandoujia/launcher_base/download/receiver/ReceiverMonitor$AppActionType;

.field public static final enum CHANGED:Lcom/wandoujia/launcher_base/download/receiver/ReceiverMonitor$AppActionType;

.field public static final enum READY:Lcom/wandoujia/launcher_base/download/receiver/ReceiverMonitor$AppActionType;

.field public static final enum REMOVED:Lcom/wandoujia/launcher_base/download/receiver/ReceiverMonitor$AppActionType;

.field public static final enum REPLACED:Lcom/wandoujia/launcher_base/download/receiver/ReceiverMonitor$AppActionType;


# instance fields
.field private final action:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 102
    new-instance v0, Lcom/wandoujia/launcher_base/download/receiver/ReceiverMonitor$AppActionType;

    const-string v1, "REMOVED"

    const-string v2, "android.intent.action.PACKAGE_REMOVED"

    invoke-direct {v0, v1, v3, v2}, Lcom/wandoujia/launcher_base/download/receiver/ReceiverMonitor$AppActionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/wandoujia/launcher_base/download/receiver/ReceiverMonitor$AppActionType;->REMOVED:Lcom/wandoujia/launcher_base/download/receiver/ReceiverMonitor$AppActionType;

    .line 104
    new-instance v0, Lcom/wandoujia/launcher_base/download/receiver/ReceiverMonitor$AppActionType;

    const-string v1, "REPLACED"

    const-string v2, "android.intent.action.PACKAGE_REPLACED"

    invoke-direct {v0, v1, v4, v2}, Lcom/wandoujia/launcher_base/download/receiver/ReceiverMonitor$AppActionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/wandoujia/launcher_base/download/receiver/ReceiverMonitor$AppActionType;->REPLACED:Lcom/wandoujia/launcher_base/download/receiver/ReceiverMonitor$AppActionType;

    .line 106
    new-instance v0, Lcom/wandoujia/launcher_base/download/receiver/ReceiverMonitor$AppActionType;

    const-string v1, "ADDED"

    const-string v2, "android.intent.action.PACKAGE_ADDED"

    invoke-direct {v0, v1, v5, v2}, Lcom/wandoujia/launcher_base/download/receiver/ReceiverMonitor$AppActionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/wandoujia/launcher_base/download/receiver/ReceiverMonitor$AppActionType;->ADDED:Lcom/wandoujia/launcher_base/download/receiver/ReceiverMonitor$AppActionType;

    .line 108
    new-instance v0, Lcom/wandoujia/launcher_base/download/receiver/ReceiverMonitor$AppActionType;

    const-string v1, "CHANGED"

    const-string v2, "android.intent.action.PACKAGE_CHANGED"

    invoke-direct {v0, v1, v6, v2}, Lcom/wandoujia/launcher_base/download/receiver/ReceiverMonitor$AppActionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/wandoujia/launcher_base/download/receiver/ReceiverMonitor$AppActionType;->CHANGED:Lcom/wandoujia/launcher_base/download/receiver/ReceiverMonitor$AppActionType;

    .line 110
    new-instance v0, Lcom/wandoujia/launcher_base/download/receiver/ReceiverMonitor$AppActionType;

    const-string v1, "READY"

    const-string v2, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    invoke-direct {v0, v1, v7, v2}, Lcom/wandoujia/launcher_base/download/receiver/ReceiverMonitor$AppActionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/wandoujia/launcher_base/download/receiver/ReceiverMonitor$AppActionType;->READY:Lcom/wandoujia/launcher_base/download/receiver/ReceiverMonitor$AppActionType;

    .line 99
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/wandoujia/launcher_base/download/receiver/ReceiverMonitor$AppActionType;

    sget-object v1, Lcom/wandoujia/launcher_base/download/receiver/ReceiverMonitor$AppActionType;->REMOVED:Lcom/wandoujia/launcher_base/download/receiver/ReceiverMonitor$AppActionType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/wandoujia/launcher_base/download/receiver/ReceiverMonitor$AppActionType;->REPLACED:Lcom/wandoujia/launcher_base/download/receiver/ReceiverMonitor$AppActionType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/wandoujia/launcher_base/download/receiver/ReceiverMonitor$AppActionType;->ADDED:Lcom/wandoujia/launcher_base/download/receiver/ReceiverMonitor$AppActionType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/wandoujia/launcher_base/download/receiver/ReceiverMonitor$AppActionType;->CHANGED:Lcom/wandoujia/launcher_base/download/receiver/ReceiverMonitor$AppActionType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/wandoujia/launcher_base/download/receiver/ReceiverMonitor$AppActionType;->READY:Lcom/wandoujia/launcher_base/download/receiver/ReceiverMonitor$AppActionType;

    aput-object v1, v0, v7

    sput-object v0, Lcom/wandoujia/launcher_base/download/receiver/ReceiverMonitor$AppActionType;->$VALUES:[Lcom/wandoujia/launcher_base/download/receiver/ReceiverMonitor$AppActionType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 114
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 115
    iput-object p3, p0, Lcom/wandoujia/launcher_base/download/receiver/ReceiverMonitor$AppActionType;->action:Ljava/lang/String;

    .line 116
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/wandoujia/launcher_base/download/receiver/ReceiverMonitor$AppActionType;
    .locals 1
    .parameter

    .prologue
    .line 99
    const-class v0, Lcom/wandoujia/launcher_base/download/receiver/ReceiverMonitor$AppActionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/launcher_base/download/receiver/ReceiverMonitor$AppActionType;

    return-object v0
.end method

.method public static values()[Lcom/wandoujia/launcher_base/download/receiver/ReceiverMonitor$AppActionType;
    .locals 1

    .prologue
    .line 99
    sget-object v0, Lcom/wandoujia/launcher_base/download/receiver/ReceiverMonitor$AppActionType;->$VALUES:[Lcom/wandoujia/launcher_base/download/receiver/ReceiverMonitor$AppActionType;

    invoke-virtual {v0}, [Lcom/wandoujia/launcher_base/download/receiver/ReceiverMonitor$AppActionType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/wandoujia/launcher_base/download/receiver/ReceiverMonitor$AppActionType;

    return-object v0
.end method


# virtual methods
.method public final getActionType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/wandoujia/launcher_base/download/receiver/ReceiverMonitor$AppActionType;->action:Ljava/lang/String;

    return-object v0
.end method
