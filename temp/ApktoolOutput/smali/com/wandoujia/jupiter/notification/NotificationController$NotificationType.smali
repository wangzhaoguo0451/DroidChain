.class public final enum Lcom/wandoujia/jupiter/notification/NotificationController$NotificationType;
.super Ljava/lang/Enum;
.source "NotificationController.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/wandoujia/jupiter/notification/NotificationController$NotificationType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/wandoujia/jupiter/notification/NotificationController$NotificationType;

.field public static final enum IMPORTANT_APP_UPGRADE:Lcom/wandoujia/jupiter/notification/NotificationController$NotificationType;

.field public static final enum PUSH:Lcom/wandoujia/jupiter/notification/NotificationController$NotificationType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 61
    new-instance v0, Lcom/wandoujia/jupiter/notification/NotificationController$NotificationType;

    const-string v1, "IMPORTANT_APP_UPGRADE"

    invoke-direct {v0, v1, v2}, Lcom/wandoujia/jupiter/notification/NotificationController$NotificationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/jupiter/notification/NotificationController$NotificationType;->IMPORTANT_APP_UPGRADE:Lcom/wandoujia/jupiter/notification/NotificationController$NotificationType;

    new-instance v0, Lcom/wandoujia/jupiter/notification/NotificationController$NotificationType;

    const-string v1, "PUSH"

    invoke-direct {v0, v1, v3}, Lcom/wandoujia/jupiter/notification/NotificationController$NotificationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/jupiter/notification/NotificationController$NotificationType;->PUSH:Lcom/wandoujia/jupiter/notification/NotificationController$NotificationType;

    .line 60
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/wandoujia/jupiter/notification/NotificationController$NotificationType;

    sget-object v1, Lcom/wandoujia/jupiter/notification/NotificationController$NotificationType;->IMPORTANT_APP_UPGRADE:Lcom/wandoujia/jupiter/notification/NotificationController$NotificationType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/wandoujia/jupiter/notification/NotificationController$NotificationType;->PUSH:Lcom/wandoujia/jupiter/notification/NotificationController$NotificationType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/wandoujia/jupiter/notification/NotificationController$NotificationType;->$VALUES:[Lcom/wandoujia/jupiter/notification/NotificationController$NotificationType;

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
    .line 60
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/wandoujia/jupiter/notification/NotificationController$NotificationType;
    .locals 1
    .parameter

    .prologue
    .line 60
    const-class v0, Lcom/wandoujia/jupiter/notification/NotificationController$NotificationType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/jupiter/notification/NotificationController$NotificationType;

    return-object v0
.end method

.method public static values()[Lcom/wandoujia/jupiter/notification/NotificationController$NotificationType;
    .locals 1

    .prologue
    .line 60
    sget-object v0, Lcom/wandoujia/jupiter/notification/NotificationController$NotificationType;->$VALUES:[Lcom/wandoujia/jupiter/notification/NotificationController$NotificationType;

    invoke-virtual {v0}, [Lcom/wandoujia/jupiter/notification/NotificationController$NotificationType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/wandoujia/jupiter/notification/NotificationController$NotificationType;

    return-object v0
.end method
