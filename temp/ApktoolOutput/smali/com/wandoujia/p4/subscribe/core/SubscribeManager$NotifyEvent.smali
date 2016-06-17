.class public final enum Lcom/wandoujia/p4/subscribe/core/SubscribeManager$NotifyEvent;
.super Ljava/lang/Enum;
.source "SubscribeManager.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/wandoujia/p4/subscribe/core/SubscribeManager$NotifyEvent;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/wandoujia/p4/subscribe/core/SubscribeManager$NotifyEvent;

.field public static final enum NOTIFY_SUBSCRIBE_FAILED:Lcom/wandoujia/p4/subscribe/core/SubscribeManager$NotifyEvent;

.field public static final enum NOTIFY_SUBSCRIBE_SUCCESS:Lcom/wandoujia/p4/subscribe/core/SubscribeManager$NotifyEvent;

.field public static final enum NOTIFY_UNSUBSCRIBE_FAILED:Lcom/wandoujia/p4/subscribe/core/SubscribeManager$NotifyEvent;

.field public static final enum NOTIFY_UNSUBSCRIBE_SUCCESS:Lcom/wandoujia/p4/subscribe/core/SubscribeManager$NotifyEvent;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 71
    new-instance v0, Lcom/wandoujia/p4/subscribe/core/SubscribeManager$NotifyEvent;

    const-string v1, "NOTIFY_SUBSCRIBE_SUCCESS"

    invoke-direct {v0, v1, v2}, Lcom/wandoujia/p4/subscribe/core/SubscribeManager$NotifyEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/p4/subscribe/core/SubscribeManager$NotifyEvent;->NOTIFY_SUBSCRIBE_SUCCESS:Lcom/wandoujia/p4/subscribe/core/SubscribeManager$NotifyEvent;

    .line 72
    new-instance v0, Lcom/wandoujia/p4/subscribe/core/SubscribeManager$NotifyEvent;

    const-string v1, "NOTIFY_SUBSCRIBE_FAILED"

    invoke-direct {v0, v1, v3}, Lcom/wandoujia/p4/subscribe/core/SubscribeManager$NotifyEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/p4/subscribe/core/SubscribeManager$NotifyEvent;->NOTIFY_SUBSCRIBE_FAILED:Lcom/wandoujia/p4/subscribe/core/SubscribeManager$NotifyEvent;

    .line 73
    new-instance v0, Lcom/wandoujia/p4/subscribe/core/SubscribeManager$NotifyEvent;

    const-string v1, "NOTIFY_UNSUBSCRIBE_SUCCESS"

    invoke-direct {v0, v1, v4}, Lcom/wandoujia/p4/subscribe/core/SubscribeManager$NotifyEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/p4/subscribe/core/SubscribeManager$NotifyEvent;->NOTIFY_UNSUBSCRIBE_SUCCESS:Lcom/wandoujia/p4/subscribe/core/SubscribeManager$NotifyEvent;

    .line 74
    new-instance v0, Lcom/wandoujia/p4/subscribe/core/SubscribeManager$NotifyEvent;

    const-string v1, "NOTIFY_UNSUBSCRIBE_FAILED"

    invoke-direct {v0, v1, v5}, Lcom/wandoujia/p4/subscribe/core/SubscribeManager$NotifyEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/p4/subscribe/core/SubscribeManager$NotifyEvent;->NOTIFY_UNSUBSCRIBE_FAILED:Lcom/wandoujia/p4/subscribe/core/SubscribeManager$NotifyEvent;

    .line 70
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/wandoujia/p4/subscribe/core/SubscribeManager$NotifyEvent;

    sget-object v1, Lcom/wandoujia/p4/subscribe/core/SubscribeManager$NotifyEvent;->NOTIFY_SUBSCRIBE_SUCCESS:Lcom/wandoujia/p4/subscribe/core/SubscribeManager$NotifyEvent;

    aput-object v1, v0, v2

    sget-object v1, Lcom/wandoujia/p4/subscribe/core/SubscribeManager$NotifyEvent;->NOTIFY_SUBSCRIBE_FAILED:Lcom/wandoujia/p4/subscribe/core/SubscribeManager$NotifyEvent;

    aput-object v1, v0, v3

    sget-object v1, Lcom/wandoujia/p4/subscribe/core/SubscribeManager$NotifyEvent;->NOTIFY_UNSUBSCRIBE_SUCCESS:Lcom/wandoujia/p4/subscribe/core/SubscribeManager$NotifyEvent;

    aput-object v1, v0, v4

    sget-object v1, Lcom/wandoujia/p4/subscribe/core/SubscribeManager$NotifyEvent;->NOTIFY_UNSUBSCRIBE_FAILED:Lcom/wandoujia/p4/subscribe/core/SubscribeManager$NotifyEvent;

    aput-object v1, v0, v5

    sput-object v0, Lcom/wandoujia/p4/subscribe/core/SubscribeManager$NotifyEvent;->$VALUES:[Lcom/wandoujia/p4/subscribe/core/SubscribeManager$NotifyEvent;

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
    .line 70
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/wandoujia/p4/subscribe/core/SubscribeManager$NotifyEvent;
    .locals 1
    .parameter

    .prologue
    .line 70
    const-class v0, Lcom/wandoujia/p4/subscribe/core/SubscribeManager$NotifyEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/subscribe/core/SubscribeManager$NotifyEvent;

    return-object v0
.end method

.method public static values()[Lcom/wandoujia/p4/subscribe/core/SubscribeManager$NotifyEvent;
    .locals 1

    .prologue
    .line 70
    sget-object v0, Lcom/wandoujia/p4/subscribe/core/SubscribeManager$NotifyEvent;->$VALUES:[Lcom/wandoujia/p4/subscribe/core/SubscribeManager$NotifyEvent;

    invoke-virtual {v0}, [Lcom/wandoujia/p4/subscribe/core/SubscribeManager$NotifyEvent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/wandoujia/p4/subscribe/core/SubscribeManager$NotifyEvent;

    return-object v0
.end method
