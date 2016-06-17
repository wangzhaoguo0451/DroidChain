.class public final enum Lcom/wandoujia/logv3/toolkit/ANRWatchDog$ACKStatus;
.super Ljava/lang/Enum;
.source "LogUncaughtExceptionHandler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/wandoujia/logv3/toolkit/ANRWatchDog$ACKStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/wandoujia/logv3/toolkit/ANRWatchDog$ACKStatus;

.field public static final enum ACK_RESPONDED:Lcom/wandoujia/logv3/toolkit/ANRWatchDog$ACKStatus;

.field public static final enum ACK_WAITING:Lcom/wandoujia/logv3/toolkit/ANRWatchDog$ACKStatus;

.field public static final enum ANR:Lcom/wandoujia/logv3/toolkit/ANRWatchDog$ACKStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 96
    new-instance v0, Lcom/wandoujia/logv3/toolkit/ANRWatchDog$ACKStatus;

    const-string v1, "ACK_WAITING"

    invoke-direct {v0, v1, v2}, Lcom/wandoujia/logv3/toolkit/ANRWatchDog$ACKStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/logv3/toolkit/ANRWatchDog$ACKStatus;->ACK_WAITING:Lcom/wandoujia/logv3/toolkit/ANRWatchDog$ACKStatus;

    .line 97
    new-instance v0, Lcom/wandoujia/logv3/toolkit/ANRWatchDog$ACKStatus;

    const-string v1, "ACK_RESPONDED"

    invoke-direct {v0, v1, v3}, Lcom/wandoujia/logv3/toolkit/ANRWatchDog$ACKStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/logv3/toolkit/ANRWatchDog$ACKStatus;->ACK_RESPONDED:Lcom/wandoujia/logv3/toolkit/ANRWatchDog$ACKStatus;

    .line 98
    new-instance v0, Lcom/wandoujia/logv3/toolkit/ANRWatchDog$ACKStatus;

    const-string v1, "ANR"

    invoke-direct {v0, v1, v4}, Lcom/wandoujia/logv3/toolkit/ANRWatchDog$ACKStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/logv3/toolkit/ANRWatchDog$ACKStatus;->ANR:Lcom/wandoujia/logv3/toolkit/ANRWatchDog$ACKStatus;

    .line 95
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/wandoujia/logv3/toolkit/ANRWatchDog$ACKStatus;

    sget-object v1, Lcom/wandoujia/logv3/toolkit/ANRWatchDog$ACKStatus;->ACK_WAITING:Lcom/wandoujia/logv3/toolkit/ANRWatchDog$ACKStatus;

    aput-object v1, v0, v2

    sget-object v1, Lcom/wandoujia/logv3/toolkit/ANRWatchDog$ACKStatus;->ACK_RESPONDED:Lcom/wandoujia/logv3/toolkit/ANRWatchDog$ACKStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/wandoujia/logv3/toolkit/ANRWatchDog$ACKStatus;->ANR:Lcom/wandoujia/logv3/toolkit/ANRWatchDog$ACKStatus;

    aput-object v1, v0, v4

    sput-object v0, Lcom/wandoujia/logv3/toolkit/ANRWatchDog$ACKStatus;->$VALUES:[Lcom/wandoujia/logv3/toolkit/ANRWatchDog$ACKStatus;

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
    .line 95
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/wandoujia/logv3/toolkit/ANRWatchDog$ACKStatus;
    .locals 1
    .parameter

    .prologue
    .line 95
    const-class v0, Lcom/wandoujia/logv3/toolkit/ANRWatchDog$ACKStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/logv3/toolkit/ANRWatchDog$ACKStatus;

    return-object v0
.end method

.method public static values()[Lcom/wandoujia/logv3/toolkit/ANRWatchDog$ACKStatus;
    .locals 1

    .prologue
    .line 95
    sget-object v0, Lcom/wandoujia/logv3/toolkit/ANRWatchDog$ACKStatus;->$VALUES:[Lcom/wandoujia/logv3/toolkit/ANRWatchDog$ACKStatus;

    invoke-virtual {v0}, [Lcom/wandoujia/logv3/toolkit/ANRWatchDog$ACKStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/wandoujia/logv3/toolkit/ANRWatchDog$ACKStatus;

    return-object v0
.end method
