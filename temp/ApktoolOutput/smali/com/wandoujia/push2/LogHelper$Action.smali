.class public final enum Lcom/wandoujia/push2/LogHelper$Action;
.super Ljava/lang/Enum;
.source "LogHelper.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/wandoujia/push2/LogHelper$Action;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/wandoujia/push2/LogHelper$Action;

.field public static final enum DELIVER_TO_APP:Lcom/wandoujia/push2/LogHelper$Action;

.field public static final enum ERROR:Lcom/wandoujia/push2/LogHelper$Action;

.field public static final enum NOTIFICATION_CANCELED:Lcom/wandoujia/push2/LogHelper$Action;

.field public static final enum NOTIFICATION_CLICK:Lcom/wandoujia/push2/LogHelper$Action;

.field public static final enum NOTIFICATION_SHOW:Lcom/wandoujia/push2/LogHelper$Action;

.field public static final enum RECV_MSG_FROM_SERVER:Lcom/wandoujia/push2/LogHelper$Action;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 23
    new-instance v0, Lcom/wandoujia/push2/LogHelper$Action;

    const-string v1, "RECV_MSG_FROM_SERVER"

    invoke-direct {v0, v1, v3}, Lcom/wandoujia/push2/LogHelper$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/push2/LogHelper$Action;->RECV_MSG_FROM_SERVER:Lcom/wandoujia/push2/LogHelper$Action;

    .line 24
    new-instance v0, Lcom/wandoujia/push2/LogHelper$Action;

    const-string v1, "DELIVER_TO_APP"

    invoke-direct {v0, v1, v4}, Lcom/wandoujia/push2/LogHelper$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/push2/LogHelper$Action;->DELIVER_TO_APP:Lcom/wandoujia/push2/LogHelper$Action;

    .line 25
    new-instance v0, Lcom/wandoujia/push2/LogHelper$Action;

    const-string v1, "NOTIFICATION_SHOW"

    invoke-direct {v0, v1, v5}, Lcom/wandoujia/push2/LogHelper$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/push2/LogHelper$Action;->NOTIFICATION_SHOW:Lcom/wandoujia/push2/LogHelper$Action;

    .line 26
    new-instance v0, Lcom/wandoujia/push2/LogHelper$Action;

    const-string v1, "NOTIFICATION_CLICK"

    invoke-direct {v0, v1, v6}, Lcom/wandoujia/push2/LogHelper$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/push2/LogHelper$Action;->NOTIFICATION_CLICK:Lcom/wandoujia/push2/LogHelper$Action;

    .line 27
    new-instance v0, Lcom/wandoujia/push2/LogHelper$Action;

    const-string v1, "NOTIFICATION_CANCELED"

    invoke-direct {v0, v1, v7}, Lcom/wandoujia/push2/LogHelper$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/push2/LogHelper$Action;->NOTIFICATION_CANCELED:Lcom/wandoujia/push2/LogHelper$Action;

    .line 28
    new-instance v0, Lcom/wandoujia/push2/LogHelper$Action;

    const-string v1, "ERROR"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/wandoujia/push2/LogHelper$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/push2/LogHelper$Action;->ERROR:Lcom/wandoujia/push2/LogHelper$Action;

    .line 22
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/wandoujia/push2/LogHelper$Action;

    sget-object v1, Lcom/wandoujia/push2/LogHelper$Action;->RECV_MSG_FROM_SERVER:Lcom/wandoujia/push2/LogHelper$Action;

    aput-object v1, v0, v3

    sget-object v1, Lcom/wandoujia/push2/LogHelper$Action;->DELIVER_TO_APP:Lcom/wandoujia/push2/LogHelper$Action;

    aput-object v1, v0, v4

    sget-object v1, Lcom/wandoujia/push2/LogHelper$Action;->NOTIFICATION_SHOW:Lcom/wandoujia/push2/LogHelper$Action;

    aput-object v1, v0, v5

    sget-object v1, Lcom/wandoujia/push2/LogHelper$Action;->NOTIFICATION_CLICK:Lcom/wandoujia/push2/LogHelper$Action;

    aput-object v1, v0, v6

    sget-object v1, Lcom/wandoujia/push2/LogHelper$Action;->NOTIFICATION_CANCELED:Lcom/wandoujia/push2/LogHelper$Action;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/wandoujia/push2/LogHelper$Action;->ERROR:Lcom/wandoujia/push2/LogHelper$Action;

    aput-object v2, v0, v1

    sput-object v0, Lcom/wandoujia/push2/LogHelper$Action;->$VALUES:[Lcom/wandoujia/push2/LogHelper$Action;

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
    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/wandoujia/push2/LogHelper$Action;
    .locals 1
    .parameter

    .prologue
    .line 22
    const-class v0, Lcom/wandoujia/push2/LogHelper$Action;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/push2/LogHelper$Action;

    return-object v0
.end method

.method public static values()[Lcom/wandoujia/push2/LogHelper$Action;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/wandoujia/push2/LogHelper$Action;->$VALUES:[Lcom/wandoujia/push2/LogHelper$Action;

    invoke-virtual {v0}, [Lcom/wandoujia/push2/LogHelper$Action;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/wandoujia/push2/LogHelper$Action;

    return-object v0
.end method
