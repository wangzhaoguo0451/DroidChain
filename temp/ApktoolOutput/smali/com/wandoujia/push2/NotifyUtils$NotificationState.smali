.class public final enum Lcom/wandoujia/push2/NotifyUtils$NotificationState;
.super Ljava/lang/Enum;
.source "NotifyUtils.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/wandoujia/push2/NotifyUtils$NotificationState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/wandoujia/push2/NotifyUtils$NotificationState;

.field public static final enum ALLOW:Lcom/wandoujia/push2/NotifyUtils$NotificationState;

.field public static final enum DENY:Lcom/wandoujia/push2/NotifyUtils$NotificationState;

.field public static final enum UNKNOWN:Lcom/wandoujia/push2/NotifyUtils$NotificationState;


# instance fields
.field private value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 25
    new-instance v0, Lcom/wandoujia/push2/NotifyUtils$NotificationState;

    const-string v1, "ALLOW"

    const-string v2, "ALLOW"

    invoke-direct {v0, v1, v3, v2}, Lcom/wandoujia/push2/NotifyUtils$NotificationState;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/wandoujia/push2/NotifyUtils$NotificationState;->ALLOW:Lcom/wandoujia/push2/NotifyUtils$NotificationState;

    new-instance v0, Lcom/wandoujia/push2/NotifyUtils$NotificationState;

    const-string v1, "DENY"

    const-string v2, "DENY"

    invoke-direct {v0, v1, v4, v2}, Lcom/wandoujia/push2/NotifyUtils$NotificationState;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/wandoujia/push2/NotifyUtils$NotificationState;->DENY:Lcom/wandoujia/push2/NotifyUtils$NotificationState;

    new-instance v0, Lcom/wandoujia/push2/NotifyUtils$NotificationState;

    const-string v1, "UNKNOWN"

    const-string v2, "UNKNOWN"

    invoke-direct {v0, v1, v5, v2}, Lcom/wandoujia/push2/NotifyUtils$NotificationState;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/wandoujia/push2/NotifyUtils$NotificationState;->UNKNOWN:Lcom/wandoujia/push2/NotifyUtils$NotificationState;

    .line 24
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/wandoujia/push2/NotifyUtils$NotificationState;

    sget-object v1, Lcom/wandoujia/push2/NotifyUtils$NotificationState;->ALLOW:Lcom/wandoujia/push2/NotifyUtils$NotificationState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/wandoujia/push2/NotifyUtils$NotificationState;->DENY:Lcom/wandoujia/push2/NotifyUtils$NotificationState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/wandoujia/push2/NotifyUtils$NotificationState;->UNKNOWN:Lcom/wandoujia/push2/NotifyUtils$NotificationState;

    aput-object v1, v0, v5

    sput-object v0, Lcom/wandoujia/push2/NotifyUtils$NotificationState;->$VALUES:[Lcom/wandoujia/push2/NotifyUtils$NotificationState;

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
    .line 28
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 29
    iput-object p3, p0, Lcom/wandoujia/push2/NotifyUtils$NotificationState;->value:Ljava/lang/String;

    .line 30
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/wandoujia/push2/NotifyUtils$NotificationState;
    .locals 1
    .parameter

    .prologue
    .line 24
    const-class v0, Lcom/wandoujia/push2/NotifyUtils$NotificationState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/push2/NotifyUtils$NotificationState;

    return-object v0
.end method

.method public static values()[Lcom/wandoujia/push2/NotifyUtils$NotificationState;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/wandoujia/push2/NotifyUtils$NotificationState;->$VALUES:[Lcom/wandoujia/push2/NotifyUtils$NotificationState;

    invoke-virtual {v0}, [Lcom/wandoujia/push2/NotifyUtils$NotificationState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/wandoujia/push2/NotifyUtils$NotificationState;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/wandoujia/push2/NotifyUtils$NotificationState;->value:Ljava/lang/String;

    return-object v0
.end method
